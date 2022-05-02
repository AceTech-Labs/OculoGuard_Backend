import 'tailwindcss/tailwind.css'


const Dropdown = () => {
  return (
    <div className="flex justify-center">
    <div>
      <div className="dropdown relative">
        <a className="
      dropdown-toggle
      px-6
      py-2.5
      bg-blue-600
      text-white
      font-medium
      text-xs
      leading-tight
      uppercase
      rounded
      shadow-md
      hover:bg-blue-700 hover:shadow-lg
      focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0
      active:bg-blue-800 active:shadow-lg active:text-white
      transition
      duration-150
      ease-in-out
      flex
      items-center
      whitespace-nowrap
    " href="#" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
          Select Disease and Function
          <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" className="w-2 ml-2" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
            <path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" />
          </svg>
        </a>
        <ul className="
      dropdown-menu
      min-w-max
      absolute
      bg-white
      text-base
      z-50
      float-left
      py-2
      list-none
      text-left
      rounded-lg
      shadow-lg
      mt-1
      hidden
      m-0
      bg-clip-padding
      border-none
    " aria-labelledby="dropdownMenuButton2">
          <li>
            <a className="
          dropdown-item
          text-sm
          py-2
          px-4
          font-normal
          block
          w-full
          whitespace-nowrap
          bg-transparent
          text-gray-700
          hover:bg-gray-100
        " href="#">Diabetic Retinopathy Diagnosis</a>
          </li>
          <li>
            <a className="
          dropdown-item
          text-sm
          py-2
          px-4
          font-normal
          block
          w-full
          whitespace-nowrap
          bg-transparent
          text-gray-700
          hover:bg-gray-100
        " href="#">Glaucoma Diagnosis</a>
          </li>
          <li>
            <a className="
          dropdown-item
          text-sm
          py-2
          px-4
          font-normal
          block
          w-full
          whitespace-nowrap
          bg-transparent
          text-gray-700
          hover:bg-gray-100
        " href="#">DME Diagnosis</a>
          </li>
          <li>
            <a className="
          dropdown-item
          text-sm
          py-2
          px-4
          font-normal
          block
          w-full
          whitespace-nowrap
          bg-transparent
          text-gray-700
          hover:bg-gray-100
        " href="#">Diabetic Retinopathy Prognosis</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  )
}

export default Dropdown