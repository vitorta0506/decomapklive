package com.google.android.gms.internal.play_billing;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2.dex */
public abstract class zzp<E> extends zzm<E> implements List<E>, RandomAccess {
    private static final q<Object> zza = new m(o.f8477b, 0);

    public static <E> zzp<E> zzg() {
        return (zzp<E>) o.f8477b;
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i9 = 0; i9 < size; i9++) {
                        if (i.a(get(i9), list.get(i9))) {
                        }
                    }
                    return true;
                }
                Iterator<E> it = iterator();
                Iterator<E> it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it2.hasNext()) {
                            if (!i.a(it.next(), it2.next())) {
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

    @Override // java.util.List
    public final int indexOf(@NullableDecl Object obj) {
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

    @Override // com.google.android.gms.internal.play_billing.zzm, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@NullableDecl Object obj) {
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

    @Override // com.google.android.gms.internal.play_billing.zzm
    int zza(Object[] objArr, int i9) {
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            objArr[i10] = get(i10);
        }
        return size;
    }

    @Override // com.google.android.gms.internal.play_billing.zzm
    public final p<E> zzd() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzf */
    public zzp<E> subList(int i9, int i10) {
        j.c(i9, i10, size());
        int i11 = i10 - i9;
        if (i11 == size()) {
            return this;
        }
        if (i11 == 0) {
            return (zzp<E>) o.f8477b;
        }
        return new n(this, i9, i11);
    }

    @Override // java.util.List
    /* renamed from: zzh */
    public final q<E> listIterator(int i9) {
        j.b(i9, size(), "index");
        return isEmpty() ? (q<E>) zza : new m(this, i9);
    }
}
