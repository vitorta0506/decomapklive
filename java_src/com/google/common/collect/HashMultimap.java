package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
/* loaded from: classes2.dex */
public final class HashMultimap<K, V> extends d4<K, V> {
    private static final int DEFAULT_VALUES_PER_KEY = 2;
    private static final long serialVersionUID = 0;
    transient int expectedValuesPerKey;

    private HashMultimap() {
        this(12, 2);
    }

    public static <K, V> HashMultimap<K, V> create() {
        return new HashMultimap<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.expectedValuesPerKey = 2;
        int h10 = t7.h(objectInputStream);
        setMap(a7.c(12));
        t7.e(this, objectInputStream, h10);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        t7.j(this, objectOutputStream);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.t, com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j
    public /* bridge */ /* synthetic */ void forEach(BiConsumer biConsumer) {
        super.forEach(biConsumer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return super.get((HashMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ q6 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean putAll(i6 i6Var) {
        return super.putAll(i6Var);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Set removeAll(Object obj) {
        return super.removeAll(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.t, com.google.common.collect.j, com.google.common.collect.o
    public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
        return super.replaceValues((HashMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.o, com.google.common.collect.i6
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    private HashMultimap(int i9, int i10) {
        super(a7.c(i9));
        this.expectedValuesPerKey = 2;
        com.google.common.base.o.d(i10 >= 0);
        this.expectedValuesPerKey = i10;
    }

    public static <K, V> HashMultimap<K, V> create(int i9, int i10) {
        return new HashMultimap<>(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.t, com.google.common.collect.j
    public Set<V> createCollection() {
        return a7.d(this.expectedValuesPerKey);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    public static <K, V> HashMultimap<K, V> create(i6<? extends K, ? extends V> i6Var) {
        return new HashMultimap<>(i6Var);
    }

    private HashMultimap(i6<? extends K, ? extends V> i6Var) {
        super(a7.c(i6Var.keySet().size()));
        this.expectedValuesPerKey = 2;
        putAll(i6Var);
    }
}
