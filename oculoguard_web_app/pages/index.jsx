import { useState, useEffect } from "react";
import SideBar from "../components/sidebar";

export default function Home() {
  const [color, setColor] = useState(1);
  useEffect(() => {
    console.log(color);
  }, [color]);
  console.log("sdsa");

  return (
    <>
      <SideBar></SideBar>
      Dont touch m e
      <button
        onClick={() => {
          setColor(color + 1);
        }}
      >
        Click{color}
      </button>
      <br />
      <button onClick={() => {}}>sx</button>
    </>
  );
}
