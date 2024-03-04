package com.google.common.collect;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class m4<K, V> extends h4<K, V> {

    /* loaded from: classes2.dex */
    static final class a<K, V> extends b<K, V> {

        /* renamed from: d  reason: collision with root package name */
        private final transient m4<K, V> f13251d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(K k10, V v10, m4<K, V> m4Var, m4<K, V> m4Var2) {
            super(k10, v10, m4Var);
            this.f13251d = m4Var2;
        }

        @Override // com.google.common.collect.m4
        m4<K, V> e() {
            return this.f13251d;
        }
    }

    /* loaded from: classes2.dex */
    static class b<K, V> extends m4<K, V> {

        /* renamed from: c  reason: collision with root package name */
        private final transient m4<K, V> f13252c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(K k10, V v10, m4<K, V> m4Var) {
            super(k10, v10);
            this.f13252c = m4Var;
        }

        @Override // com.google.common.collect.m4
        final m4<K, V> b() {
            return this.f13252c;
        }

        @Override // com.google.common.collect.m4
        final boolean h() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4(K k10, V v10) {
        super(k10, v10);
        p2.a(k10, v10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> m4<K, V>[] a(int i9) {
        return new m4[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4<K, V> b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m4<K, V> e() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return true;
    }
}
