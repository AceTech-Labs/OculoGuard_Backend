import 'tailwindcss/tailwind.css'

const CardData = (props) => {
  return (
    <div className="sm:w-1/2 mb-10 px-4 border p-6 bor rounded-md" >
    <div className="rounded-lg h-64 overflow-hidden ">
      <img alt="content" className="object-cover object-center h-full w-full" src="https://dummyimage.com/1201x501" />
    </div>
    <h2 className="title-font text-2xl font-medium text-gray-900 mt-6 mb-2">{props.title}</h2>
    <p className="leading-relaxed text-base mb-3">{props.description}.</p>
    <button type="button" class="inline-block px-6 py-2.5 bg-blue-600 text-white font-medium text-xs leading-tight uppercase rounded-full shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out">{props.buttonName}</button>
  </div>
  )
}

export default CardData