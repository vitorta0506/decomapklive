package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.dq;
import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
final class c extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37192b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ dq f37193c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f37194d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ String f37195e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(int i9, XMPushService xMPushService, dq dqVar, String str, String str2) {
        super(i9);
        this.f37192b = xMPushService;
        this.f37193c = dqVar;
        this.f37194d = str;
        this.f37195e = str2;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send wrong message ack for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            dq b10 = e2.b(this.f37192b, this.f37193c);
            b10.f161a.a("error", this.f37194d);
            b10.f161a.a("reason", this.f37195e);
            f.i(this.f37192b, b10);
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37192b.a(10, e10);
        }
    }
}
