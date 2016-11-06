package net.west.springsecurityapp.service;

import net.west.springsecurityapp.model.User;

/**
 * Service class for {@link net.west.springsecurityapp.model.User}
 *
 * @author Maschikevich Igor
 * @version 1.0
 */

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
