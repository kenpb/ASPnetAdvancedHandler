<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodeProject.GenericHandler.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="jquery.js" type="text/javascript"></script>
    <style type="text/css">
        body { font-family: Verdana, Helvetica, Arial, Times New Roman; font-size: .9em; }
        h1 { border-bottom:solid 1px #555; font-size: 1.4em; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Doing session stuff via Handler</h1>
        
		<p id="pHttpPostSession">
			<input type="button" onclick="HttpPostSessionTest()" value="HTTP Post variable to session" />
			<script type="text/javascript">
			    function HttpPostSessionTest() {
			        $.ajax({
			            url: 'SessionHandler.ashx',
			            type: 'POST',
                        data: { args: { key: 'Test', value: 'My Value!' } },
			            success: function (data) { alert('Success!'); },
			            error: function () { alert('Error!'); }
			        });
			    };
			</script>
		</p>

        <p id="pHttpPostSession2">
			<input type="button" onclick="HttpPostSessionTest2()" value="HTTP Post other variable to session" />
			<script type="text/javascript">
			    function HttpPostSessionTest2() {
			        $.ajax({
			            url: 'SessionHandler.ashx',
			            type: 'POST',
			            data: { args: { key: 'Other Test', value: 'My Other Value!'} },
			            success: function (data) { alert('Success!'); },
			            error: function () { alert('Error!'); }
			        });
			    };
			</script>
		</p>

        <p id="pHttpPostSession3">
			<input type="button" onclick="HttpPostSessionTest3()" value="HTTP Post updates Test in session" />
			<script type="text/javascript">
			    function HttpPostSessionTest3() {
			        $.ajax({
			            url: 'SessionHandler.ashx',
			            type: 'POST',
			            data: { args: { key: 'Test', value: 'New Test Value!'} },
			            success: function (data) { alert('Success!'); },
			            error: function () { alert('Error!'); }
			        });
			    };
			</script>
		</p>

        <p id="pHttpGetSession">
			<input type="button" onclick="HttpGetSessionTest()" value="HTTP Get all variable in session" />
			<script type="text/javascript">
			    function HttpGetSessionTest() {
			        $.ajax({
			            url: 'SessionHandler.ashx',
			            type: 'GET',
			            success: function (data) { alert(data); },
			            error: function () { alert('Error!'); }
			        });
			    };
			</script>
		</p>

        <p id="pHttpGetSession2">
			<input type="button" onclick="HttpGetSessionTest2()" value="HTTP Get the `Test` variable in session" />
			<script type="text/javascript">
			    function HttpGetSessionTest2() {
			        $.ajax({
			            url: 'SessionHandler.ashx',
			            type: 'GET',
			            data: { args: { key: 'Test'} },
			            success: function (data) { alert(JSON.stringify(data)); },
			            error: function () { alert('Error!'); }
			        });
			    };
			</script>
		</p>

        <p id="pHttpKillSession">
			<input type="button" onclick="HttpKillSessionTest()" value="HTTP Delete kills the session" />
			<script type="text/javascript">
			    function HttpKillSessionTest() {
			        $.ajax({
			            url: 'SessionHandler.ashx',
			            type: 'DELETE',
			            success: function (data) { alert('Success'); },
			            error: function () { alert('Error!'); }
			        });
			    };
			</script>
		</p>

    </div>
    </form>
</body>
</html>
