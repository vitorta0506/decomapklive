package io.grpc.netty.shaded.io.netty.util.internal;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class i<T> implements v<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final v<Object> f45076a = new i();

    private i() {
    }

    public static <V> i<V> c() {
        return (i) f45076a;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.v
    public void B0() {
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.v
    public void M0(T t10) {
    }

    @Override // java.util.Queue, java.util.Collection
    public boolean add(T t10) {
        return false;
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        return false;
    }

    @Override // java.util.Collection
    public void clear() {
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        return false;
    }

    @Override // java.util.Queue
    public T element() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return (obj instanceof v) && ((v) obj).isEmpty();
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.v
    public boolean g0(T t10) {
        return false;
    }

    @Override // java.util.Collection
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return Collections.emptyList().iterator();
    }

    @Override // java.util.Queue
    public boolean offer(T t10) {
        return false;
    }

    @Override // java.util.Queue
    public T peek() {
        return null;
    }

    @Override // java.util.Queue
    public T poll() {
        return null;
    }

    @Override // java.util.Queue
    public T remove() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        return false;
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        return false;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        return false;
    }

    @Override // java.util.Collection
    public int size() {
        return 0;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return h.f45067d;
    }

    public String toString() {
        return i.class.getSimpleName();
    }

    @Override // java.util.Collection
    public <T1> T1[] toArray(T1[] t1Arr) {
        if (t1Arr.length > 0) {
            t1Arr[0] = null;
        }
        return t1Arr;
    }
}
