package com.javalec.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.javalec.bbs.dto.ADto;


public class ADao {

	// Field
	DataSource dataSource;

	// Constructor
	public ADao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/address");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Method

	// 작성 write.do
	public void write(String aName, String aPhone, String aAddress, String aEmail, String aRelation) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();
			String query = "insert into user_address (aName, aPhone, aAddress, aEmail, aRelation, aInsertDate) values (?,?,?,?,?,now())";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, aName);
			preparedStatement.setString(2, aPhone);
			preparedStatement.setString(3, aAddress);
			preparedStatement.setString(4, aEmail);
			preparedStatement.setString(5, aRelation);

			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	// select each content.do
	public ADto contentView(String saId) {
		ADto dto = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String query = "select * from user_address where aId =?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(saId));
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int aId = resultSet.getInt("aId");
				String aName = resultSet.getString("aName");
				String aPhone = resultSet.getString("aPhone");
				String aAddress = resultSet.getString("aAddress");
				String aEmail = resultSet.getString("aEmail");
				String aRelation = resultSet.getString("aRelation");
				Timestamp aDate = resultSet.getTimestamp("aInsertdate");

				dto = new ADto(aId, aName, aPhone, aAddress, aEmail, aRelation, aDate);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;

	}

	// Modify modify.do
	public void modify(String saId, String aName, String aPhone, String aAddress, String aEmail, String aRelation) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();
			String query = "UPDATE user_address SET aName = ?, aPhone = ?, aAddress = ?, aEmail = ?, aRelation = ?"
					+ " WHERE aId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, aName);
			preparedStatement.setString(2, aPhone);
			preparedStatement.setString(3, aAddress);
			preparedStatement.setString(4, aEmail);
			preparedStatement.setString(5, aRelation);

			preparedStatement.setInt(6, Integer.parseInt(saId));

			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {

			}
		}
	}

	// 삭제 delete.do
	public void delete(String saId) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		System.out.println(saId);

		try {
			connection = dataSource.getConnection();
			String query = "delete from user_address where aId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1,Integer.parseInt(saId));

			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {

			}
		}
	}

	// 검색 search.do
	public ArrayList<ADto> search(String queryName, String queryContent) {
		ArrayList<ADto> dtos = new ArrayList<ADto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int cnt = 0;

		try {
			connection = dataSource.getConnection();
			String query = "select aId, aName, aPhone, aAddress, aEmail, aRelation, aInsertDate from user_address";
			String query2 = " where ? LIKE '%"+queryContent+"%'";
			preparedStatement = connection.prepareStatement(query+query2);
			System.out.println(queryName);
			System.out.println(queryContent);
			preparedStatement.setString(1, queryName);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int aId = resultSet.getInt("aId");
				String aName = resultSet.getString("aName");
				String aPhone = resultSet.getString("aPhone");
				String aAddress = resultSet.getString("aAddress");
				String aEmail = resultSet.getString("aEmail");
				String aRelation = resultSet.getString("aRelation");
				Timestamp aInsertDate = resultSet.getTimestamp("aInsertDate");

				ADto dto = new ADto(aId, aName, aPhone, aAddress, aEmail, aRelation, aInsertDate);
				dtos.add(dto);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dtos;
	}
}
