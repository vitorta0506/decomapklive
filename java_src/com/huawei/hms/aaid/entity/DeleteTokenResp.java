package com.huawei.hms.aaid.entity;

import com.huawei.hms.core.aidl.IMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
/* loaded from: classes4.dex */
public class DeleteTokenResp implements IMessageEntity {
    @Packed
    public int retCode = 0;

    public int getRetCode() {
        return this.retCode;
    }

    public void setRetCode(int i9) {
        this.retCode = i9;
    }
}
