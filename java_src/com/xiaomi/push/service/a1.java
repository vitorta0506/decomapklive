package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
/* loaded from: classes5.dex */
class a1 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37135b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a1(XMPushService xMPushService, int i9) {
        super(i9);
        this.f37135b = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "disconnect for service destroy.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        if (this.f37135b.f334a != null) {
            this.f37135b.f334a.s(15, null);
            this.f37135b.f334a = null;
        }
    }
}
