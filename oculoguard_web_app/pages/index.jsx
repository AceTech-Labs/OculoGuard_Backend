import { useState, useEffect } from "react";
import SideBar from "../components/sidebar";
import Head from "next/head";
import AuthUI from "./auth";

export default function Home() {
  const [color, setColor] = useState(1);
  useEffect(() => {
    console.log(color);
  }, [color]);
  console.log("sdsa");

  return (
    <div className="bg-red flex flex-col">
      <Head>OculoGuard</Head>
      <AuthUI></AuthUI>
      <SideBar></SideBar>
    </div>
  );
}
