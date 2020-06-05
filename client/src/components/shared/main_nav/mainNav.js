import React from "react";
import Logo from "./../../../assets/images/logo.svg";
import { Link } from "react-router-dom";
import { Container, Navbar } from "react-bootstrap";

export default function MainNav() {
  return (
    <React.Fragment>
      <header>
        <Navbar variant="light" expand="lg">
          <Container>
            <Navbar.Brand as={Link} to="/home">
              <img src={Logo} alt="Logo" />
            </Navbar.Brand>
          </Container>
        </Navbar>
      </header>
    </React.Fragment>
  );
}
