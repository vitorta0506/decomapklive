package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.dq;
import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
final class i2 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37274b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ dq f37275c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f37276d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i2(int i9, XMPushService xMPushService, dq dqVar, String str) {
        super(i9);
        this.f37274b = xMPushService;
        this.f37275c = dqVar;
        this.f37276d = str;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send app absent ack message for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            dq b10 = e2.b(this.f37274b, this.f37275c);
            b10.m1455a().a("absent_target_package", this.f37276d);
            f.i(this.f37274b, b10);
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37274b.a(10, e10);
        }
    }
}
