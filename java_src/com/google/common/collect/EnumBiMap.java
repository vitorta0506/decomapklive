package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
/* loaded from: classes2.dex */
public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends a<K, V> {
    private static final long serialVersionUID = 0;
    private transient Class<K> keyType;
    private transient Class<V> valueType;

    private EnumBiMap(Class<K> cls, Class<V> cls2) {
        super(new EnumMap(cls), new EnumMap(cls2));
        this.keyType = cls;
        this.valueType = cls2;
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Class<K> cls, Class<V> cls2) {
        return new EnumBiMap<>(cls, cls2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K extends Enum<K>> Class<K> inferKeyType(Map<K, ?> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).keyType();
        }
        if (map instanceof EnumHashBiMap) {
            return ((EnumHashBiMap) map).keyType();
        }
        com.google.common.base.o.d(!map.isEmpty());
        return map.keySet().iterator().next().getDeclaringClass();
    }

    private static <V extends Enum<V>> Class<V> inferValueType(Map<?, V> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).valueType;
        }
        com.google.common.base.o.d(!map.isEmpty());
        return map.values().iterator().next().getDeclaringClass();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.keyType = (Class) objectInputStream.readObject();
        this.valueType = (Class) objectInputStream.readObject();
        setDelegates(new EnumMap(this.keyType), new EnumMap(this.valueType));
        t7.b(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.keyType);
        objectOutputStream.writeObject(this.valueType);
        t7.i(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.a
    /* bridge */ /* synthetic */ Object checkKey(Object obj) {
        return checkKey((EnumBiMap<K, V>) ((Enum) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.a
    /* bridge */ /* synthetic */ Object checkValue(Object obj) {
        return checkValue((EnumBiMap<K, V>) ((Enum) obj));
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

    @Override // com.google.common.collect.a
    public /* bridge */ /* synthetic */ Object forcePut(Object obj, Object obj2) {
        return super.forcePut(obj, obj2);
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

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
        return super.put(obj, obj2);
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

    public Class<V> valueType() {
        return this.valueType;
    }

    @Override // com.google.common.collect.a, com.google.common.collect.t3, java.util.Map
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Map<K, V> map) {
        EnumBiMap<K, V> create = create(inferKeyType(map), inferValueType(map));
        create.putAll(map);
        return create;
    }

    K checkKey(K k10) {
        return (K) com.google.common.base.o.s(k10);
    }

    V checkValue(V v10) {
        return (V) com.google.common.base.o.s(v10);
    }
}
