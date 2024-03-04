package com.xiaomi.push.service;

import com.xiaomi.push.service.az;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class h implements az.b.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f37252a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(XMPushService xMPushService) {
        this.f37252a = xMPushService;
    }

    @Override // com.xiaomi.push.service.az.b.a
    public void a(az.c cVar, az.c cVar2, int i9) {
        if (cVar2 == az.c.binded) {
            d2.c(this.f37252a);
            d2.e(this.f37252a);
        } else if (cVar2 == az.c.unbind) {
            tf.c.l("onChange unbind");
            d2.a(this.f37252a, 70000001, " the push is not connected.");
        }
    }
}
