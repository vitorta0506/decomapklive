package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.dq;
import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
final class g2 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37250b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ dq f37251c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g2(int i9, XMPushService xMPushService, dq dqVar) {
        super(i9);
        this.f37250b = xMPushService;
        this.f37251c = dqVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send ack message for obsleted message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            dq b10 = e2.b(this.f37250b, this.f37251c);
            b10.m1455a().a("message_obsleted", "1");
            f.i(this.f37250b, b10);
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37250b.a(10, e10);
        }
    }
}
