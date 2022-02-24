import { useState, useEffect } from "react";
import SideBar from "../components/sidebar";

export default function Home() {
  const [color, setColor] = useState("red");

  return (
    <>
      <p className="text-green bg-red-500 text-center font-extrabold stroke-indigo-300">
        Say my name
      </p>
      <button
        onClick={() => setColor("green")}
        className="underline text-purple-600 bg-teal-500 border-collapse rounded-lg"
      >
        click me {color}
      </button>
      <br />
      <span className="text-red bg-yellow-500">Say my name</span>
      <div className="text-green bg-teal-500">say my name</div>
      <SideBar></SideBar>
    </>
  );
}
