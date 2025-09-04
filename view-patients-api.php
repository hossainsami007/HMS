<?php 
// view-patients-api.php
 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<meta charset="utf-8">
 	<title>Patient List (via API)</title>
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
 </head>
 <body class="p-4">
 	<h2>Patient List (via API)</h2>
    <table class="table table-bordered table-striped">
      <thead>
      	<tr>
      		<th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Contact</th>
      	</tr>
      </thead>
       <tbody id="patientData"></tbody>
     </table>

<script>
	fetch('http://localhost/Hospital-ManagementPHP/api/get_patients.php')
	 .then(response => response.json())
	 .then(data => {
	 	const tbody = document.getElementById('patientData');
	 	data.forEach((patient, index) => {
	 		let row = `<tr>
                        <td>${index + 1}</td>
                        <td>${patient.fname}</td>
                        <td>${patient.lname}</td>
                        <td>${patient.gender}</td>
                        <td>${patient.email}</td>
                        <td>${patient.contact}</td>
                    </tr>`;
                    tbody.innerHTML += row;                    
	 	});
	 })
       .catch(error => console.error('Error fetching patient data:', error));
  </script>
 </body>
 </html>