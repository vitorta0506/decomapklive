package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.az;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class b0 implements az.b.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ az.b f37184a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(az.b bVar) {
        this.f37184a = bVar;
    }

    @Override // com.xiaomi.push.service.az.b.a
    public void a(az.c cVar, az.c cVar2, int i9) {
        XMPushService.c cVar3;
        XMPushService.c cVar4;
        if (cVar2 == az.c.binding) {
            XMPushService xMPushService = this.f37184a.f37156p;
            cVar4 = this.f37184a.f37160t;
            xMPushService.a(cVar4, 60000L);
            return;
        }
        XMPushService xMPushService2 = this.f37184a.f37156p;
        cVar3 = this.f37184a.f37160t;
        xMPushService2.b(cVar3);
    }
}
