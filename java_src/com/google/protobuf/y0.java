package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes3.dex */
public class y0 extends d<String> implements z0, RandomAccess {

    /* renamed from: c  reason: collision with root package name */
    private static final y0 f15343c;

    /* renamed from: d  reason: collision with root package name */
    public static final z0 f15344d;

    /* renamed from: b  reason: collision with root package name */
    private final List<Object> f15345b;

    static {
        y0 y0Var = new y0();
        f15343c = y0Var;
        y0Var.C();
        f15344d = y0Var;
    }

    public y0() {
        this(10);
    }

    private static ByteString f(Object obj) {
        if (obj instanceof ByteString) {
            return (ByteString) obj;
        }
        if (obj instanceof String) {
            return ByteString.copyFromUtf8((String) obj);
        }
        return ByteString.copyFrom((byte[]) obj);
    }

    private static String g(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            return ((ByteString) obj).toStringUtf8();
        }
        return u0.m((byte[]) obj);
    }

    @Override // com.google.protobuf.z0
    public z0 V0() {
        return r0() ? new l3(this) : this;
    }

    @Override // com.google.protobuf.z0
    public void X(ByteString byteString) {
        c();
        this.f15345b.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.z0
    public List<?> Z() {
        return Collections.unmodifiableList(this.f15345b);
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.protobuf.z0
    public Object c1(int i9) {
        return this.f15345b.get(i9);
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        c();
        this.f15345b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: d */
    public void add(int i9, String str) {
        c();
        this.f15345b.add(i9, str);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.protobuf.z0
    public ByteString j0(int i9) {
        Object obj = this.f15345b.get(i9);
        ByteString f10 = f(obj);
        if (f10 != obj) {
            this.f15345b.set(i9, f10);
        }
        return f10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: m */
    public String get(int i9) {
        Object obj = this.f15345b.get(i9);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                this.f15345b.set(i9, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        String m10 = u0.m(bArr);
        if (u0.j(bArr)) {
            this.f15345b.set(i9, m10);
        }
        return m10;
    }

    @Override // com.google.protobuf.u0.j, com.google.protobuf.u0.i
    /* renamed from: n */
    public y0 b(int i9) {
        if (i9 >= size()) {
            ArrayList arrayList = new ArrayList(i9);
            arrayList.addAll(this.f15345b);
            return new y0(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.d, com.google.protobuf.u0.j
    public /* bridge */ /* synthetic */ boolean r0() {
        return super.r0();
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f15345b.size();
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.List
    /* renamed from: u */
    public String remove(int i9) {
        c();
        Object remove = this.f15345b.remove(i9);
        ((AbstractList) this).modCount++;
        return g(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: x */
    public String set(int i9, String str) {
        c();
        return g(this.f15345b.set(i9, str));
    }

    public y0(int i9) {
        this(new ArrayList(i9));
    }

    @Override // com.google.protobuf.d, java.util.AbstractList, java.util.List
    public boolean addAll(int i9, Collection<? extends String> collection) {
        c();
        if (collection instanceof z0) {
            collection = ((z0) collection).Z();
        }
        boolean addAll = this.f15345b.addAll(i9, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.protobuf.d, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    public y0(z0 z0Var) {
        this.f15345b = new ArrayList(z0Var.size());
        addAll(z0Var);
    }

    private y0(ArrayList<Object> arrayList) {
        this.f15345b = arrayList;
    }
}
