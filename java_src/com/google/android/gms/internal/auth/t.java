package com.google.android.gms.internal.auth;

import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2.dex */
class t extends s {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f7902a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f7902a = bArr;
    }

    protected int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.auth.zzee
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzee) && zzd() == ((zzee) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (obj instanceof t) {
                t tVar = (t) obj;
                int zzj = zzj();
                int zzj2 = tVar.zzj();
                if (zzj == 0 || zzj2 == 0 || zzj == zzj2) {
                    int zzd = zzd();
                    if (zzd <= tVar.zzd()) {
                        if (zzd <= tVar.zzd()) {
                            byte[] bArr = this.f7902a;
                            byte[] bArr2 = tVar.f7902a;
                            tVar.c();
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
                        int zzd2 = tVar.zzd();
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

    @Override // com.google.android.gms.internal.auth.zzee
    public byte zza(int i9) {
        return this.f7902a[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.zzee
    public byte zzb(int i9) {
        return this.f7902a[i9];
    }

    @Override // com.google.android.gms.internal.auth.zzee
    public int zzd() {
        return this.f7902a.length;
    }

    @Override // com.google.android.gms.internal.auth.zzee
    protected final int zze(int i9, int i10, int i11) {
        return a0.b(i9, this.f7902a, 0, i11);
    }

    @Override // com.google.android.gms.internal.auth.zzee
    public final zzee zzf(int i9, int i10) {
        int zzi = zzee.zzi(0, i10, zzd());
        return zzi == 0 ? zzee.zzb : new q(this.f7902a, 0, zzi);
    }

    @Override // com.google.android.gms.internal.auth.zzee
    protected final String zzg(Charset charset) {
        return new String(this.f7902a, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.auth.zzee
    public final boolean zzh() {
        return k0.b(this.f7902a, 0, zzd());
    }
}
