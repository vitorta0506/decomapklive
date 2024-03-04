package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
public final class g9 extends j7 implements RandomAccess, h9 {

    /* renamed from: c  reason: collision with root package name */
    private static final g9 f8096c;

    /* renamed from: d  reason: collision with root package name */
    public static final h9 f8097d;

    /* renamed from: b  reason: collision with root package name */
    private final List f8098b;

    static {
        g9 g9Var = new g9(10);
        f8096c = g9Var;
        g9Var.D();
        f8097d = g9Var;
    }

    public g9() {
        this(10);
    }

    private static String f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzjd) {
            return ((zzjd) obj).zzn(e9.f8050b);
        }
        return e9.h((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final void U0(zzjd zzjdVar) {
        c();
        this.f8098b.add(zzjdVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final List a() {
        return Collections.unmodifiableList(this.f8098b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i9, Object obj) {
        c();
        this.f8098b.add(i9, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.List
    public final boolean addAll(int i9, Collection collection) {
        c();
        if (collection instanceof h9) {
            collection = ((h9) collection).a();
        }
        boolean addAll = this.f8098b.addAll(i9, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f8098b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: d */
    public final String get(int i9) {
        Object obj = this.f8098b.get(i9);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzjd) {
            zzjd zzjdVar = (zzjd) obj;
            String zzn = zzjdVar.zzn(e9.f8050b);
            if (zzjdVar.zzi()) {
                this.f8098b.set(i9, zzn);
            }
            return zzn;
        }
        byte[] bArr = (byte[]) obj;
        String h10 = e9.h(bArr);
        if (e9.i(bArr)) {
            this.f8098b.set(i9, h10);
        }
        return h10;
    }

    @Override // com.google.android.gms.internal.measurement.d9
    public final /* bridge */ /* synthetic */ d9 j(int i9) {
        if (i9 >= size()) {
            ArrayList arrayList = new ArrayList(i9);
            arrayList.addAll(this.f8098b);
            return new g9(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final h9 l() {
        return E() ? new gb(this) : this;
    }

    @Override // com.google.android.gms.internal.measurement.h9
    public final Object o(int i9) {
        return this.f8098b.get(i9);
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        c();
        Object remove = this.f8098b.remove(i9);
        ((AbstractList) this).modCount++;
        return f(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        c();
        return f(this.f8098b.set(i9, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8098b.size();
    }

    public g9(int i9) {
        this.f8098b = new ArrayList(i9);
    }

    private g9(ArrayList arrayList) {
        this.f8098b = arrayList;
    }

    @Override // com.google.android.gms.internal.measurement.j7, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
