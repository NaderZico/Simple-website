function ConfirmPassword(){
	let Password = document.getElementById('pass').value;
	let Confirm = document.getElementById('confirm').value;
	if(Confirm == Password) {
	return true;
	}
	else
	{
		alert('Password does not match');
		document.getElementById('confirm').setAttribute('title', 'Password does not match');
		return false;
	}
}

function Search(){
	var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("search");
  filter = input.value.toUpperCase();
  table = document.getElementById("maintable");
  tr = table.getElementsByTagName("tr");

  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
