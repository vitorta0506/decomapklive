package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public abstract class k6<K0, V0> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends f<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f13193a;

        a(int i9) {
            this.f13193a = i9;
        }

        @Override // com.google.common.collect.k6.f
        <K, V> Map<K, Collection<V>> c() {
            return a7.e(this.f13193a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends f<K0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Comparator f13194a;

        b(Comparator comparator) {
            this.f13194a = comparator;
        }

        @Override // com.google.common.collect.k6.f
        <K extends K0, V> Map<K, Collection<V>> c() {
            return new TreeMap(this.f13194a);
        }
    }

    /* loaded from: classes2.dex */
    private static final class c<V> implements com.google.common.base.w<List<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f13195a;

        c(int i9) {
            this.f13195a = p2.b(i9, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public List<V> get() {
            return new ArrayList(this.f13195a);
        }
    }

    /* loaded from: classes2.dex */
    private static final class d<V> implements com.google.common.base.w<Set<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f13196a;

        d(int i9) {
            this.f13196a = p2.b(i9, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public Set<V> get() {
            return a7.f(this.f13196a);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class e<K0, V0> extends k6<K0, V0> {
        e() {
            super(null);
        }

        public abstract <K extends K0, V extends V0> x5<K, V> e();
    }

    /* loaded from: classes2.dex */
    public static abstract class f<K0> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends e<K0, Object> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f13197a;

            a(int i9) {
                this.f13197a = i9;
            }

            @Override // com.google.common.collect.k6.e
            public <K extends K0, V> x5<K, V> e() {
                return l6.b(f.this.c(), new c(this.f13197a));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class b extends g<K0, Object> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f13199a;

            b(int i9) {
                this.f13199a = i9;
            }

            @Override // com.google.common.collect.k6.g
            public <K extends K0, V> u7<K, V> e() {
                return l6.c(f.this.c(), new d(this.f13199a));
            }
        }

        f() {
        }

        public e<K0, Object> a() {
            return b(2);
        }

        public e<K0, Object> b(int i9) {
            p2.b(i9, "expectedValuesPerKey");
            return new a(i9);
        }

        abstract <K extends K0, V> Map<K, Collection<V>> c();

        public g<K0, Object> d() {
            return e(2);
        }

        public g<K0, Object> e(int i9) {
            p2.b(i9, "expectedValuesPerKey");
            return new b(i9);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class g<K0, V0> extends k6<K0, V0> {
        g() {
            super(null);
        }

        public abstract <K extends K0, V extends V0> u7<K, V> e();
    }

    private k6() {
    }

    /* synthetic */ k6(j6 j6Var) {
        this();
    }

    public static f<Object> a() {
        return b(8);
    }

    public static f<Object> b(int i9) {
        p2.b(i9, "expectedKeys");
        return new a(i9);
    }

    public static f<Comparable> c() {
        return d(y6.e());
    }

    public static <K0> f<K0> d(Comparator<K0> comparator) {
        com.google.common.base.o.s(comparator);
        return new b(comparator);
    }
}
