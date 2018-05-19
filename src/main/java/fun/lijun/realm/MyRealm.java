package fun.lijun.realm;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import fun.lijun.entity.Blogger;
import fun.lijun.service.BloggerService;
import fun.lijun.util.CryptographyUtil;

public class MyRealm extends AuthorizingRealm{
	@Resource
	private BloggerService bloggerService;
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection arg0) {
		return null;
	}
	
	/**
	 * 验证当前登录的用户
	 */
	
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String userName = (String) token.getPrincipal();
		Blogger blogger = bloggerService.getByUserName(userName);
		if (blogger!=null) {
			SecurityUtils.getSubject().getSession().setAttribute("currentUser", blogger); // 把当前用户信息存到session中
			AuthenticationInfo authcInfo=new SimpleAuthenticationInfo(blogger.getUserName(), blogger.getPassword(), "xxx");
			return authcInfo;
		} else {
			return null;
		}
	}
}
