package com.github.gzuliyujiang.wheelpicker.entity;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class CityEntity extends AddressEntity {
    private List<CountyEntity> countyList;

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ String getCode() {
        return super.getCode();
    }

    @NonNull
    public List<CountyEntity> getCountyList() {
        if (this.countyList == null) {
            this.countyList = new ArrayList();
        }
        return this.countyList;
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

    @Override // com.github.gzuliyujiang.wheelpicker.entity.AddressEntity
    public /* bridge */ /* synthetic */ void setCode(String str) {
        super.setCode(str);
    }

    public void setCountyList(List<CountyEntity> list) {
        this.countyList = list;
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
