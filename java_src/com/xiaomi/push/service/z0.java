package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.service.XMPushService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class z0 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f37423b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ byte[] f37424c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ XMPushService f37425d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z0(XMPushService xMPushService, int i9, String str, byte[] bArr) {
        super(i9);
        this.f37425d = xMPushService;
        this.f37423b = str;
        this.f37424c = bArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send mi push message";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            f.k(this.f37425d, this.f37423b, this.f37424c);
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37425d.a(10, e10);
        }
    }
}
