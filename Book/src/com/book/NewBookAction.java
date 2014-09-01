package com.book;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.object.BookForm;
import com.util.persistence.Sql;

public class NewBookAction extends Action {

	public ActionForward perform(ActionMapping mapping, ActionForm form,
			HttpServletRequest req, HttpServletResponse res) {
		
		BookForm bookForm = (BookForm) form;

		if (form != null && bookForm.getTitle()!=null && bookForm.getTitle().length()>0) {

			DataSource dataSource;
			Connection connection = null;
			PreparedStatement statement = null;

			try {
				dataSource = getDataSource(req);
				connection = dataSource.getConnection();
				statement = connection.prepareStatement(Sql.insertNewBook);
				statement.setString(1, bookForm.getTitle());
				statement.setString(2, bookForm.getAuth_last());
				statement.setString(3, bookForm.getAuth_first());
				statement.setString(4, bookForm.getIsbn());
				statement.executeUpdate();

				statement.close();
				connection.close();

			} catch (Exception e) {

			}

		}

		return mapping.findForward("success");

	}

}
