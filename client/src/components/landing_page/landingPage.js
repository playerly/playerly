import React from "react";
import StaticNav from "./nav";
import Hero from "./hero";
import About from "./about";
// import Features from "./features";
import Footer from "./footer";

export default function LandingPage() {
  return (
    <React.Fragment>
      <StaticNav />
      <div id="landing-page">
        <Hero />
        <About />
        <Footer />
      </div>
    </React.Fragment>
  );
}
