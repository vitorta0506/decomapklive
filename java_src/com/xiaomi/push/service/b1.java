package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.service.XMPushService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class b1 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    private XMPushService f37185b;

    /* renamed from: c  reason: collision with root package name */
    private com.xiaomi.push.r0[] f37186c;

    public b1(XMPushService xMPushService, com.xiaomi.push.r0[] r0VarArr) {
        super(4);
        this.f37185b = xMPushService;
        this.f37186c = r0VarArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "batch send message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            com.xiaomi.push.r0[] r0VarArr = this.f37186c;
            if (r0VarArr != null) {
                this.f37185b.a(r0VarArr);
            }
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37185b.a(10, e10);
        }
    }
}
