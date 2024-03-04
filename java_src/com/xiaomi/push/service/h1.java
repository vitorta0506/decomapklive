package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.az;
/* loaded from: classes5.dex */
class h1 implements az.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f37255a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h1(XMPushService xMPushService) {
        this.f37255a = xMPushService;
    }

    @Override // com.xiaomi.push.service.az.a
    public void a() {
        this.f37255a.e();
        if (az.c().a() <= 0) {
            XMPushService xMPushService = this.f37255a;
            xMPushService.a(new XMPushService.g(12, null));
        }
    }
}
