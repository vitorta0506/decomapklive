package com.google.common.math;
/* loaded from: classes2.dex */
public abstract class d {

    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final double f13593a;

        /* renamed from: b  reason: collision with root package name */
        private final double f13594b;

        public d a(double d10) {
            com.google.common.base.o.d(!Double.isNaN(d10));
            if (com.google.common.math.b.c(d10)) {
                return new C0124d(d10, this.f13594b - (this.f13593a * d10));
            }
            return new e(this.f13593a);
        }

        private b(double d10, double d11) {
            this.f13593a = d10;
            this.f13594b = d11;
        }
    }

    /* loaded from: classes2.dex */
    private static final class c extends d {

        /* renamed from: a  reason: collision with root package name */
        static final c f13595a = new c();

        private c() {
        }

        public String toString() {
            return "NaN";
        }
    }

    /* renamed from: com.google.common.math.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0124d extends d {

        /* renamed from: a  reason: collision with root package name */
        final double f13596a;

        /* renamed from: b  reason: collision with root package name */
        final double f13597b;

        /* renamed from: c  reason: collision with root package name */
        d f13598c = null;

        C0124d(double d10, double d11) {
            this.f13596a = d10;
            this.f13597b = d11;
        }

        public String toString() {
            return String.format("y = %g * x + %g", Double.valueOf(this.f13596a), Double.valueOf(this.f13597b));
        }
    }

    /* loaded from: classes2.dex */
    private static final class e extends d {

        /* renamed from: a  reason: collision with root package name */
        final double f13599a;

        /* renamed from: b  reason: collision with root package name */
        d f13600b = null;

        e(double d10) {
            this.f13599a = d10;
        }

        public String toString() {
            return String.format("x = %g", Double.valueOf(this.f13599a));
        }
    }

    public static d a() {
        return c.f13595a;
    }

    public static d b(double d10) {
        com.google.common.base.o.d(com.google.common.math.b.c(d10));
        return new C0124d(0.0d, d10);
    }

    public static b c(double d10, double d11) {
        com.google.common.base.o.d(com.google.common.math.b.c(d10) && com.google.common.math.b.c(d11));
        return new b(d10, d11);
    }

    public static d d(double d10) {
        com.google.common.base.o.d(com.google.common.math.b.c(d10));
        return new e(d10);
    }
}
