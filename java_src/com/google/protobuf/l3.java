package com.google.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes3.dex */
public class l3 extends AbstractList<String> implements z0, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private final z0 f15053a;

    /* loaded from: classes3.dex */
    class a implements ListIterator<String> {

        /* renamed from: a  reason: collision with root package name */
        ListIterator<String> f15054a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f15055b;

        a(int i9) {
            this.f15055b = i9;
            this.f15054a = l3.this.f15053a.listIterator(i9);
        }

        @Override // java.util.ListIterator
        /* renamed from: a */
        public void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* renamed from: b */
        public String next() {
            return this.f15054a.next();
        }

        @Override // java.util.ListIterator
        /* renamed from: c */
        public String previous() {
            return this.f15054a.previous();
        }

        @Override // java.util.ListIterator
        /* renamed from: d */
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f15054a.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f15054a.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f15054a.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f15054a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Iterator<String> {

        /* renamed from: a  reason: collision with root package name */
        Iterator<String> f15057a;

        b() {
            this.f15057a = l3.this.f15053a.iterator();
        }

        @Override // java.util.Iterator
        /* renamed from: a */
        public String next() {
            return this.f15057a.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15057a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public l3(z0 z0Var) {
        this.f15053a = z0Var;
    }

    @Override // com.google.protobuf.z0
    public z0 V0() {
        return this;
    }

    @Override // com.google.protobuf.z0
    public void X(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.z0
    public List<?> Z() {
        return this.f15053a.Z();
    }

    @Override // com.google.protobuf.z0
    public Object c1(int i9) {
        return this.f15053a.c1(i9);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: d */
    public String get(int i9) {
        return this.f15053a.get(i9);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new b();
    }

    @Override // com.google.protobuf.z0
    public ByteString j0(int i9) {
        return this.f15053a.j0(i9);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i9) {
        return new a(i9);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15053a.size();
    }
}
