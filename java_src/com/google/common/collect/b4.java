package com.google.common.collect;

import com.facebook.internal.security.CertificateUtil;
import java.io.Serializable;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b4<T> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final Comparator<? super T> f12923a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f12924b;

    /* renamed from: c  reason: collision with root package name */
    private final T f12925c;

    /* renamed from: d  reason: collision with root package name */
    private final BoundType f12926d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f12927e;

    /* renamed from: f  reason: collision with root package name */
    private final T f12928f;

    /* renamed from: g  reason: collision with root package name */
    private final BoundType f12929g;

    private b4(Comparator<? super T> comparator, boolean z10, T t10, BoundType boundType, boolean z11, T t11, BoundType boundType2) {
        this.f12923a = (Comparator) com.google.common.base.o.s(comparator);
        this.f12924b = z10;
        this.f12927e = z11;
        this.f12925c = t10;
        this.f12926d = (BoundType) com.google.common.base.o.s(boundType);
        this.f12928f = t11;
        this.f12929g = (BoundType) com.google.common.base.o.s(boundType2);
        if (z10) {
            comparator.compare((Object) w6.a(t10), (Object) w6.a(t10));
        }
        if (z11) {
            comparator.compare((Object) w6.a(t11), (Object) w6.a(t11));
        }
        if (z10 && z11) {
            int compare = comparator.compare((Object) w6.a(t10), (Object) w6.a(t11));
            boolean z12 = true;
            com.google.common.base.o.n(compare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", t10, t11);
            if (compare == 0) {
                BoundType boundType3 = BoundType.OPEN;
                if (boundType == boundType3 && boundType2 == boundType3) {
                    z12 = false;
                }
                com.google.common.base.o.d(z12);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b4<T> a(Comparator<? super T> comparator) {
        BoundType boundType = BoundType.OPEN;
        return new b4<>(comparator, false, null, boundType, false, null, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b4<T> d(Comparator<? super T> comparator, T t10, BoundType boundType) {
        return new b4<>(comparator, true, t10, boundType, false, null, BoundType.OPEN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b4<T> n(Comparator<? super T> comparator, T t10, BoundType boundType) {
        return new b4<>(comparator, false, null, BoundType.OPEN, true, t10, boundType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Comparator<? super T> b() {
        return this.f12923a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(T t10) {
        return (m(t10) || l(t10)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BoundType e() {
        return this.f12926d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b4) {
            b4 b4Var = (b4) obj;
            return this.f12923a.equals(b4Var.f12923a) && this.f12924b == b4Var.f12924b && this.f12927e == b4Var.f12927e && e().equals(b4Var.e()) && g().equals(b4Var.g()) && com.google.common.base.l.a(f(), b4Var.f()) && com.google.common.base.l.a(h(), b4Var.h());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T f() {
        return this.f12925c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BoundType g() {
        return this.f12929g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T h() {
        return this.f12928f;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f12923a, f(), e(), h(), g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.f12924b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean j() {
        return this.f12927e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b4<T> k(b4<T> b4Var) {
        int compare;
        int compare2;
        T t10;
        BoundType boundType;
        BoundType boundType2;
        int compare3;
        BoundType boundType3;
        com.google.common.base.o.s(b4Var);
        com.google.common.base.o.d(this.f12923a.equals(b4Var.f12923a));
        boolean z10 = this.f12924b;
        T f10 = f();
        BoundType e10 = e();
        if (!i()) {
            z10 = b4Var.f12924b;
            f10 = b4Var.f();
            e10 = b4Var.e();
        } else if (b4Var.i() && ((compare = this.f12923a.compare(f(), b4Var.f())) < 0 || (compare == 0 && b4Var.e() == BoundType.OPEN))) {
            f10 = b4Var.f();
            e10 = b4Var.e();
        }
        boolean z11 = z10;
        boolean z12 = this.f12927e;
        T h10 = h();
        BoundType g10 = g();
        if (!j()) {
            z12 = b4Var.f12927e;
            h10 = b4Var.h();
            g10 = b4Var.g();
        } else if (b4Var.j() && ((compare2 = this.f12923a.compare(h(), b4Var.h())) > 0 || (compare2 == 0 && b4Var.g() == BoundType.OPEN))) {
            h10 = b4Var.h();
            g10 = b4Var.g();
        }
        boolean z13 = z12;
        T t11 = h10;
        if (z11 && z13 && ((compare3 = this.f12923a.compare(f10, t11)) > 0 || (compare3 == 0 && e10 == (boundType3 = BoundType.OPEN) && g10 == boundType3))) {
            boundType = BoundType.OPEN;
            boundType2 = BoundType.CLOSED;
            t10 = t11;
        } else {
            t10 = f10;
            boundType = e10;
            boundType2 = g10;
        }
        return new b4<>(this.f12923a, z11, t10, boundType, z13, t11, boundType2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean l(T t10) {
        if (j()) {
            int compare = this.f12923a.compare(t10, w6.a(h()));
            return ((compare == 0) & (g() == BoundType.OPEN)) | (compare > 0);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m(T t10) {
        if (i()) {
            int compare = this.f12923a.compare(t10, w6.a(f()));
            return ((compare == 0) & (e() == BoundType.OPEN)) | (compare < 0);
        }
        return false;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f12923a);
        BoundType boundType = this.f12926d;
        BoundType boundType2 = BoundType.CLOSED;
        char c10 = boundType == boundType2 ? '[' : '(';
        String valueOf2 = String.valueOf(this.f12924b ? this.f12925c : "-∞");
        String valueOf3 = String.valueOf(this.f12927e ? this.f12928f : "∞");
        char c11 = this.f12929g == boundType2 ? ']' : ')';
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 4 + valueOf2.length() + valueOf3.length());
        sb2.append(valueOf);
        sb2.append(CertificateUtil.DELIMITER);
        sb2.append(c10);
        sb2.append(valueOf2);
        sb2.append(',');
        sb2.append(valueOf3);
        sb2.append(c11);
        return sb2.toString();
    }
}
