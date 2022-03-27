import "../styles/globals.css";
import { Amplify } from "aws-amplify";
import { AmplifyAuthenticator } from "@aws-amplify/ui-react";
import awsmobile from "../src/aws-exports";
import Layout from "../components/layout/Layout";

Amplify.configure({ ...awsmobile, ssr: true });

function MyApp({ Component, pageProps }) {
  return (
    <AmplifyAuthenticator>
      <Component {...pageProps} />
    </AmplifyAuthenticator>
  );
}

export default MyApp;
