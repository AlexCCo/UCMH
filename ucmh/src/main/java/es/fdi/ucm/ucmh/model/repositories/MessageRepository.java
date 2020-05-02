package es.fdi.ucm.ucmh.model.repositories;

import java.util.LinkedList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import es.fdi.ucm.ucmh.model.Message;
import es.fdi.ucm.ucmh.model.User;

@Transactional(readOnly = true)
public interface MessageRepository extends JpaRepository<Message, Long> {
	
	public LinkedList<Message> getMessageList(long userId);
}
