package elementary_web.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import elementary_web.converter.RoleConverter;
import elementary_web.dto.RoleDTO;
import elementary_web.entity.Role;
import elementary_web.repository.RoleRepository;

@Service
public class RoleService {
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private RoleConverter roleConverter;

	public Role findByRoleID(int roleID) {
		Role role = roleRepository.findByRoleID(roleID);
		return role;

	}

	public Role findByRoleName(String roleName) {
		Role role = roleRepository.findByRoleName(roleName);
		return role;

	}

	public List<RoleDTO> findAllRole() {
		List<Role> listRole = roleRepository.findAll();
		List<RoleDTO> listRoleDTO = new ArrayList<RoleDTO>();
		for (Role r : listRole) {
			RoleDTO roleDTO = roleConverter.toDTO(r);
			listRoleDTO.add(roleDTO);
		}
		return listRoleDTO;
	}
}
