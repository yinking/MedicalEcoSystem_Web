/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package neu.ying.entities;

import java.util.Date;

/**
 *
 * @author GladysWang
 */
public class DoctorEnterpriseInfo {

    private Integer id;
    private String username;
    private String enterprise;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(String enterprise) {
        this.enterprise = enterprise;
    }

   
    @Override
    public String toString() {
        return id+"";
    }

}
