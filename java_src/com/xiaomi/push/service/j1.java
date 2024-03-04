package com.xiaomi.push.service;

import com.xiaomi.push.p3;
import com.xiaomi.push.service.XMPushService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class j1 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37286b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j1(XMPushService xMPushService, int i9) {
        super(i9);
        this.f37286b = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "prepare the mi push account.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        f.h(this.f37286b);
        if (p3.m(this.f37286b)) {
            this.f37286b.a(true);
        }
    }
}
