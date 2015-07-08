/**
 * 
 */
	var lastKey = '';
	var check = false;
	var loopKey = false;

	function startSuggest() {
		
		if (check == false) {
			setTimeout("sendKeyword();", 500);
			loopKey = true;
		}
		check = true;
	}
	function sendKeyword() {
		if (loopKey == false) {
			return;
		}
		var key = sname_ps.value;
		if (key == '' || key == ' ') {
			lastKey = '';
			document.getElementById("view").style.display = 'none';
		} else if (key != lastKey) {
			lastKey = key;
			var param = "key=" + encodeURIComponent(key);
			sendRequest("sg_member", param, res, "post");
		}
		setTimeout("sendKeyword();", 1000);
	}

	var jsonObj = null;
	function res() {

		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var response = xhr.responseText;
				jsonObj = JSON.parse(response);
				viewTable();
			} else {
				document.getElementById("view").style.display = 'none';
			}
		}
	}
	function viewTable() {
		var vD = document.getElementById("view");
		var htmlTxt = "<table>";
		for (var i = 0; i < jsonObj.length; i++) {
			htmlTxt += "<tr><td style='cursor:pointer;'onmouseover='this.style.background=\"silver\"'onmouseout='this.style.background=\"white\"' onclick='select("
					+ i + ")'>" + jsonObj[i] + "</td></tr>";
		}
		htmlTxt += "</table>";
		vD.innerHTML = htmlTxt;
		vD.style.display = "block";
	}
	function select(index) {
		sname_ps.value = jsonObj[index];
		document.getElementById("view").style.display = 'none';
		check = false;
		loopKey = false;
	}
