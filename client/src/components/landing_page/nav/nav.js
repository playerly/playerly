import React from "react";
import Logo from "./../../../assets/images/logoFull.svg";
import { Link } from "react-router-dom";
import { HashLink } from "react-router-hash-link";
import { Container, Nav, Navbar } from "react-bootstrap";

export default function StaticNav() {
  return (
    <header>
      <Navbar variant="light" expand="lg">
        <Container>
          <Navbar.Brand as={Link} to="/">
            <img src={Logo} alt="Logo" />
          </Navbar.Brand>
          <Link
            to="/login"
            className="btn btn-lg btn-light d-lg-none ml-auto mr-2"
          >
            Log in
          </Link>
          <Navbar.Toggle aria-controls="main-nav" />
          <Navbar.Collapse id="main-nav">
            <Nav className="mr-auto" as="ul">
              <Nav.Item as="li">
                <HashLink
                  to="#about"
                  className="btn btn-lg btn-light btn-block mr-2"
                >
                  How it works
                </HashLink>
              </Nav.Item>
              <Nav.Item as="li">
                <HashLink
                  to="#features"
                  className="btn btn-lg btn-light btn-block mr-2"
                >
                  Features
                </HashLink>
              </Nav.Item>
            </Nav>
            <Nav as="ul">
              <Nav.Item as="li">
                <Link
                  to="/login"
                  className="btn btn-lg btn-light d-none d-lg-block mr-2"
                >
                  Log in
                </Link>
              </Nav.Item>
              <Nav.Item as="li">
                <Link to="/signup" className="btn btn-lg btn-primary btn-block">
                  Sign up
                </Link>
              </Nav.Item>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </header>
  );
}
