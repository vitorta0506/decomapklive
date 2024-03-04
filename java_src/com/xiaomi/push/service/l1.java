package com.xiaomi.push.service;

import com.xiaomi.push.a3;
import com.xiaomi.push.service.XMPushService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class l1 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f37296b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ boolean f37297c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ String f37298d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ byte[] f37299e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ XMPushService f37300f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l1(XMPushService xMPushService, int i9, int i10, boolean z10, String str, byte[] bArr) {
        super(i9);
        this.f37300f = xMPushService;
        this.f37296b = i10;
        this.f37297c = z10;
        this.f37298d = str;
        this.f37299e = bArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "clear account cache.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        com.xiaomi.push.d1 d1Var;
        a2.f(this.f37300f);
        az.c().m("5");
        a3.b(this.f37296b);
        if (this.f37297c) {
            this.f37300f.m1536a();
        }
        d1Var = this.f37300f.f335a;
        d1Var.l(com.xiaomi.push.d1.b());
        tf.c.l("clear account and start registration. " + this.f37298d);
        this.f37300f.a(this.f37299e, this.f37298d);
    }
}
