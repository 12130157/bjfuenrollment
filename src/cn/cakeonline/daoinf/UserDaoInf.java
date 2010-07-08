package cn.cakeonline.daoinf;

import java.util.List;
import cn.cakeonline.vo.UserVO;

public interface UserDaoInf {
	/**
	 * 登录方法
	 * 
	 * @param user
	 *            UserVO
	 * @return boolean true|false
	 */
	public boolean login(UserVO user);

	/**
	 * 根据ID查询用户
	 * 
	 * @param userId
	 *            int userId
	 * @return
	 * @throws Exception
	 */
	public UserVO queryUser(String userId) throws Exception;

	/**
	 * 更新记录
	 * 
	 * @param user
	 *            UserVO
	 * @return
	 */
	public boolean updateUser(UserVO user);

	/**
	 * 添加用户记录
	 * 
	 * @param user
	 *            UserVO
	 * @return
	 */
	public boolean addUser(UserVO user);

	/**
	 * 根据用户ID删除用户
	 * 
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	public boolean deleteUser(String userId) throws Exception;

	/**
	 * 查询所有用户
	 * 
	 * @return List<UserVO>
	 */
	public List<UserVO> getAllUsers();

	/**
	 * 根据用户名获取用户
	 * 
	 * @param userName
	 * @return
	 * @throws Exception
	 */
	public UserVO getUser(String userName) throws Exception;
}
