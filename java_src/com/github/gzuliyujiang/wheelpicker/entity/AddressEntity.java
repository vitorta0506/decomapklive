package com.github.gzuliyujiang.wheelpicker.entity;

import androidx.annotation.NonNull;
import java.io.Serializable;
import java.util.Objects;
import k1.b;
/* loaded from: classes.dex */
class AddressEntity implements b, Serializable {
    private String code;
    private String name;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AddressEntity addressEntity = (AddressEntity) obj;
        return Objects.equals(this.code, addressEntity.code) && Objects.equals(this.name, addressEntity.name);
    }

    public String getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    public int hashCode() {
        return Objects.hash(this.code, this.name);
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
        return this.name;
    }
}
