package com.xiaomi.push.service;

import com.xiaomi.push.cd;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.az;
import java.util.Collection;
/* loaded from: classes5.dex */
public class c2 extends XMPushService.j {

    /* renamed from: b  reason: collision with root package name */
    private XMPushService f37198b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f37199c;

    /* renamed from: d  reason: collision with root package name */
    private String f37200d;

    /* renamed from: e  reason: collision with root package name */
    private String f37201e;

    /* renamed from: f  reason: collision with root package name */
    private String f37202f;

    public c2(XMPushService xMPushService, String str, String str2, String str3, byte[] bArr) {
        super(9);
        this.f37198b = xMPushService;
        this.f37200d = str;
        this.f37199c = bArr;
        this.f37201e = str2;
        this.f37202f = str3;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public String b() {
        return "register app";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    public void c() {
        az.b next;
        z1 b10 = a2.b(this.f37198b);
        if (b10 == null) {
            try {
                b10 = a2.c(this.f37198b, this.f37200d, this.f37201e, this.f37202f);
            } catch (Exception e10) {
                tf.c.u("fail to register push account. " + e10);
            }
        }
        if (b10 == null) {
            tf.c.u("no account for registration.");
            d2.a(this.f37198b, 70000002, "no account.");
            return;
        }
        tf.c.l("do registration now.");
        Collection<az.b> f10 = az.c().f("5");
        if (f10.isEmpty()) {
            next = b10.a(this.f37198b);
            f.j(this.f37198b, next);
            az.c().l(next);
        } else {
            next = f10.iterator().next();
        }
        if (!this.f37198b.m1542d()) {
            d2.d(this.f37200d, this.f37199c);
            this.f37198b.a(true);
            return;
        }
        try {
            az.c cVar = next.f37153m;
            if (cVar == az.c.binded) {
                f.k(this.f37198b, this.f37200d, this.f37199c);
            } else if (cVar == az.c.unbind) {
                d2.d(this.f37200d, this.f37199c);
                XMPushService xMPushService = this.f37198b;
                xMPushService.getClass();
                xMPushService.a(new XMPushService.b(next));
            }
        } catch (cd e11) {
            tf.c.u("meet error, disconnect connection. " + e11);
            this.f37198b.a(10, e11);
        }
    }
}
