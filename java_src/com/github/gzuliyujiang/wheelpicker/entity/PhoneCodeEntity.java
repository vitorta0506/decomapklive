package com.github.gzuliyujiang.wheelpicker.entity;

import androidx.annotation.NonNull;
import java.io.Serializable;
import k1.b;
/* loaded from: classes.dex */
public class PhoneCodeEntity implements b, Serializable {
    private String code;
    private String name;

    public PhoneCodeEntity(String str, String str2) {
        this.name = str;
        this.code = str2;
    }

    public String getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    @Override // k1.b
    public String provideText() {
        return this.name;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    @NonNull
    public String toString() {
        return "PhoneCodeEntity{name='" + this.name + "', code='" + this.code + "'}";
    }
}
