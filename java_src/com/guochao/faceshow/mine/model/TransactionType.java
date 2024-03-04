package com.guochao.faceshow.mine.model;
/* loaded from: classes4.dex */
public class TransactionType {
    private int childId;

    /* renamed from: id  reason: collision with root package name */
    private int f25436id;
    public boolean isSelected = false;
    private String name;

    public TransactionType() {
    }

    public int getChildId() {
        return this.childId;
    }

    public int getId() {
        return this.f25436id;
    }

    public String getName() {
        return this.name;
    }

    public void setChildId(int i9) {
        this.childId = i9;
    }

    public void setId(int i9) {
        this.f25436id = i9;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "TransactionType{id=" + this.f25436id + ", name='" + this.name + "'}";
    }

    public TransactionType(int i9, String str) {
        this.f25436id = i9;
        this.name = str;
    }
}
