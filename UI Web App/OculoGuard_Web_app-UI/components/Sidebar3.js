
import 'tailwindcss/tailwind.css'

const Sidebar3 = () => {
  return (

<>
    

	<div class="flex h-screen  p-5 bg-white" >
	{/* Component Start */}
	<div class="flex flex-col items-center  w-60 h-full overflow-hidden text-blue-900 bg-white rounded border-separate border-2 border-blue-900">
		<a class="flex items-center w-full px-3 mt-3" href="#">
		<svg class="w-8 h-8 fill-current" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" fill="currentColor">
			<path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
  			<path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
			</svg>
			<span class="ml-2 text-sm font-bold">Oculo-Guard</span>
		</a>
		<div class="w-full px-2">
			<div class="flex flex-col items-center w-full mt-3 border-t border-blue-900">
				<a class="flex items-center w-full h-12 px-3 mt-2 rounded hover:bg-blue-900 hover:text-white" href="#">
					<svg class="w-6 h-6 stroke-current" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
					</svg>
					<span class="ml-2 text-sm font-medium">Dasboard</span>
				</a>
				<a class="flex items-center w-full h-12 px-3 mt-2 rounded hover:bg-blue-900 hover:text-white" href="#">
				<svg class="w-6 h-6 stroke-current" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 19 19" stroke="currentColor">
				<path d="M8.5 6a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V10a.5.5 0 0 0 1 0V8.5H10a.5.5 0 0 0 0-1H8.5V6z"/>
  <path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm10-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1z"/>
				</svg>
					<span class="ml-2 text-sm font-medium">Add Patient</span>
				</a>
				<a class="flex items-center w-full h-12 px-3 mt-2 rounded hover:bg-blue-900 hover:text-white" href="#">
					<svg class="w-6 h-6 stroke-current" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 8v8m-4-5v5m-4-2v2m-2 4h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
					</svg>
					<span class="ml-2 text-sm font-medium">View Records</span>
				</a>
				<a class="flex items-center w-full h-12 px-3 mt-2 rounded hover:bg-blue-900 hover:text-white" href="#">
					<svg class="w-6 h-6 stroke-current" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7v8a2 2 0 002 2h6M8 7V5a2 2 0 012-2h4.586a1 1 0 01.707.293l4.414 4.414a1 1 0 01.293.707V15a2 2 0 01-2 2h-2M8 7H6a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2v-2" />
					</svg>
					<span class="ml-2 text-sm font-medium">View Guide</span>
				</a>
			</div>
			<div class="flex flex-col items-center w-full mt-2 border-t border-blue-900">
				
			<a class="flex items-center w-full h-12 px-3 mt-2 rounded hover:bg-blue-900 hover:text-white" href="#">
					<svg class="w-6 h-6 stroke-current"  xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
					</svg>
					<span class="ml-2 text-sm font-medium">Settings</span>
				</a>
					<a class="flex items-center w-full h-12 px-3 mt-2 rounded hover:bg-blue-900 hover:text-white" href="#">
					<svg class="w-6 h-6 stroke-current" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
						<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" />
					</svg>
					<span class="ml-2 text-sm font-medium">Messages</span>					
				</a>
			</div>
		</div>
		<a class="flex items-center justify-center w-full h-16 mt-auto bg-blue-900 hover:bg-blue-800 text-white  hover:text-white   hover:border-blue-900 "  href="#">
			<svg class="w-6 h-6 stroke-current" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
				<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
			</svg>
			<span class="ml-2 text-sm font-medium">Account</span>
		</a>
	</div>
	{/* Component End  */}
	</div>




    
    
</>
    
  )
}

export default Sidebar3