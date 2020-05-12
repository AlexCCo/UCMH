package es.fdi.ucm.ucmh.controller.auxiliary;

import java.util.LinkedList;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import es.fdi.ucm.ucmh.model.User;
import es.fdi.ucm.ucmh.model.UserType;
import es.fdi.ucm.ucmh.model.repositories.UserQueryStringNames;
import es.fdi.ucm.ucmh.transfer.UserTransferData;

public class PagePATCache extends PageCache {
	private static Logger log = LogManager.getLogger(PagePATCache.class);
	
	public PagePATCache(int userShowConstant) {
		super(userShowConstant);
	}

	@Override
	public LinkedList<UserTransferData> getListMore(EntityManager entityManager) {
		LinkedList<User> queryRequest = queryList(UserType.PAT, entityManager, lastUserId, UserQueryStringNames.GET_LIST_MORE);
		
		LinkedList<UserTransferData> result = super.processQueryMore(queryRequest);
		log.debug("Values of lastPatUser and PagePATCache: ({})", lastUserId);
		
		return result;
	}

	@Override
	public LinkedList<UserTransferData> getListLess(EntityManager entityManager) {
		lastUserId = lastListUser.getFirst().getId();
		LinkedList<User> queryRequest = queryNativeList(UserType.PAT, entityManager, lastUserId, UserQueryStringNames.GET_LIST_LESS);
		
		LinkedList<UserTransferData> result = super.processQueryLess(queryRequest);
		log.debug("Value lastUserId in PagePATCache: ({})", lastUserId);	
		return result;
	}

}
