package repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import es.fdi.ucm.ucmh.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {}
