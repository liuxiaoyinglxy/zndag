package com.xnft.dao;

import java.util.Map;

import com.xnft.model.Users;

public interface UserMapper {
	public Users getRegist(Map<String, Object> map);
}
