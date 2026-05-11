function generateNumber()
{
	let number = Math.floor(Math.random() * 100) + 1;

	document.getElementById("result").textContent = number;

	//alert("it works!");
}