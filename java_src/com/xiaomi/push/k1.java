package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
class k1 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f36943b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Exception f36944c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ i1 f36945d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k1(i1 i1Var, int i9, int i10, Exception exc) {
        super(i9);
        this.f36945d = i1Var;
        this.f36943b = i10;
        this.f36944c = exc;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "shutdown the connection. " + this.f36943b + ", " + this.f36944c;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        this.f36945d.f36916x.a(this.f36943b, this.f36944c);
    }
}
