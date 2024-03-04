package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.a2;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class k1 implements a2.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService.j f37289a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37290b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k1(XMPushService xMPushService, XMPushService.j jVar) {
        this.f37290b = xMPushService;
        this.f37289a = jVar;
    }

    @Override // com.xiaomi.push.service.a2.a
    public void a() {
        this.f37290b.a(this.f37289a);
    }
}
