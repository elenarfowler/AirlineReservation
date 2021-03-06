package edu.calpoly.csc365.example1.controller;

import edu.calpoly.csc365.example1.dao.Dao;
import edu.calpoly.csc365.example1.dao.DaoManager;
import edu.calpoly.csc365.example1.dao.DaoManagerFactory;
import edu.calpoly.csc365.example1.entity.Customer;
import edu.calpoly.csc365.example1.entity.Passenger;
import edu.calpoly.csc365.example1.service.AuthenticationService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;


    @WebServlet(name = "PassengerServlet", urlPatterns = "/passengers")
    public class PassengerServlet extends HttpServlet {

        private DaoManager dm;
        private Dao<Passenger> passengerDao;

        public PassengerServlet() throws Exception {
            dm = DaoManagerFactory.createDaoManager();
            passengerDao = dm.getPassengerDao();
        }

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Set<Passenger> passengers = passengerDao.getAll();
            request.setAttribute("passengers", passengers);
            request.getRequestDispatcher("passengers.jsp").forward(request, response);
        }
    }


