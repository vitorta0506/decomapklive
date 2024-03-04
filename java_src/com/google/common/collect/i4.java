package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.BiConsumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class i4<K extends Enum<K>, V> extends ImmutableMap.c<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final transient EnumMap<K, V> f13130a;

    /* loaded from: classes2.dex */
    private static class b<K extends Enum<K>, V> implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final EnumMap<K, V> f13131a;

        b(EnumMap<K, V> enumMap) {
            this.f13131a = enumMap;
        }

        Object readResolve() {
            return new i4(this.f13131a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K extends Enum<K>, V> ImmutableMap<K, V> b(EnumMap<K, V> enumMap) {
        int size = enumMap.size();
        if (size != 0) {
            if (size != 1) {
                return new i4(enumMap);
            }
            Map.Entry entry = (Map.Entry) n5.i(enumMap.entrySet());
            return ImmutableMap.of((Enum) entry.getKey(), entry.getValue());
        }
        return ImmutableMap.of();
    }

    @Override // com.google.common.collect.ImmutableMap.c
    e9<Map.Entry<K, V>> a() {
        return d6.x(this.f13130a.entrySet().iterator());
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.f13130a.containsKey(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i4) {
            obj = ((i4) obj).f13130a;
        }
        return this.f13130a.equals(obj);
    }

    @Override // java.util.Map
    public void forEach(BiConsumer<? super K, ? super V> biConsumer) {
        this.f13130a.forEach(biConsumer);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return this.f13130a.get(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public boolean isPartialView() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public e9<K> keyIterator() {
        return p5.D(this.f13130a.keySet().iterator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableMap
    public Spliterator<K> keySpliterator() {
        return this.f13130a.keySet().spliterator();
    }

    @Override // java.util.Map
    public int size() {
        return this.f13130a.size();
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new b(this.f13130a);
    }

    private i4(EnumMap<K, V> enumMap) {
        this.f13130a = enumMap;
        com.google.common.base.o.d(!enumMap.isEmpty());
    }
}
