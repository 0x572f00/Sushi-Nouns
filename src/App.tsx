import { Routes, Route, Link } from "react-router-dom";
import './assets/css/globals.css';
import 'bootstrap/dist/css/bootstrap.min.css';

import Playground from "./Playground";

import "./assets/scss/App.scss";

function App() {


  return (
    <>      
      <Routes>
        <Route path="/" element={<Playground/>} />
      </Routes>
    </>
  )
}

export default App;