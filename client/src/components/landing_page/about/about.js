import React from "react";
import { Container, Row, Col } from "react-bootstrap";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faUsers,
  faClipboardList,
  faSearch,
} from "@fortawesome/free-solid-svg-icons";

export default function About() {
  return (
    <React.Fragment>
      <div id="about">
        <Container>
          <Row>
            <Col>
              <h2>How It Works</h2>
            </Col>
          </Row>
          <Row fluid="true">
            <Col className="about-item" md={4} sm={12} xs={12}>
              <FontAwesomeIcon icon={faClipboardList} size="4x" />
              <h3>Set your preferences</h3>
              <p>
                Tell us about yourself! We'll note down what you are interested
                in and use it to help you look for others who may share those
                interests.
              </p>
            </Col>
            <Col className="about-item" md={4} sm={12} xs={12}>
              <FontAwesomeIcon icon={faSearch} size="4x" />
              <h3>Match with groups</h3>
              <p>
                Our matchmaking algorithm will set you up with a list of
                sports-centric groups to choose from, based on what information
                you provide us.
              </p>
            </Col>
            <Col className="about-item" md={4} sm={12} xs={12}>
              <FontAwesomeIcon icon={faUsers} size="4x" />
              <h3>Grow the community</h3>
              <p>
                Take an active part in the groups you join! The more people
                engage with others in their groups, the better sports
                communities would be.
              </p>
            </Col>
          </Row>
        </Container>
      </div>
    </React.Fragment>
  );
}
