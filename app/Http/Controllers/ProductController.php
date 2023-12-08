<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{

    public function index()
    {
        $products = Product::orderBy('id')->paginate(10); // Adjust the number based on your requirement
        return response()->json([
            'data' => $products->items(),
            'current_page' => $products->currentPage(),
            'last_page' => $products->lastPage(),
            'per_page' => $products->perPage(),
            'total' => $products->total(),
        ]);
    }




    public function uploadCSV(Request $request)
    {
        // Validate the uploaded file
        $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:csv,txt|max:10240', // Maximum 10MB 
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 422);
        }

        // Process the CSV file
        $file = $request->file('file');
        $csvData = file_get_contents($file->path());
        $rows = array_map('str_getcsv', explode("\n", $csvData));

        // Skip the header row
        array_shift($rows);

        $count = 0;
        $skiped = 0;
        foreach ($rows as $row) {
            // check full row exuist
            if (count($row) == 4) {
                $count = $count + 1;
// check sku already exist in tbl so take each var
        $name = $row[0];
        $price = $row[1];
        $sku = $row[2];
        $description = $row[3];

// need to validate all these 
// sku:unique price:float 
// name exceeds value
// if not skip

// if good check already exist


$validator = Validator::make([
    'name' => $name,
    'price' => $price,
    'sku' => $sku,
    'description' => $description,
], [
    'name' => 'required|max:255',
    'price' => 'required|numeric',
    'sku' => 'required|max:255',
    'description' => 'nullable',
]);

if ($validator->fails()) {
    $skiped = $skiped + 1; 
    continue;
}

// Check already exists
$exist = Product::where('sku', $sku)->first();
if ($exist) {
    // update the existing
$exist->update([
    'name' => $name,
    'price' => $price,
    'description' => $description,
]);
   
}else{
// Save as new
Product::create([
    'name' => $name,
    'price' => $price,
    'sku' => $sku,
    'description' => $description,
]);
}
            }
        }
$message = 'CSV Data Uploaded Successfully. '.$skiped.' out of '.$count.' Rows Skipped.';
        return response()->json(['message' => $message], 200);
    }
}
