package com.example.lib.model;

import java.io.Serializable;
import java.util.List;

public class BacSi implements Serializable {
    public class Result implements Serializable {
        private int id;
        private int madanhmuc;
        private String tenbacsi;
        private String hinhbacsi;
        private String mota;
        private String gia;

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public int getMadanhmuc() {
            return madanhmuc;
        }

        public void setMadanhmuc(int madanhmuc) {
            this.madanhmuc = madanhmuc;
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

        public String getGia() {
            return gia;
        }

        public void setGia(String gia) {
            this.gia = gia;
        }
    }
    boolean success;
    String message;
    List<BacSi.Result> result;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<Result> getResult() {
        return result;
    }

    public void setResult(List<Result> result) {
        this.result = result;
    }
}
