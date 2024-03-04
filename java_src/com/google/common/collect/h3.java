package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.q8;
import java.lang.reflect.Array;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h3<R, C, V> extends q7<R, C, V> {

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<R, Integer> f13092a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableMap<C, Integer> f13093b;

    /* renamed from: c  reason: collision with root package name */
    private final ImmutableMap<R, ImmutableMap<C, V>> f13094c;

    /* renamed from: d  reason: collision with root package name */
    private final ImmutableMap<C, ImmutableMap<R, V>> f13095d;

    /* renamed from: e  reason: collision with root package name */
    private final int[] f13096e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f13097f;

    /* renamed from: g  reason: collision with root package name */
    private final V[][] f13098g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f13099h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f13100i;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class b extends d<R, V> {

        /* renamed from: b  reason: collision with root package name */
        private final int f13101b;

        b(int i9) {
            super(h3.this.f13097f[i9]);
            this.f13101b = i9;
        }

        @Override // com.google.common.collect.h3.d
        V c(int i9) {
            return (V) h3.this.f13098g[i9][this.f13101b];
        }

        @Override // com.google.common.collect.h3.d
        ImmutableMap<R, Integer> e() {
            return h3.this.f13092a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    private final class c extends d<C, ImmutableMap<R, V>> {
        @Override // com.google.common.collect.h3.d
        ImmutableMap<C, Integer> e() {
            return h3.this.f13093b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.h3.d
        /* renamed from: f */
        public ImmutableMap<R, V> c(int i9) {
            return new b(i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return false;
        }

        private c() {
            super(h3.this.f13097f.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class d<K, V> extends ImmutableMap.c<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final int f13104a;

        /* loaded from: classes2.dex */
        class a extends com.google.common.collect.c<Map.Entry<K, V>> {

            /* renamed from: c  reason: collision with root package name */
            private int f13105c = -1;

            /* renamed from: d  reason: collision with root package name */
            private final int f13106d;

            a() {
                this.f13106d = d.this.e().size();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.c
            /* renamed from: d */
            public Map.Entry<K, V> a() {
                int i9 = this.f13105c;
                while (true) {
                    this.f13105c = i9 + 1;
                    int i10 = this.f13105c;
                    if (i10 < this.f13106d) {
                        Object c10 = d.this.c(i10);
                        if (c10 != null) {
                            return d6.g(d.this.b(this.f13105c), c10);
                        }
                        i9 = this.f13105c;
                    } else {
                        return b();
                    }
                }
            }
        }

        d(int i9) {
            this.f13104a = i9;
        }

        private boolean d() {
            return this.f13104a == e().size();
        }

        @Override // com.google.common.collect.ImmutableMap.c
        e9<Map.Entry<K, V>> a() {
            return new a();
        }

        K b(int i9) {
            return e().keySet().asList().get(i9);
        }

        abstract V c(int i9);

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.c, com.google.common.collect.ImmutableMap
        public ImmutableSet<K> createKeySet() {
            return d() ? e().keySet() : super.createKeySet();
        }

        abstract ImmutableMap<K, Integer> e();

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public V get(Object obj) {
            Integer num = e().get(obj);
            if (num == null) {
                return null;
            }
            return c(num.intValue());
        }

        @Override // java.util.Map
        public int size() {
            return this.f13104a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class e extends d<C, V> {

        /* renamed from: b  reason: collision with root package name */
        private final int f13108b;

        e(int i9) {
            super(h3.this.f13096e[i9]);
            this.f13108b = i9;
        }

        @Override // com.google.common.collect.h3.d
        V c(int i9) {
            return (V) h3.this.f13098g[this.f13108b][i9];
        }

        @Override // com.google.common.collect.h3.d
        ImmutableMap<C, Integer> e() {
            return h3.this.f13093b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    private final class f extends d<R, ImmutableMap<C, V>> {
        @Override // com.google.common.collect.h3.d
        ImmutableMap<R, Integer> e() {
            return h3.this.f13092a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.h3.d
        /* renamed from: f */
        public ImmutableMap<C, V> c(int i9) {
            return new e(i9);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap
        public boolean isPartialView() {
            return false;
        }

        private f() {
            super(h3.this.f13096e.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h3(ImmutableList<q8.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.f13098g = (V[][]) ((Object[][]) Array.newInstance(Object.class, immutableSet.size(), immutableSet2.size()));
        ImmutableMap<R, Integer> h10 = d6.h(immutableSet);
        this.f13092a = h10;
        ImmutableMap<C, Integer> h11 = d6.h(immutableSet2);
        this.f13093b = h11;
        this.f13096e = new int[h10.size()];
        this.f13097f = new int[h11.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i9 = 0; i9 < immutableList.size(); i9++) {
            q8.a<R, C, V> aVar = immutableList.get(i9);
            R a10 = aVar.a();
            C b10 = aVar.b();
            Integer num = this.f13092a.get(a10);
            Objects.requireNonNull(num);
            int intValue = num.intValue();
            Integer num2 = this.f13093b.get(b10);
            Objects.requireNonNull(num2);
            int intValue2 = num2.intValue();
            b(a10, b10, this.f13098g[intValue][intValue2], aVar.getValue());
            this.f13098g[intValue][intValue2] = aVar.getValue();
            int[] iArr3 = this.f13096e;
            iArr3[intValue] = iArr3[intValue] + 1;
            int[] iArr4 = this.f13097f;
            iArr4[intValue2] = iArr4[intValue2] + 1;
            iArr[i9] = intValue;
            iArr2[i9] = intValue2;
        }
        this.f13099h = iArr;
        this.f13100i = iArr2;
        this.f13094c = new f();
        this.f13095d = new c();
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b createSerializedForm() {
        return ImmutableTable.b.a(this, this.f13099h, this.f13100i);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.y, com.google.common.collect.q8
    public V get(Object obj, Object obj2) {
        Integer num = this.f13092a.get(obj);
        Integer num2 = this.f13093b.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.f13098g[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.q7
    q8.a<R, C, V> getCell(int i9) {
        int i10 = this.f13099h[i9];
        int i11 = this.f13100i[i9];
        R r10 = rowKeySet().asList().get(i10);
        C c10 = columnKeySet().asList().get(i11);
        V v10 = this.f13098g[i10][i11];
        Objects.requireNonNull(v10);
        return ImmutableTable.cellOf(r10, c10, v10);
    }

    @Override // com.google.common.collect.q7
    V getValue(int i9) {
        V v10 = this.f13098g[this.f13099h[i9]][this.f13100i[i9]];
        Objects.requireNonNull(v10);
        return v10;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public int size() {
        return this.f13099h.length;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.f13095d);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.f13094c);
    }
}
