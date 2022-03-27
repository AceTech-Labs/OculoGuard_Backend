import Link from "next/link";

const Navigation = () => {
  return (
    <nav>
      <ul>
        <li>
          <Link>Home</Link>
        </li>
        <li>
          <Link>Records</Link>
        </li>
        <li>
          <Link>About</Link>
        </li>
      </ul>
    </nav>
  );
};

export default Navigation;
