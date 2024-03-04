package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.q8;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
final class j8<R, C, V> extends q7<R, C, V> {

    /* renamed from: e  reason: collision with root package name */
    static final ImmutableTable<Object, Object, Object> f13177e = new j8(ImmutableList.of(), ImmutableSet.of(), ImmutableSet.of());

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableMap<R, ImmutableMap<C, V>> f13178a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableMap<C, ImmutableMap<R, V>> f13179b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f13180c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f13181d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public j8(ImmutableList<q8.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        ImmutableMap h10 = d6.h(immutableSet);
        LinkedHashMap p10 = d6.p();
        e9<R> it = immutableSet.iterator();
        while (it.hasNext()) {
            p10.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap p11 = d6.p();
        e9<C> it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            p11.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i9 = 0; i9 < immutableList.size(); i9++) {
            q8.a<R, C, V> aVar = immutableList.get(i9);
            R a10 = aVar.a();
            C b10 = aVar.b();
            V value = aVar.getValue();
            Integer num = (Integer) h10.get(a10);
            Objects.requireNonNull(num);
            iArr[i9] = num.intValue();
            Map map = (Map) p10.get(a10);
            Objects.requireNonNull(map);
            Map map2 = map;
            iArr2[i9] = map2.size();
            b(a10, b10, map2.put(b10, value), value);
            Map map3 = (Map) p11.get(b10);
            Objects.requireNonNull(map3);
            map3.put(a10, value);
        }
        this.f13180c = iArr;
        this.f13181d = iArr2;
        ImmutableMap.b bVar = new ImmutableMap.b(p10.size());
        for (Map.Entry entry : p10.entrySet()) {
            bVar.h(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
        }
        this.f13178a = bVar.d();
        ImmutableMap.b bVar2 = new ImmutableMap.b(p11.size());
        for (Map.Entry entry2 : p11.entrySet()) {
            bVar2.h(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
        }
        this.f13179b = bVar2.d();
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b createSerializedForm() {
        ImmutableMap h10 = d6.h(columnKeySet());
        int[] iArr = new int[cellSet().size()];
        e9<q8.a<R, C, V>> it = cellSet().iterator();
        int i9 = 0;
        while (it.hasNext()) {
            Integer num = (Integer) h10.get(it.next().b());
            Objects.requireNonNull(num);
            iArr[i9] = num.intValue();
            i9++;
        }
        return ImmutableTable.b.a(this, this.f13180c, iArr);
    }

    @Override // com.google.common.collect.q7
    q8.a<R, C, V> getCell(int i9) {
        Map.Entry<R, ImmutableMap<C, V>> entry = this.f13178a.entrySet().asList().get(this.f13180c[i9]);
        Map.Entry<C, V> entry2 = entry.getValue().entrySet().asList().get(this.f13181d[i9]);
        return ImmutableTable.cellOf(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.q7
    V getValue(int i9) {
        int i10 = this.f13180c[i9];
        return this.f13178a.values().asList().get(i10).values().asList().get(this.f13181d[i9]);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public int size() {
        return this.f13180c.length;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.f13179b);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.q8
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.f13178a);
    }
}
