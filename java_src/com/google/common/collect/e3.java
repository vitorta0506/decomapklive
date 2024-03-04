package com.google.common.collect;

import java.util.Comparator;
/* loaded from: classes2.dex */
public abstract class e3 {

    /* renamed from: a  reason: collision with root package name */
    private static final e3 f13041a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final e3 f13042b = new b(-1);

    /* renamed from: c  reason: collision with root package name */
    private static final e3 f13043c = new b(1);

    /* loaded from: classes2.dex */
    class a extends e3 {
        a() {
            super(null);
        }

        @Override // com.google.common.collect.e3
        public e3 d(int i9, int i10) {
            return l(com.google.common.primitives.f.e(i9, i10));
        }

        @Override // com.google.common.collect.e3
        public e3 e(long j10, long j11) {
            return l(com.google.common.primitives.h.c(j10, j11));
        }

        @Override // com.google.common.collect.e3
        public e3 f(Comparable<?> comparable, Comparable<?> comparable2) {
            return l(comparable.compareTo(comparable2));
        }

        @Override // com.google.common.collect.e3
        public <T> e3 g(T t10, T t11, Comparator<T> comparator) {
            return l(comparator.compare(t10, t11));
        }

        @Override // com.google.common.collect.e3
        public e3 h(boolean z10, boolean z11) {
            return l(com.google.common.primitives.a.a(z10, z11));
        }

        @Override // com.google.common.collect.e3
        public e3 i(boolean z10, boolean z11) {
            return l(com.google.common.primitives.a.a(z11, z10));
        }

        @Override // com.google.common.collect.e3
        public int j() {
            return 0;
        }

        e3 l(int i9) {
            return i9 < 0 ? e3.f13042b : i9 > 0 ? e3.f13043c : e3.f13041a;
        }
    }

    /* loaded from: classes2.dex */
    private static final class b extends e3 {

        /* renamed from: d  reason: collision with root package name */
        final int f13044d;

        b(int i9) {
            super(null);
            this.f13044d = i9;
        }

        @Override // com.google.common.collect.e3
        public e3 d(int i9, int i10) {
            return this;
        }

        @Override // com.google.common.collect.e3
        public e3 e(long j10, long j11) {
            return this;
        }

        @Override // com.google.common.collect.e3
        public e3 f(Comparable<?> comparable, Comparable<?> comparable2) {
            return this;
        }

        @Override // com.google.common.collect.e3
        public <T> e3 g(T t10, T t11, Comparator<T> comparator) {
            return this;
        }

        @Override // com.google.common.collect.e3
        public e3 h(boolean z10, boolean z11) {
            return this;
        }

        @Override // com.google.common.collect.e3
        public e3 i(boolean z10, boolean z11) {
            return this;
        }

        @Override // com.google.common.collect.e3
        public int j() {
            return this.f13044d;
        }
    }

    private e3() {
    }

    /* synthetic */ e3(a aVar) {
        this();
    }

    public static e3 k() {
        return f13041a;
    }

    public abstract e3 d(int i9, int i10);

    public abstract e3 e(long j10, long j11);

    public abstract e3 f(Comparable<?> comparable, Comparable<?> comparable2);

    public abstract <T> e3 g(T t10, T t11, Comparator<T> comparator);

    public abstract e3 h(boolean z10, boolean z11);

    public abstract e3 i(boolean z10, boolean z11);

    public abstract int j();
}
