import React from "react";
import MinNav from "./../shared/min_nav";
import { Link } from "react-router-dom";
import { Container, Row, Col, Form, Button } from "react-bootstrap";

export default function Signup() {
  return (
    <React.Fragment>
      <MinNav />
      <Container id="main-container">
        <div id="signup">
          <Row className="justify-content-center">
            <Col sm={12} md={9} lg={6}>
              <Form>
                <h1 className="text-center">Sign up</h1>
                <Form.Row>
                  <Form.Group as={Col} controlId="fname">
                    <Form.Control
                      name="fname"
                      placeholder="First Name"
                      required
                    />
                  </Form.Group>
                  <Form.Group as={Col} controlId="lname">
                    <Form.Control name="lname" placeholder="Last Name" />
                  </Form.Group>
                </Form.Row>
                <Form.Group controlId="email">
                  <Form.Control
                    type="email"
                    name="email"
                    placeholder="Email Address"
                    required
                  />
                </Form.Group>
                <Form.Group controlId="username">
                  <Form.Control
                    name="username"
                    placeholder="Username"
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
                <Form.Group controlId="passwordConfirmation">
                  <Form.Control
                    type="password"
                    name="passwordConfirmation"
                    placeholder="Confirm Password"
                    required
                  />
                </Form.Group>
                <Form.Group>
                  <Button variant="primary" type="submit" size="lg" block>
                    Sign up
                  </Button>
                </Form.Group>
              </Form>
              <div className="text-center">
                <p>
                  Already have an account? <Link to="/login">Log in here!</Link>
                </p>
              </div>
            </Col>
          </Row>
        </div>
      </Container>
    </React.Fragment>
  );
}
