package es.fdi.ucm.ucmh.controller.auxiliary;

import java.util.LinkedList;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import es.fdi.ucm.ucmh.controller.AdminController;
import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.auxiliar.UserQueryStringNames;
import es.fdi.ucm.ucmh.model.auxiliar.UserType;
import es.fdi.ucm.ucmh.transfer.UserTransferData;

public class PagePSYCache extends PageCache {
	private static Logger log = LogManager.getLogger(PagePSYCache.class);
	
	public PagePSYCache(int userShowConstant) {
		super(userShowConstant);
	}

	@Override
	public LinkedList<UserTransferData> getListMore(EntityManager entityManager) {
		//we call super.queryList to perform each query
		LinkedList<User> queryRequest = queryList(UserType.PSY, entityManager, lastUserId, UserQueryStringNames.GET_LIST_MORE);
		
		LinkedList<UserTransferData> result = processQueryMore(queryRequest);
		log.debug("Value lastUserId in PagePSYCache: ({})", lastUserId);	
		return result;
	}

	@Override
	public LinkedList<UserTransferData> getListLess(EntityManager entityManager) {
		lastUserId = lastListUser.getFirst().getId();
		//we call super.queryNativeList to perform each query
		LinkedList<User> queryRequest = queryNativeList(UserType.PSY, entityManager, lastUserId, UserQueryStringNames.GET_LIST_LESS);
		
		LinkedList<UserTransferData> result = super.processQueryLess(queryRequest);
		log.debug("Value lastUserId in PagePSYCache: ({})", lastUserId);	
		return result;
	}

}
