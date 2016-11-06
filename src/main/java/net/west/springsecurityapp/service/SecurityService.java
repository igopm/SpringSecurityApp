package net.west.springsecurityapp.service;

/**
 * Service for Security.
 *
 * @author Maschikevich Igor
 * @version 1.0
 */

public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
