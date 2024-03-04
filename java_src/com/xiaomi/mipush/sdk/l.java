package com.xiaomi.mipush.sdk;

import com.xiaomi.push.service.module.PushChannelRegion;
/* loaded from: classes5.dex */
public class l {

    /* renamed from: d  reason: collision with root package name */
    private String f36252d;

    /* renamed from: a  reason: collision with root package name */
    private PushChannelRegion f36249a = PushChannelRegion.Global;

    /* renamed from: b  reason: collision with root package name */
    private boolean f36250b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36251c = false;

    /* renamed from: e  reason: collision with root package name */
    private boolean f36253e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f36254f = false;

    public String a() {
        return this.f36252d;
    }

    public boolean b() {
        return this.f36253e;
    }

    public boolean c() {
        return this.f36251c;
    }

    public boolean d() {
        return this.f36254f;
    }

    public boolean e() {
        return this.f36250b;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("PushConfiguration{");
        stringBuffer.append("Region:");
        PushChannelRegion pushChannelRegion = this.f36249a;
        stringBuffer.append(pushChannelRegion == null ? "null" : pushChannelRegion.name());
        stringBuffer.append(",mOpenHmsPush:" + this.f36250b);
        stringBuffer.append(",mOpenFCMPush:" + this.f36251c);
        stringBuffer.append(",mOpenCOSPush:" + this.f36253e);
        stringBuffer.append(",mOpenFTOSPush:" + this.f36254f);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
