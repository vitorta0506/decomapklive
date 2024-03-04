package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
class j1 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f36931b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f36932c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ i1 f36933d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j1(i1 i1Var, int i9, long j10, long j11) {
        super(i9);
        this.f36933d = i1Var;
        this.f36931b = j10;
        this.f36932c = j11;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "check the ping-pong." + this.f36932c;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        Thread.yield();
        if (!this.f36933d.z() || this.f36933d.p(this.f36931b)) {
            return;
        }
        com.xiaomi.push.service.w1.c(this.f36933d.f36916x).m();
        this.f36933d.f36916x.a(22, (Exception) null);
    }
}
