package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.dq;
import com.xiaomi.push.service.XMPushService;
import java.util.Map;
/* loaded from: classes5.dex */
final class f2 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ XMPushService f37242b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ dq f37243c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f2(int i9, XMPushService xMPushService, dq dqVar) {
        super(i9);
        this.f37242b = xMPushService;
        this.f37243c = dqVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "send ack message for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        Map<String, String> map = null;
        try {
            if (sf.e.i(this.f37242b)) {
                try {
                    map = e.a(this.f37242b, this.f37243c);
                } catch (Throwable unused) {
                }
            }
            f.i(this.f37242b, e2.c(this.f37242b, this.f37243c, map));
        } catch (cd e10) {
            tf.c.o(e10);
            this.f37242b.a(10, e10);
        }
    }
}
