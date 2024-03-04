package com.google.common.collect;

import com.google.common.collect.n4;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t5<K, V> extends ImmutableMap<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final transient Map<K, V> f13423a;

    /* renamed from: b  reason: collision with root package name */
    private final transient ImmutableList<Map.Entry<K, V>> f13424b;

    t5(Map<K, V> map, ImmutableList<Map.Entry<K, V>> immutableList) {
        this.f13423a = map;
        this.f13424b = immutableList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> ImmutableMap<K, V> b(int i9, Map.Entry<K, V>[] entryArr, boolean z10) {
        HashMap n9 = d6.n(i9);
        HashMap hashMap = null;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            Map.Entry<K, V> entry = entryArr[i11];
            Objects.requireNonNull(entry);
            entryArr[i11] = k7.f(entry);
            K key = entryArr[i11].getKey();
            V value = entryArr[i11].getValue();
            Object put = n9.put(key, value);
            if (put != null) {
                if (!z10) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    hashMap.put(key, value);
                    i10++;
                } else {
                    Map.Entry<K, V> entry2 = entryArr[i11];
                    String valueOf = String.valueOf(entryArr[i11].getKey());
                    String valueOf2 = String.valueOf(put);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
                    sb2.append(valueOf);
                    sb2.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb2.append(valueOf2);
                    throw ImmutableMap.conflictException("key", entry2, sb2.toString());
                }
            }
        }
        if (hashMap != null) {
            Map.Entry<K, V>[] entryArr2 = new Map.Entry[i9 - i10];
            int i12 = 0;
            for (int i13 = 0; i13 < i9; i13++) {
                Map.Entry<K, V> entry3 = entryArr[i13];
                Objects.requireNonNull(entry3);
                Map.Entry<K, V> entry4 = entry3;
                K key2 = entry4.getKey();
                if (hashMap.containsKey(key2)) {
                    Object obj = hashMap.get(key2);
                    if (obj != null) {
                        m4 m4Var = new m4(key2, obj);
                        hashMap.put(key2, null);
                        entry4 = m4Var;
                    }
                }
                entryArr2[i12] = entry4;
                i12++;
            }
            entryArr = entryArr2;
        }
        return new t5(n9, ImmutableList.asImmutableList(entryArr, i9));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(BiConsumer biConsumer, Map.Entry entry) {
        biConsumer.accept(entry.getKey(), entry.getValue());
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new n4.b(this, this.f13424b);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        return new p4(this);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> createValues() {
        return new s4(this);
    }

    @Override // java.util.Map
    public void forEach(final BiConsumer<? super K, ? super V> biConsumer) {
        com.google.common.base.o.s(biConsumer);
        this.f13424b.forEach(new Consumer() { // from class: com.google.common.collect.s5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                t5.c(biConsumer, (Map.Entry) obj);
            }
        });
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.f13423a.get(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f13424b.size();
    }
}
