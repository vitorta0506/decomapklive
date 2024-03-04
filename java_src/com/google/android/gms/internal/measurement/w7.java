package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class w7 extends u7 {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f8414a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w7(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f8414a = bArr;
    }

    protected int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzjd) && zzd() == ((zzjd) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (obj instanceof w7) {
                w7 w7Var = (w7) obj;
                int zzk = zzk();
                int zzk2 = w7Var.zzk();
                if (zzk == 0 || zzk2 == 0 || zzk == zzk2) {
                    int zzd = zzd();
                    if (zzd <= w7Var.zzd()) {
                        if (zzd <= w7Var.zzd()) {
                            byte[] bArr = this.f8414a;
                            byte[] bArr2 = w7Var.f8414a;
                            w7Var.c();
                            int i9 = 0;
                            int i10 = 0;
                            while (i9 < zzd) {
                                if (bArr[i9] != bArr2[i10]) {
                                    return false;
                                }
                                i9++;
                                i10++;
                            }
                            return true;
                        }
                        int zzd2 = w7Var.zzd();
                        throw new IllegalArgumentException("Ran off end of other: 0, " + zzd + ", " + zzd2);
                    }
                    int zzd3 = zzd();
                    throw new IllegalArgumentException("Length too large: " + zzd + zzd3);
                }
                return false;
            }
            return obj.equals(this);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public byte zza(int i9) {
        return this.f8414a[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzjd
    public byte zzb(int i9) {
        return this.f8414a[i9];
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public int zzd() {
        return this.f8414a.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    protected final int zze(int i9, int i10, int i11) {
        return e9.d(i9, this.f8414a, 0, i11);
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final zzjd zzf(int i9, int i10) {
        int zzj = zzjd.zzj(0, i10, zzd());
        return zzj == 0 ? zzjd.zzb : new s7(this.f8414a, 0, zzj);
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    protected final String zzg(Charset charset) {
        return new String(this.f8414a, 0, zzd(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzjd
    public final void zzh(o7 o7Var) throws IOException {
        ((d8) o7Var).E(this.f8414a, 0, zzd());
    }

    @Override // com.google.android.gms.internal.measurement.zzjd
    public final boolean zzi() {
        return rb.f(this.f8414a, 0, zzd());
    }
}
