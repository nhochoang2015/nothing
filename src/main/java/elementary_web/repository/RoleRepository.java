package elementary_web.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import elementary_web.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

}
