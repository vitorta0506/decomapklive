package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class f4<E> extends ImmutableList<E> {

    /* loaded from: classes2.dex */
    static class a implements Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        final ImmutableCollection<?> f13054a;

        a(ImmutableCollection<?> immutableCollection) {
            this.f13054a = immutableCollection;
        }

        Object readResolve() {
            return this.f13054a.asList();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    abstract ImmutableCollection<E> c();

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return c().contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return c().isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return c().isPartialView();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return c().size();
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new a(c());
    }
}
