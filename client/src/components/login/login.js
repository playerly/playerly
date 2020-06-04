import React from "react";
import MinNav from "./../shared/min_nav";
import { Link } from "react-router-dom";
import { Container, Row, Col, Form, Button } from "react-bootstrap";

export default function Login() {
  return (
    <React.Fragment>
      <MinNav />
      <Container id="main-container">
        <div id="login">
          <Row className="justify-content-center">
            <Col sm={12} md={9} lg={6}>
              <Form>
                <h1 className="text-center">Log in</h1>
                <Form.Group controlId="email">
                  <Form.Control
                    type="email"
                    name="email"
                    placeholder="Email Address"
                    required
                  />
                </Form.Group>
                <Form.Group controlId="password">
                  <Form.Control
                    type="password"
                    name="password"
                    placeholder="Password"
                    required
                  />
                </Form.Group>
                <Form.Group>
                  <Button variant="primary" type="submit" size="lg" block>
                    Log in
                  </Button>
                </Form.Group>
              </Form>
              <div className="text-center">
                <p>
                  Not a member? <Link to="/signup">Sign up now!</Link>
                </p>
              </div>
            </Col>
          </Row>
        </div>
      </Container>
    </React.Fragment>
  );
}
