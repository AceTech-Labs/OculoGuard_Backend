import Link from "next/link";

const Navigation = () => {
  return (
    <nav>
      <ul className="">
        <li>
          <Link href={"/"}>Home</Link>
        </li>
        <li>
          <Link href={"/records"}>Records</Link>
        </li>
        <li>
          <Link href={"/about"}>About</Link>
        </li>
      </ul>
    </nav>
  );
};

export default Navigation;
