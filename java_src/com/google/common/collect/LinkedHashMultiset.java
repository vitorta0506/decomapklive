package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
/* loaded from: classes2.dex */
public final class LinkedHashMultiset<E> extends m<E> {
    private static final long serialVersionUID = 0;

    private LinkedHashMultiset() {
        super(new LinkedHashMap());
    }

    public static <E> LinkedHashMultiset<E> create() {
        return new LinkedHashMultiset<>();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int h10 = t7.h(objectInputStream);
        setBackingMap(new LinkedHashMap());
        t7.g(this, objectInputStream, h10);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        t7.k(this, objectOutputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ int add(Object obj, int i9) {
        return super.add(obj, i9);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ int count(Object obj) {
        return super.count(obj);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ Set elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.p, java.lang.Iterable
    public /* bridge */ /* synthetic */ void forEach(Consumer consumer) {
        p6.a(this, consumer);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ void forEachEntry(ObjIntConsumer objIntConsumer) {
        super.forEachEntry(objIntConsumer);
    }

    @Override // com.google.common.collect.p, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // com.google.common.collect.m, com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ int remove(Object obj, int i9) {
        return super.remove(obj, i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.m, com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ int setCount(Object obj, int i9) {
        return super.setCount(obj, i9);
    }

    @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.p, java.util.Collection, java.lang.Iterable
    public /* bridge */ /* synthetic */ Spliterator spliterator() {
        return p6.c(this);
    }

    private LinkedHashMultiset(int i9) {
        super(d6.q(i9));
    }

    public static <E> LinkedHashMultiset<E> create(int i9) {
        return new LinkedHashMultiset<>(i9);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.q6
    public /* bridge */ /* synthetic */ boolean setCount(Object obj, int i9, int i10) {
        return super.setCount(obj, i9, i10);
    }

    public static <E> LinkedHashMultiset<E> create(Iterable<? extends E> iterable) {
        LinkedHashMultiset<E> create = create(t6.h(iterable));
        n5.a(create, iterable);
        return create;
    }
}
