package fun.lijun.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import fun.lijun.dao.BloggerDao;
import fun.lijun.entity.Blogger;
import fun.lijun.service.BloggerService;


@Service("BloggerService")
public class BloggerServiceImpl implements BloggerService {
	
	@Resource
	private BloggerDao bloggerDao;
	
	public Blogger getByUserName(String userName) {
		
		return bloggerDao.getByUserName(userName);
	}

	public Blogger find() {
		return bloggerDao.find();
	}

	public Integer update(Blogger blogger) {
		return bloggerDao.update(blogger);
	}
}
