package com.guochao.faceshow.mine.model;
/* loaded from: classes4.dex */
public class GiftBean {
    private int counts;
    private int gift_id;
    private String gname;
    private String img;
    private String nick_name;
    private int price;
    private int typeId;

    public int getCounts() {
        return this.counts;
    }

    public int getGift_id() {
        return this.gift_id;
    }

    public String getGname() {
        return this.gname;
    }

    public String getImg() {
        return this.img;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    public int getPrice() {
        return this.price;
    }

    public int getTypeId() {
        return this.typeId;
    }

    public void setCounts(int i9) {
        this.counts = i9;
    }

    public void setGift_id(int i9) {
        this.gift_id = i9;
    }

    public void setGname(String str) {
        this.gname = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setPrice(int i9) {
        this.price = i9;
    }

    public void setTypeId(int i9) {
        this.typeId = i9;
    }

    public String toString() {
        return "GiftBean{img='" + this.img + "', price=" + this.price + ", gift_id=" + this.gift_id + ", gname='" + this.gname + "', nick_name='" + this.nick_name + "', counts=" + this.counts + '}';
    }
}
