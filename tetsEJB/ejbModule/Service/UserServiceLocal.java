package Service;

import java.util.List;

import javax.ejb.Local;

import Data.Usuario;

@Local
public interface UserServiceLocal {
	public void agregarUsuario(Usuario u);
	public List<Usuario> listarUsuario();
	public void eliminarPersona(Usuario u);
	public void editarPersona(Usuario u) ; 
	int buscarUsuario(String usuario, String password);
	int verificarTipoUsuarioByNombre(String usuario);
}
