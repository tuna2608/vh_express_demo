/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.entity;

/**
 *
 * @author tuna
 */
public class Cars {

    private int id;
    private String name;
    private String type;
    private int countseat;
    private int isactive;
    private String licenseplate;

    public Cars(int id, String name, String type, int countseat, int isactive, String licenseplate) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.countseat = countseat;
        this.isactive = isactive;
        this.licenseplate = licenseplate;
    }

    public Cars(String name, String type, int countseat, String Licenseplate) {

        this.name = name;
        this.type = type;
        this.countseat = countseat;
        this.licenseplate = Licenseplate;
    }

    public Cars() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Cars(int id, String name, String type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getCountseat() {
        return countseat;
    }

    public void setCountseat(int countseat) {
        this.countseat = countseat;
    }

    public int getIsactive() {
        return isactive;
    }

    public void setIsactive(int isactive) {
        this.isactive = isactive;
    }

    public String getLicenseplate() {
        return licenseplate;
    }

    public void setLicenseplate(String Licenseplate) {
        this.licenseplate = Licenseplate;
    }

}