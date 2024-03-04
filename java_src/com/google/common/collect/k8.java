package com.google.common.collect;

import com.google.common.collect.d6;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class k8<R, C, V> extends n8<R, C, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b extends n8<R, C, V>.h implements SortedMap<R, Map<C, V>> {
        private b() {
            super();
        }

        @Override // java.util.SortedMap
        public Comparator<? super R> comparator() {
            return k8.this.sortedBackingMap().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.d6.n
        /* renamed from: f */
        public SortedSet<R> b() {
            return new d6.l(this);
        }

        @Override // java.util.SortedMap
        public R firstKey() {
            return (R) k8.this.sortedBackingMap().firstKey();
        }

        @Override // com.google.common.collect.d6.n, java.util.AbstractMap, java.util.Map
        /* renamed from: g */
        public SortedSet<R> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> headMap(R r10) {
            com.google.common.base.o.s(r10);
            return new k8(k8.this.sortedBackingMap().headMap(r10), k8.this.factory).rowMap();
        }

        @Override // java.util.SortedMap
        public R lastKey() {
            return (R) k8.this.sortedBackingMap().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> subMap(R r10, R r11) {
            com.google.common.base.o.s(r10);
            com.google.common.base.o.s(r11);
            return new k8(k8.this.sortedBackingMap().subMap(r10, r11), k8.this.factory).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap<R, Map<C, V>> tailMap(R r10) {
            com.google.common.base.o.s(r10);
            return new k8(k8.this.sortedBackingMap().tailMap(r10), k8.this.factory).rowMap();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k8(SortedMap<R, Map<C, V>> sortedMap, com.google.common.base.w<? extends Map<C, V>> wVar) {
        super(sortedMap, wVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SortedMap<R, Map<C, V>> sortedBackingMap() {
        return (SortedMap) this.backingMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.n8
    public SortedMap<R, Map<C, V>> createRowMap() {
        return new b();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }
}
