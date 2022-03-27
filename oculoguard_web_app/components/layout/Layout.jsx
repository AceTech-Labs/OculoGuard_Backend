import Navigation from "./Navigation";

const Layout = (props) => (
  <>
    <Navigation></Navigation>
    <main>{props.children}</main>
  </>
);

export default Layout;
