import React from "react";
import "./assets/stylesheets/app.scss";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import LandingPage from "./components/landing_page";
import Signup from "./components/signup";
import Login from "./components/login";
import NotFound from "./components/not_found";

function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/" component={LandingPage} />
        <Route exact path="/signup" component={Signup} />
        <Route exact path="/login" component={Login} />
        <Route component={NotFound} />
      </Switch>
    </Router>
  );
}

export default App;
