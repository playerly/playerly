import React from "react";
import { Link } from "react-router-dom";
import { Container } from "react-bootstrap";

export default function Hero() {
  return (
    <React.Fragment>
      <div id="hero">
        <Container>
          <div id="hero-detail">
            <h1>Stronger together!</h1>
            <h3>Find clubs, grow communities, support the sports you love.</h3>
          </div>
          <Link to="/signup" className="btn btn-lg btn-primary">
            Find local sports groups near you
          </Link>
        </Container>
      </div>
    </React.Fragment>
  );
}
