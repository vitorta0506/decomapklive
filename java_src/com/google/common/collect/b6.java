package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.base.j;
import com.google.common.collect.c6;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2.dex */
public final class b6 {

    /* renamed from: a  reason: collision with root package name */
    boolean f12931a;

    /* renamed from: b  reason: collision with root package name */
    int f12932b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f12933c = -1;

    /* renamed from: d  reason: collision with root package name */
    c6.p f12934d;

    /* renamed from: e  reason: collision with root package name */
    c6.p f12935e;

    /* renamed from: f  reason: collision with root package name */
    Equivalence<Object> f12936f;

    public b6 a(int i9) {
        int i10 = this.f12933c;
        com.google.common.base.o.B(i10 == -1, "concurrency level was already set to %s", i10);
        com.google.common.base.o.d(i9 > 0);
        this.f12933c = i9;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int i9 = this.f12933c;
        if (i9 == -1) {
            return 4;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        int i9 = this.f12932b;
        if (i9 == -1) {
            return 16;
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> d() {
        return (Equivalence) com.google.common.base.j.a(this.f12936f, e().b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c6.p e() {
        return (c6.p) com.google.common.base.j.a(this.f12934d, c6.p.f12996a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c6.p f() {
        return (c6.p) com.google.common.base.j.a(this.f12935e, c6.p.f12996a);
    }

    public b6 g(int i9) {
        int i10 = this.f12932b;
        com.google.common.base.o.B(i10 == -1, "initial capacity was already set to %s", i10);
        com.google.common.base.o.d(i9 >= 0);
        this.f12932b = i9;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6 h(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f12936f;
        com.google.common.base.o.D(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f12936f = (Equivalence) com.google.common.base.o.s(equivalence);
        this.f12931a = true;
        return this;
    }

    public <K, V> ConcurrentMap<K, V> i() {
        if (!this.f12931a) {
            return new ConcurrentHashMap(c(), 0.75f, b());
        }
        return c6.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6 j(c6.p pVar) {
        c6.p pVar2 = this.f12934d;
        com.google.common.base.o.D(pVar2 == null, "Key strength was already set to %s", pVar2);
        this.f12934d = (c6.p) com.google.common.base.o.s(pVar);
        if (pVar != c6.p.f12996a) {
            this.f12931a = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b6 k(c6.p pVar) {
        c6.p pVar2 = this.f12935e;
        com.google.common.base.o.D(pVar2 == null, "Value strength was already set to %s", pVar2);
        this.f12935e = (c6.p) com.google.common.base.o.s(pVar);
        if (pVar != c6.p.f12996a) {
            this.f12931a = true;
        }
        return this;
    }

    public b6 l() {
        return j(c6.p.f12997b);
    }

    public String toString() {
        j.b c10 = com.google.common.base.j.c(this);
        int i9 = this.f12932b;
        if (i9 != -1) {
            c10.b("initialCapacity", i9);
        }
        int i10 = this.f12933c;
        if (i10 != -1) {
            c10.b("concurrencyLevel", i10);
        }
        c6.p pVar = this.f12934d;
        if (pVar != null) {
            c10.d("keyStrength", com.google.common.base.c.f(pVar.toString()));
        }
        c6.p pVar2 = this.f12935e;
        if (pVar2 != null) {
            c10.d("valueStrength", com.google.common.base.c.f(pVar2.toString()));
        }
        if (this.f12936f != null) {
            c10.k("keyEquivalence");
        }
        return c10.toString();
    }
}
