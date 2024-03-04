package com.google.android.gms.internal.recaptcha;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class zzkn<E> extends zzke<E> implements Set<E> {
    private transient zzkj<E> zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i9) {
        int max = Math.max(i9, 2);
        if (max >= 751619276) {
            if (max < 1073741824) {
                return BasicMeasure.EXACTLY;
            }
            throw new IllegalArgumentException("collection too large");
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static <E> zzkn<E> zzk(Collection<? extends E> collection) {
        Object[] array = collection.toArray();
        return zzn(array.length, array);
    }

    public static <E> zzkn<E> zzl() {
        return f9.f8673g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> zzkn<E> zzn(int i9, Object... objArr) {
        if (i9 != 0) {
            if (i9 != 1) {
                int zzh = zzh(i9);
                Object[] objArr2 = new Object[zzh];
                int i10 = zzh - 1;
                int i11 = 0;
                int i12 = 0;
                for (int i13 = 0; i13 < i9; i13++) {
                    Object obj = objArr[i13];
                    y8.a(obj, i13);
                    int hashCode = obj.hashCode();
                    int a10 = n8.a(hashCode);
                    while (true) {
                        int i14 = a10 & i10;
                        Object obj2 = objArr2[i14];
                        if (obj2 == null) {
                            objArr[i12] = obj;
                            objArr2[i14] = obj;
                            i11 += hashCode;
                            i12++;
                            break;
                        } else if (obj2.equals(obj)) {
                            break;
                        } else {
                            a10++;
                        }
                    }
                }
                Arrays.fill(objArr, i12, i9, (Object) null);
                if (i12 == 1) {
                    Object obj3 = objArr[0];
                    obj3.getClass();
                    return new h9(obj3, i11);
                } else if (zzh(i12) < zzh / 2) {
                    return zzn(i12, objArr);
                } else {
                    int length = objArr.length;
                    if (i12 < (length >> 1) + (length >> 2)) {
                        objArr = Arrays.copyOf(objArr, i12);
                    }
                    return new f9(objArr, i11, objArr2, i10, i12);
                }
            }
            Object obj4 = objArr[0];
            obj4.getClass();
            return new h9(obj4);
        }
        return f9.f8673g;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzkn) && zzm() && ((zzkn) obj).zzm() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size()) {
                    if (containsAll(set)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return g9.a(this);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke
    public zzkj<E> zzd() {
        zzkj<E> zzkjVar = this.zza;
        if (zzkjVar == null) {
            zzkj<E> zzi = zzi();
            this.zza = zzi;
            return zzi;
        }
        return zzkjVar;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzke, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zze */
    public abstract j9<E> iterator();

    zzkj<E> zzi() {
        return zzkj.zzk(toArray());
    }

    boolean zzm() {
        return false;
    }
}
