<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<c:import url="/WEB-INF/jsp/header.jsp">
	   		 <c:param name="pageTitle" value="Product Detail View" />
		</c:import>
		
		<div>
			<div style = "float: left">
				<img src = "img/${product.imageName}" alt = "${product.imageName}">
			</div>
			
			<div>
				<c:out value = "${product.name}"/>
			</div>
			
			<div>
				<c:out value = "${product.manufacturer}"/>
			</div>
			
			<div>
				<c:out value = "${product.averageRating}"/>
			</div>
			
			<div>
				<c:out value = "${product.price}"/>
			</div>
			
			<div>
				<c:out value = "${product.weightInLbs}"/>
			</div>
			
			<div>
				<c:out value = "${product.description}"/>
			</div>
		</div>
		
		
		
		
		
		
		<c:import url="/WEB-INF/jsp/footer.jsp"></c:import>