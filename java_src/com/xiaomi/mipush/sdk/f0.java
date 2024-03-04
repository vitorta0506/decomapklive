package com.xiaomi.mipush.sdk;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class f0 implements a {

    /* renamed from: e  reason: collision with root package name */
    private static volatile f0 f36224e;

    /* renamed from: a  reason: collision with root package name */
    private Context f36225a;

    /* renamed from: b  reason: collision with root package name */
    private l f36226b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f36227c = false;

    /* renamed from: d  reason: collision with root package name */
    private Map<c, a> f36228d = new HashMap();

    private f0(Context context) {
        this.f36225a = context.getApplicationContext();
    }

    public static f0 e(Context context) {
        if (f36224e == null) {
            synchronized (f0.class) {
                if (f36224e == null) {
                    f36224e = new f0(context);
                }
            }
        }
        return f36224e;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f() {
        /*
            Method dump skipped, instructions count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.mipush.sdk.f0.f():void");
    }

    @Override // com.xiaomi.mipush.sdk.a
    public void a() {
        tf.c.l("ASSEMBLE_PUSH : assemble push unregister");
        for (a aVar : this.f36228d.values()) {
            if (aVar != null) {
                aVar.a();
            }
        }
        this.f36228d.clear();
    }

    @Override // com.xiaomi.mipush.sdk.a
    public void b() {
        tf.c.l("ASSEMBLE_PUSH : assemble push register");
        if (this.f36228d.size() <= 0) {
            f();
        }
        if (this.f36228d.size() > 0) {
            for (a aVar : this.f36228d.values()) {
                if (aVar != null) {
                    aVar.b();
                }
            }
            i0.f(this.f36225a);
        }
    }

    public a d(c cVar) {
        return this.f36228d.get(cVar);
    }

    public void g(l lVar) {
        this.f36226b = lVar;
        this.f36227c = true;
        if (lVar.e() || this.f36226b.c() || this.f36226b.b() || this.f36226b.d()) {
            com.xiaomi.push.service.u.c(this.f36225a).h(new g0(this, 101, "assemblePush"));
        }
    }

    public void h(c cVar) {
        this.f36228d.remove(cVar);
    }

    public void i(c cVar, a aVar) {
        if (aVar != null) {
            if (this.f36228d.containsKey(cVar)) {
                this.f36228d.remove(cVar);
            }
            this.f36228d.put(cVar, aVar);
        }
    }

    public boolean j(c cVar) {
        return this.f36228d.containsKey(cVar);
    }

    public boolean m(c cVar) {
        int i9 = h0.f36233a[cVar.ordinal()];
        boolean z10 = false;
        if (i9 == 1) {
            l lVar = this.f36226b;
            if (lVar != null) {
                return lVar.e();
            }
            return false;
        } else if (i9 == 2) {
            l lVar2 = this.f36226b;
            if (lVar2 != null) {
                return lVar2.c();
            }
            return false;
        } else {
            if (i9 == 3) {
                l lVar3 = this.f36226b;
                if (lVar3 != null) {
                    z10 = lVar3.b();
                }
            } else if (i9 != 4) {
                return false;
            }
            l lVar4 = this.f36226b;
            return lVar4 != null ? lVar4.d() : z10;
        }
    }
}
