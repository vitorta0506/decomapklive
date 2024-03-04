package com.huawei.hms.support.api.entity.opendevice;

import android.app.PendingIntent;
import com.huawei.hms.core.aidl.AbstractMessageEntity;
import com.huawei.hms.core.aidl.annotation.Packed;
/* loaded from: classes4.dex */
public class OaidResp extends AbstractMessageEntity {
    @Packed

    /* renamed from: id  reason: collision with root package name */
    public String f27809id;
    @Packed
    public boolean isTrackLimited;
    @Packed
    public PendingIntent settingIntent;

    public String getId() {
        return this.f27809id;
    }

    public PendingIntent getSettingIntent() {
        return this.settingIntent;
    }

    public boolean isTrackLimited() {
        return this.isTrackLimited;
    }

    public void setId(String str) {
        this.f27809id = str;
    }

    public void setSettingIntent(PendingIntent pendingIntent) {
        this.settingIntent = pendingIntent;
    }

    public void setTrackLimited(boolean z10) {
        this.isTrackLimited = z10;
    }
}
