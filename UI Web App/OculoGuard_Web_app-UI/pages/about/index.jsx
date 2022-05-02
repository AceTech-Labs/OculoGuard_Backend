import React from "react";

const About = ({ about }) => {
  return <>About Page</>;
};

export function getStaticProps() {
  fetch("sayMyName.google.com").then((data) => {});
  return {
    props: data,
  };
}

export default About;
