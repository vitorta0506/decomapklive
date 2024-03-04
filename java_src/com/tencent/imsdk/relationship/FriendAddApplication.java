package com.tencent.imsdk.relationship;

import android.text.TextUtils;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
/* loaded from: classes4.dex */
public class FriendAddApplication implements Serializable {
    private byte[] addSourceBytes;
    private int addType;
    private byte[] addWordingBytes;
    private byte[] groupNameBytes;
    private byte[] remarkBytes;
    private String userID;

    public void setAddSource(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.addSourceBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setAddType(int i9) {
        this.addType = i9;
    }

    public void setAddWording(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.addWordingBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setGroupName(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.groupNameBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setRemark(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.remarkBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }

    public void setUserID(String str) {
        this.userID = str;
    }
}
