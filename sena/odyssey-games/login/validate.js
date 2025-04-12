const form1 = document.getElementById('form1')
const form2 = document.getElementById('form2')

form1.addEventListener('submit', e => {
	e.preventDefault()
	const user = form1.user.value
	const pass = form1.pass.value

	if (user && pass) alert('Perfecto')
})

form2.addEventListener('submit', e => {
	e.preventDefault()
	const user = form2.user.value
	const email = form2.email.value
	const pass = form2.pass.value
	const passConfirm = form2.passConfirm.value

	if (user && email && pass && pass == passConfirm)
		alert('Perfecto')
	alert('Revisa tus datos por favor')
})
