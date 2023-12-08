import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter as Router, Route, Routes, Navigate } from 'react-router-dom';
import Login from './views/Login.jsx';
import Notfound from './views/Notfound.jsx';
import Signup from './views/Signup.jsx';
import DefaultLayout from './components/DefaultLayout.jsx';
import GuestLayout from './components/GuestLayout.jsx';
import Dashboard from './views/Dashboard.jsx';
import { ContextProvider } from './contexts/ContextProvider.jsx';
import './index.css'
import Import from './views/Import.jsx';
// Use ReactDOM.render for React versions prior to React 18


// Use ReactDOM.createRoot for React 18 and above
ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <ContextProvider>
    <Router>
      <Routes>
      <Route path='/' 
      element={< DefaultLayout/>} >
           <Route path='/dashboard' element={<Dashboard />} />
           <Route path='/import' element={<Import />} />
           <Route path='/' element={<Navigate to="/dashboard" />} />
      </Route>
      <Route path='/' 
      element={< GuestLayout/>}>     
        <Route path='/login' element={<Login />} />
        <Route path='/signup' element={<Signup />} />
        </Route>

      <Route path='*' element={<Notfound />} />
      </Routes>
    </Router>
    </ContextProvider>
  </React.StrictMode>
);
