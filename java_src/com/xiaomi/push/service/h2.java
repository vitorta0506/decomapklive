package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.dq;
import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
final class h2 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37256b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ dq f37257c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h2(int i9, XMPushService xMPushService, dq dqVar) {
        super(i9);
        this.f37256b = xMPushService;
        this.f37257c = dqVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send ack message for unrecognized new miui message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            dq b10 = e2.b(this.f37256b, this.f37257c);
            b10.m1455a().a("miui_message_unrecognized", "1");
            f.i(this.f37256b, b10);
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37256b.a(10, e10);
        }
    }
}
