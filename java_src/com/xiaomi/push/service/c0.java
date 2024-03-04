package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.az;
/* loaded from: classes5.dex */
class c0 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ az.b.c f37196b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(az.b.c cVar, int i9) {
        super(i9);
        this.f37196b = cVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "clear peer job";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        az.b.c cVar = this.f37196b;
        if (cVar.f37169b == cVar.f37168a.f37158r) {
            tf.c.s("clean peer, chid = " + this.f37196b.f37168a.f37148h);
            this.f37196b.f37168a.f37158r = null;
        }
    }
}
