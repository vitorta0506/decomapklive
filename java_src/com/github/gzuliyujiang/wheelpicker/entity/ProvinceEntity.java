package com.github.gzuliyujiang.wheelpicker.entity;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ProvinceEntity extends AddressEntity {
    private List<CityEntity> cityList;

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @NonNull
    public List<CityEntity> getCityList() {
        if (this.cityList == null) {
            this.cityList = new ArrayList();
        }
        return this.cityList;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ String getCode() {
        return super.getCode();
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ String getName() {
        return super.getName();
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity, k1.b
    public /* bridge */ /* synthetic */ String provideText() {
        return super.provideText();
    }

    public void setCityList(List<CityEntity> list) {
        this.cityList = list;
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ void setCode(String str) {
        super.setCode(str);
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ void setName(String str) {
        super.setName(str);
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    @NonNull
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
