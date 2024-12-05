/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author frien
 */
public class UserList {
    private static UserList instance = new UserList();
    
    private List<User> users;
    
    public static UserList getInstance() {
        return instance;
    }
    
    private UserList() {
        users = new ArrayList();
    }
    
    public void add(User u) {
        users.add(u);
    }
    
    public List<String> list() {
        return users.stream()
                .map(User::getName)
                .collect(Collectors.toList());
    }
}
