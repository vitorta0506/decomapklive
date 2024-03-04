package com.google.android.gms.internal.recaptcha;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ve extends ue {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f9108a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ve(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f9108a = bArr;
    }

    protected int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzpy) && zzd() == ((zzpy) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (obj instanceof ve) {
                ve veVar = (ve) obj;
                int zzl = zzl();
                int zzl2 = veVar.zzl();
                if (zzl == 0 || zzl2 == 0 || zzl == zzl2) {
                    int zzd = zzd();
                    if (zzd <= veVar.zzd()) {
                        if (zzd <= veVar.zzd()) {
                            byte[] bArr = this.f9108a;
                            byte[] bArr2 = veVar.f9108a;
                            veVar.c();
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
                        int zzd2 = veVar.zzd();
                        StringBuilder sb2 = new StringBuilder(59);
                        sb2.append("Ran off end of other: 0, ");
                        sb2.append(zzd);
                        sb2.append(", ");
                        sb2.append(zzd2);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    int zzd3 = zzd();
                    StringBuilder sb3 = new StringBuilder(40);
                    sb3.append("Length too large: ");
                    sb3.append(zzd);
                    sb3.append(zzd3);
                    throw new IllegalArgumentException(sb3.toString());
                }
                return false;
            }
            return obj.equals(this);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    public byte zza(int i9) {
        return this.f9108a[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzpy
    public byte zzb(int i9) {
        return this.f9108a[i9];
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    public int zzd() {
        return this.f9108a.length;
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    protected void zze(byte[] bArr, int i9, int i10, int i11) {
        System.arraycopy(this.f9108a, 0, bArr, 0, i11);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    protected final int zzf(int i9, int i10, int i11) {
        return mg.d(i9, this.f9108a, 0, i11);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    public final zzpy zzg(int i9, int i10) {
        int zzk = zzpy.zzk(0, i10, zzd());
        return zzk == 0 ? zzpy.zzb : new re(this.f9108a, 0, zzk);
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    protected final String zzh(Charset charset) {
        return new String(this.f9108a, 0, zzd(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.zzpy
    public final void zzi(me meVar) throws IOException {
        meVar.a(this.f9108a, 0, zzd());
    }

    @Override // com.google.android.gms.internal.recaptcha.zzpy
    public final boolean zzj() {
        return aj.f(this.f9108a, 0, zzd());
    }
}
