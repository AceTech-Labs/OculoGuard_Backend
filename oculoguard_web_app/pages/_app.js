import "../styles/globals.css";
import Layout from "../components/layout/Layout";
import awsmobile from "../src/aws-exports";
import { Amplify } from "aws-amplify";
import { AmplifyAuthenticator } from "@aws-amplify/ui-react";

Amplify.configure({ ...awsmobile, ssr: true });

function MyApp({ Component, pageProps }) {
  return (
    <AmplifyAuthenticator>
      <Layout>
        <Component {...pageProps} />
      </Layout>
    </AmplifyAuthenticator>
  );
}

export default MyApp;
