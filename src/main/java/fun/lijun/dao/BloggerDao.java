package fun.lijun.dao;

import java.util.List;
import java.util.Map;

import fun.lijun.entity.Blog;
import fun.lijun.entity.Blogger;

/**
 * 博主Dao接口
 * @author Administrator
 *
 */
public interface BloggerDao {
	/**
	 * 通过用户名查询用户
	 * @param userName
	 * @return
	 */
	public Blogger getByUserName(String userName);
	
	/**
	 * 查询博主信息
	 * @return
	 */
	public Blogger find();
	
	
	/**
	 * 更新博主信息
	 * @param blogger
	 * @return
	 */
	public Integer update(Blogger blogger);
	
}
