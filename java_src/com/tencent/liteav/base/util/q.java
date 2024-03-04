package com.tencent.liteav.base.util;
/* loaded from: classes4.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public int f31029a;

    /* renamed from: b  reason: collision with root package name */
    public int f31030b;

    public q() {
        this(0, 0);
    }

    public final void a() {
        int i9 = this.f31029a;
        this.f31029a = this.f31030b;
        this.f31030b = i9;
    }

    public final int b() {
        if (d()) {
            return this.f31029a * this.f31030b;
        }
        return 0;
    }

    public final double c() {
        return (this.f31029a * 1.0d) / this.f31030b;
    }

    public final boolean d() {
        return this.f31029a > 0 && this.f31030b > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            return qVar.f31029a == this.f31029a && qVar.f31030b == this.f31030b;
        }
        return false;
    }

    public final int hashCode() {
        return (this.f31029a * 32713) + this.f31030b;
    }

    public final String toString() {
        return "Size(" + this.f31029a + ", " + this.f31030b + ")";
    }

    public q(int i9, int i10) {
        this.f31029a = i9;
        this.f31030b = i10;
    }

    public final void a(q qVar) {
        if (qVar != null) {
            this.f31029a = qVar.f31029a;
            this.f31030b = qVar.f31030b;
            return;
        }
        this.f31029a = 0;
        this.f31030b = 0;
    }

    public q(q qVar) {
        a(qVar);
    }

    public final void a(int i9, int i10) {
        this.f31029a = i9;
        this.f31030b = i10;
    }
}
