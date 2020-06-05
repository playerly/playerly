import React from "react";
import MainNav from "./../shared/main_nav";
import { Container } from "react-bootstrap";

export default function Home() {
  return (
    <React.Fragment>
      <MainNav />
      <Container id="main-container">
        <h1>Home page</h1>
      </Container>
    </React.Fragment>
  );
}
