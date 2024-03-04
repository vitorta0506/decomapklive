package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.az;
/* loaded from: classes5.dex */
class d0 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ az.b.c f37206b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(az.b.c cVar, int i9) {
        super(i9);
        this.f37206b = cVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "check peer job";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        az c10 = az.c();
        az.b bVar = this.f37206b.f37168a;
        if (c10.b(bVar.f37148h, bVar.f37142b).f37158r == null) {
            XMPushService xMPushService = az.b.this.f37156p;
            az.b bVar2 = this.f37206b.f37168a;
            xMPushService.a(bVar2.f37148h, bVar2.f37142b, 2, null, null);
        }
    }
}
