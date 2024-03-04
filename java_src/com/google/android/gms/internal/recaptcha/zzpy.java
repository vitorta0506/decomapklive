package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class zzpy implements Iterable<Byte>, Serializable {
    private static final Comparator<zzpy> zza;
    public static final zzpy zzb = new ve(mg.f8880c);
    private static final we zzd;
    private int zzc = 0;

    static {
        int i9 = ke.f8820a;
        zzd = new we(null);
        zza = new pe();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i9, int i10, int i11) {
        int i12 = i10 - i9;
        if ((i9 | i10 | i12 | (i11 - i10)) < 0) {
            if (i9 < 0) {
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Beginning index: ");
                sb2.append(i9);
                sb2.append(" < 0");
                throw new IndexOutOfBoundsException(sb2.toString());
            } else if (i10 < i9) {
                StringBuilder sb3 = new StringBuilder(66);
                sb3.append("Beginning index larger than ending index: ");
                sb3.append(i9);
                sb3.append(", ");
                sb3.append(i10);
                throw new IndexOutOfBoundsException(sb3.toString());
            } else {
                StringBuilder sb4 = new StringBuilder(37);
                sb4.append("End index: ");
                sb4.append(i10);
                sb4.append(" >= ");
                sb4.append(i11);
                throw new IndexOutOfBoundsException(sb4.toString());
            }
        }
        return i12;
    }

    public static zzpy zzm(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        zzk(0, remaining, byteBuffer.remaining());
        byte[] bArr = new byte[remaining];
        byteBuffer.get(bArr);
        return new ve(bArr);
    }

    public static zzpy zzn(byte[] bArr) {
        return zzo(bArr, 0, bArr.length);
    }

    public static zzpy zzo(byte[] bArr, int i9, int i10) {
        zzk(i9, i9 + i10, bArr.length);
        byte[] bArr2 = new byte[i10];
        System.arraycopy(bArr, i9, bArr2, 0, i10);
        return new ve(bArr2);
    }

    public static zzpy zzp(String str) {
        return new ve(str.getBytes(mg.f8878a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzpy zzq(byte[] bArr) {
        return new ve(bArr);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i9 = this.zzc;
        if (i9 == 0) {
            int zzd2 = zzd();
            i9 = zzf(zzd2, 0, zzd2);
            if (i9 == 0) {
                i9 = 1;
            }
            this.zzc = i9;
        }
        return i9;
    }

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new ne(this);
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(zzd());
        objArr[2] = zzd() <= 50 ? gi.a(this) : String.valueOf(gi.a(zzg(0, 47))).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte zza(int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte zzb(int i9);

    public abstract int zzd();

    protected abstract void zze(byte[] bArr, int i9, int i10, int i11);

    protected abstract int zzf(int i9, int i10, int i11);

    public abstract zzpy zzg(int i9, int i10);

    protected abstract String zzh(Charset charset);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zzi(me meVar) throws IOException;

    public abstract boolean zzj();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int zzl() {
        return this.zzc;
    }

    public final String zzr(Charset charset) {
        return zzd() == 0 ? "" : zzh(charset);
    }

    public final byte[] zzs() {
        int zzd2 = zzd();
        if (zzd2 == 0) {
            return mg.f8880c;
        }
        byte[] bArr = new byte[zzd2];
        zze(bArr, 0, 0, zzd2);
        return bArr;
    }
}
