package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.cz;
import com.xiaomi.push.df;
import com.xiaomi.push.dm;
import com.xiaomi.push.dq;
import com.xiaomi.push.dt;
import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
final class d extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ dt f37203b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ dq f37204c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ XMPushService f37205d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(int i9, dt dtVar, dq dqVar, XMPushService xMPushService) {
        super(i9);
        this.f37203b = dtVar;
        this.f37204c = dqVar;
        this.f37205d = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send ack message for clear push message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            dm dmVar = new dm();
            dmVar.c(df.CancelPushMessageACK.f42a);
            dmVar.a(this.f37203b.m1470a());
            dmVar.a(this.f37203b.a());
            dmVar.b(this.f37203b.b());
            dmVar.e(this.f37203b.c());
            dmVar.a(0L);
            dmVar.d("success clear push message.");
            f.i(this.f37205d, f.m(this.f37204c.b(), this.f37204c.m1456a(), dmVar, cz.Notification));
        } catch (cd e10) {
            tf.c.u("clear push message. " + e10);
            this.f37205d.a(10, e10);
        }
    }
}
