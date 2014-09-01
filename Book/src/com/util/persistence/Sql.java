package com.util.persistence;

public class Sql {
	
	public static final String selectAllBooks = "SELECT * FROM books.book";
	
	public static final String insertNewBook = "INSERT INTO books.book (title,auth_last,auth_first,isbn) VALUES (?,?,?,?)";

}
