
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${libros}" var="libro">
	<tr data-id="${libro.id}">
		<td>${libro.id}</td>
		<td><a href="<c:url value="/libros/libro/${libro.id}" />">${libro.titulo}</a></td>
		<td><a href="<c:url value="/autores/autor/${libro.autor.id}" />">${libro.autor.nombre}</a></td>
		<td>${libro.categoria }</td>
		<td><a class="editar-libro btn btn-warning">Editar</a></td>
		<td><a class="btn btn-danger open-Modal"
			data-nombre="${libro.titulo}" data-id="${libro.id}"
			data-toggle="modal" href='#modal-borrar'>Borrar</a></td>
	</tr>
</c:forEach>
<tr>
	<td colspan="6"><a class="btn btn-primary" data-toggle="modal"
		href='#modal-libro'>Añadir libro</a></td>
</tr>