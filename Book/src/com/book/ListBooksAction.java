package com.book;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.object.BookForm;
import com.util.persistence.Sql;

public class ListBooksAction extends Action {

	private static ResultSet rs = null;
	private static List<BookForm> books = null;

	private static String TITLE = "title";
	private static String AUTH_LAST = "auth_last";
	private static String AUTH_FIRST = "auth_first";
	private static String ISBN = "isbn";
	
	// perform method "perform"
	public ActionForward perform(ActionMapping mapping, ActionForm form,
			HttpServletRequest req, HttpServletResponse res) {
		
		DataSource dataSource;
		Connection connection = null;
		
		try{
			dataSource = getDataSource(req);
			connection = dataSource.getConnection();
			Statement statement = connection.createStatement();
			rs = statement.executeQuery(Sql.selectAllBooks);
			books = new ArrayList<BookForm>();
			while (rs.next()) {
				BookForm book = new BookForm();
				book.setTitle(rs.getString(TITLE));
				book.setAuth_last(rs.getString(AUTH_LAST));
				book.setAuth_first(rs.getString(AUTH_FIRST));
				book.setIsbn(rs.getString(ISBN));
				books.add(book);
			}
			
		}catch(Exception e){
			// create exception action here sometime
		}finally{
			
			try {
				connection.close();
			} catch (SQLException e) {
				
			}
		}

		req.setAttribute("books", books);

		return mapping.findForward("success");

	}

}
