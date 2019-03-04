package me.hgko.accountbook.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import me.hgko.accountbook.domain.db.User;
import me.hgko.accountbook.repository.UserRepository;
import me.hgko.accountbook.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User get(String id) {
		return userRepository.getOne(id);
	}

	@Override
	public List<User> getList() {
		return userRepository.findAll();
	}

	@Override
	public boolean regist(User domain) {
		if (isNew(domain)) {
            return userRepository.save(domain) != null;
        } else {
            return false;
        }
	}

	@Override
	public boolean update(User domain) {
		if (!isNew(domain)) {
			return userRepository.save(domain) != null;
		} else {
			return false;
		}
	}

	@Override
	public boolean delete(String id) {
		userRepository.deleteById(id);
		return true;
	}

	private boolean isNew(User user) {
        return !userRepository.existsById(user.getUserId());
    }
}
