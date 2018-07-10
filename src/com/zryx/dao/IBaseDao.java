package com.zryx.dao;

import java.util.List;
import java.util.Map;

public interface IBaseDao<E> {

	public abstract List<E> list(Map<String, Object> param);

	public abstract E getObjById(long id);

	public abstract int add(E obj);

	public abstract int delete(long id);

	public abstract int update(E obj);

}