package springproject.dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import springproject.model.User;

@Component
public class UserRegistraion {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void addUser(User user) {
		this.hibernateTemplate.save(user);
	}
	
	
}
