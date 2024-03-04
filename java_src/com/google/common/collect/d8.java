package com.google.common.collect;

import com.google.common.collect.ImmutableTable;
import com.google.common.collect.q8;
import java.util.Map;
/* loaded from: classes2.dex */
class d8<R, C, V> extends ImmutableTable<R, C, V> {

    /* renamed from: a  reason: collision with root package name */
    final R f13034a;

    /* renamed from: b  reason: collision with root package name */
    final C f13035b;

    /* renamed from: c  reason: collision with root package name */
    final V f13036c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d8(R r10, C c10, V v10) {
        this.f13034a = (R) com.google.common.base.o.s(r10);
        this.f13035b = (C) com.google.common.base.o.s(c10);
        this.f13036c = (V) com.google.common.base.o.s(v10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableTable
    /* renamed from: column */
    public /* bridge */ /* synthetic */ Map mo212column(Object obj) {
        return column((d8<R, C, V>) obj);
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b createSerializedForm() {
        return ImmutableTable.b.a(this, new int[]{0}, new int[]{0});
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableTable
    public ImmutableMap<R, V> column(C c10) {
        com.google.common.base.o.s(c10);
        if (containsColumn(c10)) {
            return ImmutableMap.of(this.f13034a, (Object) this.f13036c);
        }
        return ImmutableMap.of();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.f13035b, ImmutableMap.of(this.f13034a, (Object) this.f13036c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.y
    public ImmutableSet<q8.a<R, C, V>> createCellSet() {
        return ImmutableSet.of(ImmutableTable.cellOf(this.f13034a, this.f13035b, this.f13036c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.y
    public ImmutableCollection<V> createValues() {
        return ImmutableSet.of(this.f13036c);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.of(this.f13034a, ImmutableMap.of(this.f13035b, (Object) this.f13036c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d8(q8.a<R, C, V> aVar) {
        this(aVar.a(), aVar.b(), aVar.getValue());
    }
}
