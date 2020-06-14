import React, { Component } from "react";
import MinNav from "./../shared/min_nav";
import { BrowserRouter, Route, withRouter, Link } from "react-router-dom";
import { Container, Row, Col, Form, Button } from "react-bootstrap";
import { connect } from "react-redux";

class Login extends Component {
  state = {
    username: "",
    email: "",
    password: "",
    error: "",
    auth_token: "",
  };

  handleEmailChange = (e) => {
    this.setState({
      email: e.target.value,
    });
    console.log(this.state);
  };

  handlePasswordChange = (e) => {
    this.setState({
      password: e.target.value,
    });
    console.log(this.state);
  };


  constructor() {
    super();
    this.textInput = null;
    this.setTextInputRef = (element) => {
      this.textInput = element;
    };
  }

  onChange = (e) => {
    console.log(this.state);
    this.setState({ [e.target.name]: e.target.value });
  };

  saveState = (e) => {
    this.props.submitUser(this.state.email);
  };

  handleSubmit = (e) => {
    e.preventDefault();
    const { email, password } = this.state;
    console.log ('handling submit');

    fetch("http://localhost:3001/authenticate", {
      method: "post",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        email: email,
        password: password,
      }),
    })
      .then((r) => r.json().then((data) => ({ status: r.status, body: data })))
      .then((obj) => {
        if (obj.status == 200) {
          console.log ('authenticated');
          localStorage.setItem("currentUser", obj.body.user.name);
          localStorage.setItem("auth_token", obj.body.auth_token);
          localStorage.setItem("email", obj.body.user.email);
          this.setState({ username: obj.body.user.name });
          this.setState({ auth_token: obj.body.auth_token });
          this.setState({ error: "" });
          this.props.submitUser(
            this.state.email,
            this.state.username,
            this.state.auth_token
          );
          // this.props.history.push("teams");
          // window.location.href = "http://localhost:3000/home";
          this.props.history.push('/home')
        } else {
          console.log('Login failed');
          this.setState({ error: "Error Logging in. Check Credentials and try again." });
          this.setState({ email: "" });
          this.setState({ password: "" });
          localStorage.setItem("currentUser", "");
          localStorage.setItem("auth_token", "");
          console.log("do an error");
          this.props.history.push("login");
        }
        console.log(obj);
      });
  };
  render() {
    const { email, password, input } = this.state;
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
                        value={this.state.email}
                        onChange={this.handleEmailChange}
                      />
                    </Form.Group>
                    <Form.Group controlId="password">
                      <Form.Control
                        type="password"
                        name="password"
                        placeholder="Password"
                        required
                        onChange={this.onChange}
                        value={this.state.password}
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
}

function mapStateToProps(state) {
  console.log(state);
  return {
    email: state.user.email,
    username: state.user.name,
    auth_token: state.user.auth_token,
  };
}

function doSubmitUser(email, username, auth_token) {
  return {
    type: "SUBMIT_USER",
    email: email,
    username: username,
    auth_token: auth_token,
  };
}

const mapDispatchToProps = {
  submitUser: doSubmitUser,
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Login));
