package com.example.appfood.activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.bumptech.glide.Glide;
import com.example.appfood.R;
import com.example.lib.common.NetworkConnection;
import com.example.lib.common.Show;
import com.example.lib.model.Mon;
import com.example.lib.model.GioHang;


import java.text.DecimalFormat;

public class ChiTietMonActivity extends AppCompatActivity {

    Toolbar toolbar_Chitietmon;
    ImageView hinhmon_chitiet;
    TextView tenmon_chitiet,gia_chitiet,mota_chitiet;
    Button btn_mua;
    Spinner spinner_soluong;
//    NotificationBadge thongbao_soluong;
    TextView thongbao_soluong;
    Mon.Result monResult;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_chi_tiet_mon);

        getViewId();
        actionToolbar();

        //check network
        if(NetworkConnection.isConnected(this)) {
            getChiTietMon();
            Show.thayDoiSoLuongGioHangNho(thongbao_soluong);
            actionBuy();
        }else{
            Show.Notify(this,getString(R.string.error_network));
            finish();
        }
    }

    private void actionBuy() {
        btn_mua.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                themGioHang();
            }
        });
    }
private  void xoaGioHang(){
    if(Show.listGiohang.size() > 0) {

        int solulistGiohangong = Integer.parseInt(spinner_soluong.getSelectedItem().toString());
        for (int i = 0; i < Show.listGiohang.size(); i++) {
            if (Show.listGiohang.get(i).getMamon() == monResult.getId()) {

                Show.listGiohang.remove(i);

            }
        }
    }
}
    private void themGioHang() {
        if(Show.listGiohang.size() > 0) {
            boolean isExist = false;
            int soluong = Integer.parseInt(spinner_soluong.getSelectedItem().toString());
            for(int i = 0;i < Show.listGiohang.size(); i++ ) {
                if(Show.listGiohang.get(i).getMamon() == monResult.getId()) {
                    isExist = true;
                    //cộng dồn
                    int checkSoluong = soluong + Show.listGiohang.get(i).getSoluong();
                    Show.listGiohang.get(i).setSoluong(checkSoluong > 200 ? 200 : checkSoluong);

                }
            }
            if(!isExist) {
                GioHang giohang = new GioHang();
                giohang.setGia(Long.parseLong(monResult.getGia()));
                giohang.setMamon(monResult.getId());
                giohang.setTenmon(monResult.getTenmon());
                giohang.setHinhmon(monResult.getHinhmon());
                giohang.setMota(monResult.getMota());
                giohang.setSoluong(soluong);
                //Thêm vào giỏ
                Show.listGiohang.add(giohang);
            }
        }else{
            int soluong = Integer.parseInt(spinner_soluong.getSelectedItem().toString());
            GioHang giohang = new GioHang();
            giohang.setGia(Long.parseLong(monResult.getGia()));
            giohang.setMamon(monResult.getId());
            giohang.setTenmon(monResult.getTenmon());
            giohang.setHinhmon(monResult.getHinhmon());
            giohang.setMota(monResult.getMota());
            giohang.setSoluong(soluong);
            //Thêm vào giỏ
            Show.listGiohang.add(giohang);
        }
        Show.thayDoiSoLuongGioHangNho(thongbao_soluong);
        Intent thanhtoan = new Intent(getApplicationContext(),ThongTinKhachHangActivity.class);
        startActivity(thanhtoan);
    }

    private void getChiTietMon() {
        monResult = (Mon.Result) getIntent().getSerializableExtra("chitietmon");
        tenmon_chitiet.setText(monResult.getTenmon());
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        gia_chitiet.setText(decimalFormat.format(Double.parseDouble(monResult.getGia()))+" đ");
        mota_chitiet.setText(monResult.getMota());
        Glide.with(getApplicationContext()).load(monResult.getHinhmon())
                .placeholder(R.drawable.img_default)
                .error(R.drawable.img_error)
                .into(hinhmon_chitiet);

        Integer[] soluong = new Integer[]{1};
        ArrayAdapter<Integer> adapterSpin =
                new ArrayAdapter<>(this,R.layout.spinner_item,soluong);
        spinner_soluong.setAdapter(adapterSpin);
    }

    private void actionToolbar() {
        setSupportActionBar(toolbar_Chitietmon);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar_Chitietmon.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                xoaGioHang();
                finish();
            }
        });
    }
    private void getViewId() {
        toolbar_Chitietmon = findViewById(R.id.toolbar_Chitietmon);
        hinhmon_chitiet = findViewById(R.id.hinhmon_chitiet);
        tenmon_chitiet = findViewById(R.id.tenmon_chitiet);
        gia_chitiet = findViewById(R.id.gia_chitiet);
        mota_chitiet = findViewById(R.id.mota_chitiet);
        spinner_soluong = findViewById(R.id.spinner_soluong);
        btn_mua = findViewById(R.id.btn_mua);
        thongbao_soluong = findViewById(R.id.thongbao_soluong);
    }


    public void openCart(View view) {
        Intent giohang = new Intent(getApplicationContext(),GioHangActivity.class);
        startActivity(giohang);
    }

    public void ToHome(View view) {
        Intent trangchu = new Intent(getApplicationContext(),MainActivity.class);
        startActivity(trangchu);
    }

    @Override
    protected void onResume() {
        super.onResume();
        Show.thayDoiSoLuongGioHangNho(thongbao_soluong);
    }

    @Override
    protected void onStart() {
        super.onStart();
        Show.thayDoiSoLuongGioHangNho(thongbao_soluong);
    }
}