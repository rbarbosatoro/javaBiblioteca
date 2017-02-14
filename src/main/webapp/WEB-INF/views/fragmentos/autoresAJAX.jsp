
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Id</th>
			<th>Nombre</th>
			<th>Editar</th>
			<th>Borrar</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${autores}" var="autor">
			<tr data-id="${autor.id}">
				<td>${autor.id}</td>
				<td><a href="<c:url value="/autores/autor/${autor.id}" />">${autor.nombre}</a></td>
				<td><a class="editar-autor btn btn-warning">Editar</a></td>
				<td><a class="btn btn-danger open-Modal"
					data-nombre="${autor.nombre}" data-id="${autor.id}"
					data-toggle="modal" href='#modal-borrar'>Borrar</a></td>
			</tr>
			<tr>
				<td colspan="5">
					<table class="table table-bordered"
						style="width: 80%; margin: auto">
						<tr class="info" style="margin-left: 20%">
							<th style="width: 5%">ID libro</th>
							<th>Titulo Libro</th>
						</tr>
						<c:forEach items="${autor.getLibros()}" var="libro">
							<tr>

								<td>${libro.id}</td>
								<td>${libro.titulo}</td>

							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="5"><a class="btn btn-primary" data-toggle="modal"
				href='#modal-autor'>Añadir autor</a></td>
		</tr>
	</tbody>
</table>