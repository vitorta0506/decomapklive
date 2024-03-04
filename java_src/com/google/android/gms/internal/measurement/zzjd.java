package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class zzjd implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzjd zzb = new w7(e9.f8052d);
    private static final y7 zzd;
    private int zzc = 0;

    static {
        int i9 = k7.f8166a;
        zzd = new y7(null);
        zza = new q7();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i9, int i10, int i11) {
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

    public static zzjd zzl(byte[] bArr, int i9, int i10) {
        zzj(i9, i9 + i10, bArr.length);
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i9, bArr2, 0, i10);
        return new w7(bArr2);
    }

    public static zzjd zzm(String str) {
        return new w7(str.getBytes(e9.f8050b));
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
        return new p7(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? ab.a(this) : ab.a(zzf(0, 47)).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzb(int i9);

    public abstract int zzd();

    protected abstract int zze(int i9, int i10, int i11);

    public abstract zzjd zzf(int i9, int i10);

    protected abstract String zzg(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzh(o7 o7Var) throws IOException;

    public abstract boolean zzi();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzk() {
        return this.zzc;
    }

    public final String zzn(Charset charset) {
        return zzd() == 0 ? "" : zzg(charset);
    }
}
