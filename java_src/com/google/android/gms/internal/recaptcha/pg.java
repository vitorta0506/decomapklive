package com.google.android.gms.internal.recaptcha;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
public final class pg extends je<String> implements RandomAccess, qg {

    /* renamed from: c  reason: collision with root package name */
    private static final pg f8982c;

    /* renamed from: d  reason: collision with root package name */
    public static final qg f8983d;

    /* renamed from: b  reason: collision with root package name */
    private final List<Object> f8984b;

    static {
        pg pgVar = new pg(10);
        f8982c = pgVar;
        pgVar.D();
        f8983d = pgVar;
    }

    public pg() {
        this(10);
    }

    private static String f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzpy) {
            return ((zzpy) obj).zzr(mg.f8878a);
        }
        return mg.h((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final List<?> a() {
        return Collections.unmodifiableList(this.f8984b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i9, Object obj) {
        c();
        this.f8984b.add(i9, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.List
    public final boolean addAll(int i9, Collection<? extends String> collection) {
        c();
        if (collection instanceof qg) {
            collection = ((qg) collection).a();
        }
        boolean addAll = this.f8984b.addAll(i9, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f8984b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: d */
    public final String get(int i9) {
        Object obj = this.f8984b.get(i9);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzpy) {
            zzpy zzpyVar = (zzpy) obj;
            String zzr = zzpyVar.zzr(mg.f8878a);
            if (zzpyVar.zzj()) {
                this.f8984b.set(i9, zzr);
            }
            return zzr;
        }
        byte[] bArr = (byte[]) obj;
        String h10 = mg.h(bArr);
        if (mg.j(bArr)) {
            this.f8984b.set(i9, h10);
        }
        return h10;
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final void h0(zzpy zzpyVar) {
        c();
        this.f8984b.add(zzpyVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.recaptcha.lg
    public final /* bridge */ /* synthetic */ lg j(int i9) {
        if (i9 >= size()) {
            ArrayList arrayList = new ArrayList(i9);
            arrayList.addAll(this.f8984b);
            return new pg(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final qg l() {
        return E() ? new pi(this) : this;
    }

    @Override // com.google.android.gms.internal.recaptcha.qg
    public final Object o(int i9) {
        return this.f8984b.get(i9);
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i9) {
        c();
        Object remove = this.f8984b.remove(i9);
        ((AbstractList) this).modCount++;
        return f(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i9, Object obj) {
        c();
        return f(this.f8984b.set(i9, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8984b.size();
    }

    public pg(int i9) {
        this.f8984b = new ArrayList(i9);
    }

    private pg(ArrayList<Object> arrayList) {
        this.f8984b = arrayList;
    }

    @Override // com.google.android.gms.internal.recaptcha.je, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }
}
