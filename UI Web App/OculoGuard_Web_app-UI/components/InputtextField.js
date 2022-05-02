import 'tailwindcss/tailwind.css'
const InputtextField = () => {
  return (
    <>
     <div className=" relative ">
        <label htmlFor="required-email" className="text-blue-900">
          E-mail
          <span className="text-red-500 required-dot">
            *
          </span>
        </label>
        <input type="text" id="required-email" className=" rounded-lg border-transparent flex-1 appearance-none border border-gray-300 w-full py-2 px-4 bg-white text-gray-700 placeholder-gray-400 shadow-sm text-base focus:outline-none focus:ring-2 focus:ring-purple-600 focus:border-transparent" name="email" placeholder="Your email" />
      </div>
    
    
    
    </>
  )
}

export default InputtextField