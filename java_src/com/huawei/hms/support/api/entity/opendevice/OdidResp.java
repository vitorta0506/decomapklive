package com.huawei.hms.support.api.entity.opendevice;

import com.huawei.hms.core.aidl.AbstractMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
/* loaded from: classes4.dex */
public class OdidResp extends AbstractMessageEntity {
    @Packed

    /* renamed from: id  reason: collision with root package name */
    public String f27810id;

    public String getId() {
        return this.f27810id;
    }

    public void setId(String str) {
        this.f27810id = str;
    }
}
