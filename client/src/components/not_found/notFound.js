import React from "react";
import MinNav from "./../shared/min_nav";
import { Link } from "react-router-dom";
import { Container } from "react-bootstrap";

export default function NotFound() {
  return (
    <React.Fragment>
      <MinNav />
      <Container id="main-container">
        <div id="not-found">
          <h1>404</h1>
          <h3>Oops! Looks like this page doesn't exist.</h3>
          <Link to="/" className="btn btn-lg btn-primary">
            Return to Playerly
          </Link>
        </div>
      </Container>
    </React.Fragment>
  );
}
