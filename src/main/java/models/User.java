package models;

public class User {
    private int id;
    private final String full_name;
    private final String email;
    private String created_at;

    public User(String full_name, String email) {
        this.full_name = full_name;
        this.email = email;
    }

    public User(int id, String full_name, String email, String created_at) {
        this.id = id;
        this.full_name = full_name;
        this.email = email;
        this.created_at = created_at;
    }

    public int getId() {
        return this.id;
    }

    public String getFullName() {
        return this.full_name;
    }

    public String getEmail() {
        return this.email;
    }

    public String getCreatedAt() {
        return this.created_at;
    }

}
