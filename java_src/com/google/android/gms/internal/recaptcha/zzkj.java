package com.google.android.gms.internal.recaptcha;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
/* loaded from: classes2.dex */
public abstract class zzkj<E> extends zzke<E> implements List<E>, RandomAccess {
    private static final k9<Object> zza = new r8(z8.f9228c, 0);

    public static <E> q8<E> zzj() {
        return new q8<>(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> zzkj<E> zzk(Object[] objArr) {
        return zzl(objArr, objArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> zzkj<E> zzl(Object[] objArr, int i9) {
        if (i9 == 0) {
            return (zzkj<E>) z8.f9228c;
        }
        return new z8(objArr, i9);
    }

    public static <E> zzkj<E> zzm(Iterable<? extends E> iterable) {
        Objects.requireNonNull(iterable);
        if (iterable instanceof Collection) {
            return zzn((Collection) iterable);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (zzkj<E>) z8.f9228c;
        }
        E next = it.next();
        if (!it.hasNext()) {
            return zzp(next);
        }
        q8 q8Var = new q8(4);
        q8Var.d(next);
        q8Var.e(it);
        return q8Var.f();
    }

    public static <E> zzkj<E> zzn(Collection<? extends E> collection) {
        if (collection instanceof zzke) {
            zzkj<E> zzd = ((zzke) collection).zzd();
            if (zzd.zzf()) {
                Object[] array = zzd.toArray();
                return zzl(array, array.length);
            }
            return zzd;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        y8.b(array2, length);
        return zzl(array2, length);
    }

    public static <E> zzkj<E> zzo() {
        return (zzkj<E>) z8.f9228c;
    }

    public static <E> zzkj<E> zzp(E e10) {
        Object[] objArr = {e10};
        y8.b(objArr, 1);
        return zzl(objArr, 1);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i9, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i9, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i9 = 0; i9 < size; i9++) {
                        if (v7.a(get(i9), list.get(i9))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!v7.a(it.next(), it2.next())) {
                                break;
                            }
                        } else {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i9 = 1;
        for (int i10 = 0; i10 < size; i10++) {
            i9 = (i9 * 31) + get(i10).hashCode();
        }
        return i9;
    }

    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i9 = 0; i9 < size; i9++) {
            if (obj.equals(get(i9))) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i9) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i9, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    int zza(Object[] objArr, int i9) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i10] = get(i10);
        }
        return size;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    @Deprecated
    public final zzkj<E> zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    public final j9<E> zze() {
        return listIterator(0);
    }

    public zzkj<E> zzh() {
        return size() <= 1 ? this : new s8(this);
    }

    @Override // java.util.List
    /* renamed from: zzi */
    public zzkj<E> subList(int i9, int i10) {
        z7.h(i9, i10, size());
        int i11 = i10 - i9;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return (zzkj<E>) z8.f9228c;
        }
        return new t8(this, i9, i11);
    }

    @Override // java.util.List
    /* renamed from: zzq */
    public final k9<E> listIterator(int i9) {
        z7.b(i9, size(), "index");
        return isEmpty() ? (k9<E>) zza : new r8(this, i9);
    }
}
