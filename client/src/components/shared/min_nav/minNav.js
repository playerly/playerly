import React from "react";
import Logo from "./../../../assets/images/logoFull.svg";
import { Link } from "react-router-dom";
import { Navbar } from "react-bootstrap";

export default function LandingPage() {
  return (
    <React.Fragment>
      <header>
        <Navbar className="justify-content-center" variant="light" expand="lg">
          <Navbar.Brand as={Link} to="/">
            <img src={Logo} alt="Logo" />
          </Navbar.Brand>
        </Navbar>
      </header>
    </React.Fragment>
  );
}
