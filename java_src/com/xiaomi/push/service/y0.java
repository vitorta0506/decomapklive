package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
class y0 implements com.xiaomi.push.g1 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f37421a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y0(XMPushService xMPushService) {
        this.f37421a = xMPushService;
    }

    @Override // com.xiaomi.push.g1
    public void a(com.xiaomi.push.r1 r1Var) {
        XMPushService xMPushService = this.f37421a;
        xMPushService.a(new XMPushService.m(r1Var));
    }

    @Override // com.xiaomi.push.g1
    public void b(com.xiaomi.push.r0 r0Var) {
        XMPushService xMPushService = this.f37421a;
        xMPushService.a(new XMPushService.d(r0Var));
    }
}
