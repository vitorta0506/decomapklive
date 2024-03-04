package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
/* loaded from: classes2.dex */
public final class EnumHashBiMap<K extends Enum<K>, V> extends a<K, V> {
    private static final long serialVersionUID = 0;
    private transient Class<K> keyType;

    private EnumHashBiMap(Class<K> cls) {
        super(new EnumMap(cls), d6.n(cls.getEnumConstants().length));
        this.keyType = cls;
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Class<K> cls) {
        return new EnumHashBiMap<>(cls);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.keyType = (Class) objectInputStream.readObject();
        setDelegates(new EnumMap(this.keyType), new HashMap((this.keyType.getEnumConstants().length * 3) / 2));
        t7.b(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.keyType);
        t7.i(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.a
    /* bridge */ /* synthetic */ Object checkKey(Object obj) {
        return checkKey((EnumHashBiMap<K, V>) ((Enum) obj));
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.a
    public /* bridge */ /* synthetic */ Object forcePut(Object obj, Object obj2) {
        return forcePut((EnumHashBiMap<K, V>) ((Enum) obj), (Enum) obj2);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.e0
    public /* bridge */ /* synthetic */ e0 inverse() {
        return super.inverse();
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    public Class<K> keyType() {
        return this.keyType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return put((EnumHashBiMap<K, V>) ((Enum) obj), (Enum) obj2);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.common.collect.a, java.util.Map
    public /* bridge */ /* synthetic */ void replaceAll(BiFunction biFunction) {
        super.replaceAll(biFunction);
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Map<K, ? extends V> map) {
        EnumHashBiMap<K, V> create = create(EnumBiMap.inferKeyType(map));
        create.putAll(map);
        return create;
    }

    K checkKey(K k10) {
        return (K) com.google.common.base.o.s(k10);
    }

    public V forcePut(K k10, V v10) {
        return (V) super.forcePut((EnumHashBiMap<K, V>) k10, (K) v10);
    }

    public V put(K k10, V v10) {
        return (V) super.put((EnumHashBiMap<K, V>) k10, (K) v10);
    }
}
