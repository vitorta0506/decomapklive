package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.service.XMPushService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class m0 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    private XMPushService f37301b;

    /* renamed from: c  reason: collision with root package name */
    private com.xiaomi.push.r0 f37302c;

    public m0(XMPushService xMPushService, com.xiaomi.push.r0 r0Var) {
        super(4);
        this.f37301b = xMPushService;
        this.f37302c = r0Var;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send a message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        try {
            com.xiaomi.push.r0 r0Var = this.f37302c;
            if (r0Var != null) {
                this.f37301b.a(r0Var);
            }
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37301b.a(10, e10);
        }
    }
}
