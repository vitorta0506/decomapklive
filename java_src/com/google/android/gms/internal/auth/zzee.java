package com.google.android.gms.internal.auth;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class zzee implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzee zzb = new t(a0.f7883d);
    private static final v zzd;
    private int zzc = 0;

    static {
        int i9 = m.f7897a;
        zzd = new v(null);
        zza = new o();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(int i9, int i10, int i11) {
        int i12 = i10 - i9;
        if ((i9 | i10 | i12 | (i11 - i10)) < 0) {
            if (i9 < 0) {
                throw new IndexOutOfBoundsException("Beginning index: " + i9 + " < 0");
            } else if (i10 < i9) {
                throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i9 + ", " + i10);
            } else {
                throw new IndexOutOfBoundsException("End index: " + i10 + " >= " + i11);
            }
        }
        return i12;
    }

    public static zzee zzk(byte[] bArr, int i9, int i10) {
        zzi(i9, i9 + i10, bArr.length);
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i9, bArr2, 0, i10);
        return new t(bArr2);
    }

    public static zzee zzl(String str) {
        return new t(str.getBytes(a0.f7881b));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i9 = this.zzc;
        if (i9 == 0) {
            int zzd2 = zzd();
            i9 = zze(zzd2, 0, zzd2);
            if (i9 == 0) {
                i9 = 1;
            }
            this.zzc = i9;
        }
        return i9;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new n(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? c0.a(this) : c0.a(zzf(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzb(int i9);

    public abstract int zzd();

    protected abstract int zze(int i9, int i10, int i11);

    public abstract zzee zzf(int i9, int i10);

    protected abstract String zzg(Charset charset);

    public abstract boolean zzh();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzj() {
        return this.zzc;
    }

    public final String zzm(Charset charset) {
        return zzd() == 0 ? "" : zzg(charset);
    }
}
