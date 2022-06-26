package com.example.lib.model;

import java.io.Serializable;

public class BacSiBook implements Serializable {
    int mabacsi;
    String tenbacsi;
    String hinhbacsi;
    String mota;
    long gia;
    int soluong;

    public BacSiBook() {
    }

    public BacSiBook(int mabacsi, String tenbacsi, String hinhbacsi, String mota, long gia, int soluong) {
        this.mabacsi = mabacsi;
        this.tenbacsi = tenbacsi;
        this.hinhbacsi = hinhbacsi;
        this.mota = mota;
        this.gia = gia;
        this.soluong = soluong;
    }

    public int getMabacsi() {
        return mabacsi;
    }

    public void setMabacsi(int mabacsi) {
        this.mabacsi = mabacsi;
    }

    public String getTenbacsi() {
        return tenbacsi;
    }

    public void setTenbacsi(String tenbacsi) {
        this.tenbacsi = tenbacsi;
    }

    public String getHinhbacsi() {
        return hinhbacsi;
    }

    public void setHinhbacsi(String hinhbacsi) {
        this.hinhbacsi = hinhbacsi;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public long getGia() {
        return gia;
    }

    public void setGia(long gia) {
        this.gia = gia;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }
}
