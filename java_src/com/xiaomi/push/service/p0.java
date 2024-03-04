package com.xiaomi.push.service;

import android.util.Base64;
import com.xiaomi.push.i3;
import com.xiaomi.push.service.o0;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class p0 extends i3.b {

    /* renamed from: a  reason: collision with root package name */
    boolean f37325a = false;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o0 f37326b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(o0 o0Var) {
        this.f37326b = o0Var;
    }

    @Override // com.xiaomi.push.i3.b
    public void b() {
        try {
            b.a(sf.j.b()).b();
            com.xiaomi.push.v n9 = com.xiaomi.push.v.n(Base64.decode(com.xiaomi.push.q.f(sf.j.b(), "https://resolver.msg.global.xiaomi.net/psc/?t=a", null), 10));
            if (n9 != null) {
                this.f37326b.f37323b = n9;
                this.f37325a = true;
                this.f37326b.o();
            }
        } catch (Exception e10) {
            tf.c.l("fetch config failure: " + e10.getMessage());
        }
    }

    @Override // com.xiaomi.push.i3.b
    public void c() {
        List list;
        List list2;
        o0.a[] aVarArr;
        com.xiaomi.push.v vVar;
        this.f37326b.f37324c = null;
        if (this.f37325a) {
            synchronized (this.f37326b) {
                list = this.f37326b.f37322a;
                list2 = this.f37326b.f37322a;
                aVarArr = (o0.a[]) list.toArray(new o0.a[list2.size()]);
            }
            for (o0.a aVar : aVarArr) {
                vVar = this.f37326b.f37323b;
                aVar.b(vVar);
            }
        }
    }
}
