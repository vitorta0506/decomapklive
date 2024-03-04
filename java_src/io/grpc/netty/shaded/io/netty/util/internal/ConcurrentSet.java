package io.grpc.netty.shaded.io.netty.util.internal;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.concurrent.ConcurrentMap;
@Deprecated
/* loaded from: classes5.dex */
public final class ConcurrentSet<E> extends AbstractSet<E> implements Serializable {
    private static final long serialVersionUID = -6761513279741915432L;
    private final ConcurrentMap<E, Boolean> map = t.p0();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e10) {
        return this.map.putIfAbsent(e10, Boolean.TRUE) == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.map.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.map.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.map.remove(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.map.size();
    }
}
