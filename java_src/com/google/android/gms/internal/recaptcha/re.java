package com.google.android.gms.internal.recaptcha;
/* loaded from: classes2.dex */
final class re extends ve {

    /* renamed from: b  reason: collision with root package name */
    private final int f9023b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public re(byte[] bArr, int i9, int i10) {
        super(bArr);
        zzpy.zzk(0, i10, bArr.length);
        this.f9023b = i10;
    }

    @Override // com.google.android.gms.internal.recaptcha.ve
    protected final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.recaptcha.ve, com.google.android.gms.internal.recaptcha.zzpy
    public final byte zza(int i9) {
        int i10 = this.f9023b;
        if (((i10 - (i9 + 1)) | i9) < 0) {
            if (i9 < 0) {
                StringBuilder sb2 = new StringBuilder(22);
                sb2.append("Index < 0: ");
                sb2.append(i9);
                throw new ArrayIndexOutOfBoundsException(sb2.toString());
            }
            StringBuilder sb3 = new StringBuilder(40);
            sb3.append("Index > length: ");
            sb3.append(i9);
            sb3.append(", ");
            sb3.append(i10);
            throw new ArrayIndexOutOfBoundsException(sb3.toString());
        }
        return this.f9108a[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.ve, com.google.android.gms.internal.recaptcha.zzpy
    public final byte zzb(int i9) {
        return this.f9108a[i9];
    }

    @Override // com.google.android.gms.internal.recaptcha.ve, com.google.android.gms.internal.recaptcha.zzpy
    public final int zzd() {
        return this.f9023b;
    }

    @Override // com.google.android.gms.internal.recaptcha.ve, com.google.android.gms.internal.recaptcha.zzpy
    protected final void zze(byte[] bArr, int i9, int i10, int i11) {
        System.arraycopy(this.f9108a, 0, bArr, 0, i11);
    }
}
