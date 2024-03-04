package oj;

import java.io.IOException;
/* loaded from: classes7.dex */
public class a0 {

    /* renamed from: a  reason: collision with root package name */
    boolean f55676a;

    /* renamed from: b  reason: collision with root package name */
    org.bouncycastle.asn1.o f55677b;

    /* renamed from: c  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55652c = new org.bouncycastle.asn1.n("2.5.29.9");

    /* renamed from: d  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55653d = new org.bouncycastle.asn1.n("2.5.29.14");

    /* renamed from: e  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55654e = new org.bouncycastle.asn1.n("2.5.29.15");

    /* renamed from: f  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55655f = new org.bouncycastle.asn1.n("2.5.29.16");

    /* renamed from: g  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55656g = new org.bouncycastle.asn1.n("2.5.29.17");

    /* renamed from: h  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55657h = new org.bouncycastle.asn1.n("2.5.29.18");

    /* renamed from: i  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55658i = new org.bouncycastle.asn1.n("2.5.29.19");

    /* renamed from: j  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55659j = new org.bouncycastle.asn1.n("2.5.29.20");

    /* renamed from: k  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55660k = new org.bouncycastle.asn1.n("2.5.29.21");

    /* renamed from: l  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55661l = new org.bouncycastle.asn1.n("2.5.29.23");

    /* renamed from: m  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55662m = new org.bouncycastle.asn1.n("2.5.29.24");

    /* renamed from: n  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55663n = new org.bouncycastle.asn1.n("2.5.29.27");

    /* renamed from: o  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55664o = new org.bouncycastle.asn1.n("2.5.29.28");

    /* renamed from: p  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55665p = new org.bouncycastle.asn1.n("2.5.29.29");

    /* renamed from: q  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55666q = new org.bouncycastle.asn1.n("2.5.29.30");

    /* renamed from: r  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55667r = new org.bouncycastle.asn1.n("2.5.29.31");

    /* renamed from: s  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55668s = new org.bouncycastle.asn1.n("2.5.29.32");

    /* renamed from: t  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55669t = new org.bouncycastle.asn1.n("2.5.29.33");

    /* renamed from: u  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55670u = new org.bouncycastle.asn1.n("2.5.29.35");

    /* renamed from: v  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55671v = new org.bouncycastle.asn1.n("2.5.29.36");

    /* renamed from: w  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55672w = new org.bouncycastle.asn1.n("2.5.29.37");

    /* renamed from: x  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55673x = new org.bouncycastle.asn1.n("2.5.29.46");

    /* renamed from: y  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55674y = new org.bouncycastle.asn1.n("2.5.29.54");

    /* renamed from: z  reason: collision with root package name */
    public static final org.bouncycastle.asn1.n f55675z = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.1.1");
    public static final org.bouncycastle.asn1.n A = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.1.11");
    public static final org.bouncycastle.asn1.n B = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.1.12");
    public static final org.bouncycastle.asn1.n C = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.1.2");
    public static final org.bouncycastle.asn1.n D = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.1.3");
    public static final org.bouncycastle.asn1.n E = new org.bouncycastle.asn1.n("1.3.6.1.5.5.7.1.4");
    public static final org.bouncycastle.asn1.n F = new org.bouncycastle.asn1.n("2.5.29.56");
    public static final org.bouncycastle.asn1.n G = new org.bouncycastle.asn1.n("2.5.29.55");

    public static org.bouncycastle.asn1.r a(a0 a0Var) throws IllegalArgumentException {
        try {
            return org.bouncycastle.asn1.r.G(a0Var.b().M());
        } catch (IOException e10) {
            throw new IllegalArgumentException("can't convert extension: " + e10);
        }
    }

    public org.bouncycastle.asn1.o b() {
        return this.f55677b;
    }

    public boolean c() {
        return this.f55676a;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a0) {
            a0 a0Var = (a0) obj;
            return a0Var.b().F(b()) && a0Var.c() == c();
        }
        return false;
    }

    public int hashCode() {
        return c() ? b().hashCode() : ~b().hashCode();
    }
}
