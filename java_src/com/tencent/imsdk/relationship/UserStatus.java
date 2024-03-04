package com.tencent.imsdk.relationship;

import android.text.TextUtils;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
/* loaded from: classes4.dex */
public class UserStatus implements Serializable {
    private byte[] customStatusBytes;
    private int statusType;
    private String userID;

    public String getCustomStatus() {
        byte[] bArr = this.customStatusBytes;
        if (bArr != null && bArr.length > 0) {
            try {
                return new String(bArr, "UTF-8");
            } catch (UnsupportedEncodingException e10) {
                e10.printStackTrace();
            }
        }
        return "";
    }

    public int getStatusType() {
        return this.statusType;
    }

    public String getUserID() {
        return this.userID;
    }

    public void setCustomStatus(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.customStatusBytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e10) {
            e10.printStackTrace();
        }
    }
}
