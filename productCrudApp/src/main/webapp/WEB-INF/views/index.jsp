<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>

<body>
	<div class="container mt-5">

		<div class="row" style="background-color: #f2f1f8;">
			<div class="col-md-12">
				<h2 class="text-center mb-4">Welcome to Product App</h2>
			</div>
			
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Product Name</th>
						<th scope="col">Description</th>
						<th scope="col">Price</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				
				<tbody>
					
					<c:forEach items="${products}" var="p">
					<tr>
						<th scope="row">Prod${p.id}</th>
						<td>${p.name}</td>
						<td>${p.description}</td>
						<td class="font-weight-bold">&#x20B9; ${p.price}</td>
						<td>
							<a href="delete/${p.id}"><i class="fas fa-trash text-danger" style="font-size:20px"></i></a>
							<a href="update/${p.id}"><i class="fas fa-pen-nib text-primary" style="font-size:20px"></i></a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
				
			</table>

			<div class="container text-center">
				<a href="add_product" class="btn btn-outline-success mt-3">Add
					Product</a>
			</div>

		</div>

	</div>
</body>
</html>
