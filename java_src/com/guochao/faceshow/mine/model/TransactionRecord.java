package com.guochao.faceshow.mine.model;

import java.util.List;
/* loaded from: classes4.dex */
public class TransactionRecord {
    private int Income;
    public int currPage;
    private int payPrice;
    private String time;
    public int totalPage;
    private List<RecordDetails> userDetail;

    public TransactionRecord() {
    }

    public int getIncome() {
        return this.Income;
    }

    public int getPayPrice() {
        return this.payPrice;
    }

    public String getTime() {
        return this.time;
    }

    public List<RecordDetails> getUserDetail() {
        return this.userDetail;
    }

    public void setIncome(int i9) {
        this.Income = i9;
    }

    public void setPayPrice(int i9) {
        this.payPrice = i9;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public void setUserDetail(List<RecordDetails> list) {
        this.userDetail = list;
    }

    public String toString() {
        return "TransactionRecord{userDetail=" + this.userDetail + ", payPrice=" + this.payPrice + ", Income=" + this.Income + ", time='" + this.time + "'}";
    }

    public TransactionRecord(List<RecordDetails> list, int i9, int i10, String str) {
        this.userDetail = list;
        this.payPrice = i9;
        this.Income = i10;
        this.time = str;
    }
}
