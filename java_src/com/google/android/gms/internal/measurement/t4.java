package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public final class t4 {

    /* renamed from: a  reason: collision with root package name */
    public final t4 f8334a;

    /* renamed from: b  reason: collision with root package name */
    final y f8335b;

    /* renamed from: c  reason: collision with root package name */
    final Map f8336c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    final Map f8337d = new HashMap();

    public t4(t4 t4Var, y yVar) {
        this.f8334a = t4Var;
        this.f8335b = yVar;
    }

    public final t4 a() {
        return new t4(this, this.f8335b);
    }

    public final q b(q qVar) {
        return this.f8335b.a(this, qVar);
    }

    public final q c(f fVar) {
        q qVar = q.U;
        Iterator G = fVar.G();
        while (G.hasNext()) {
            qVar = this.f8335b.a(this, fVar.B(((Integer) G.next()).intValue()));
            if (qVar instanceof h) {
                break;
            }
        }
        return qVar;
    }

    public final q d(String str) {
        if (this.f8336c.containsKey(str)) {
            return (q) this.f8336c.get(str);
        }
        t4 t4Var = this.f8334a;
        if (t4Var != null) {
            return t4Var.d(str);
        }
        throw new IllegalArgumentException(String.format("%s is not defined", str));
    }

    public final void e(String str, q qVar) {
        if (this.f8337d.containsKey(str)) {
            return;
        }
        if (qVar == null) {
            this.f8336c.remove(str);
        } else {
            this.f8336c.put(str, qVar);
        }
    }

    public final void f(String str, q qVar) {
        e(str, qVar);
        this.f8337d.put(str, Boolean.TRUE);
    }

    public final void g(String str, q qVar) {
        t4 t4Var;
        if (!this.f8336c.containsKey(str) && (t4Var = this.f8334a) != null && t4Var.h(str)) {
            this.f8334a.g(str, qVar);
        } else if (this.f8337d.containsKey(str)) {
        } else {
            if (qVar == null) {
                this.f8336c.remove(str);
            } else {
                this.f8336c.put(str, qVar);
            }
        }
    }

    public final boolean h(String str) {
        if (this.f8336c.containsKey(str)) {
            return true;
        }
        t4 t4Var = this.f8334a;
        if (t4Var != null) {
            return t4Var.h(str);
        }
        return false;
    }
}
