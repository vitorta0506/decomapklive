package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class HashBasedTable<R, C, V> extends n8<R, C, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a<C, V> implements com.google.common.base.w<Map<C, V>>, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final int f12638a;

        a(int i9) {
            this.f12638a = i9;
        }

        @Override // com.google.common.base.w, java.util.function.Supplier
        /* renamed from: a */
        public Map<C, V> get() {
            return d6.q(this.f12638a);
        }
    }

    HashBasedTable(Map<R, Map<C, V>> map, a<C, V> aVar) {
        super(map, aVar);
    }

    public static <R, C, V> HashBasedTable<R, C, V> create() {
        return new HashBasedTable<>(new LinkedHashMap(), new a(0));
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Set cellSet() {
        return super.cellSet();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n8
    public /* bridge */ /* synthetic */ Map column(Object obj) {
        return super.column(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Set columnKeySet() {
        return super.columnKeySet();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Map columnMap() {
        return super.columnMap();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean contains(Object obj, Object obj2) {
        return super.contains(obj, obj2);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsColumn(Object obj) {
        return super.containsColumn(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsRow(Object obj) {
        return super.containsRow(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Object get(Object obj, Object obj2) {
        return super.get(obj, obj2);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2, Object obj3) {
        return super.put(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ void putAll(q8 q8Var) {
        super.putAll(q8Var);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ Object remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Map row(Object obj) {
        return super.row(obj);
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Set rowKeySet() {
        return super.rowKeySet();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ Map rowMap() {
        return super.rowMap();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.q8
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.y
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.n8, com.google.common.collect.y
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(int i9, int i10) {
        p2.b(i10, "expectedCellsPerRow");
        return new HashBasedTable<>(d6.q(i9), new a(i10));
    }

    public static <R, C, V> HashBasedTable<R, C, V> create(q8<? extends R, ? extends C, ? extends V> q8Var) {
        HashBasedTable<R, C, V> create = create();
        create.putAll(q8Var);
        return create;
    }
}
