package com.google.android.gms.internal.auth;
/* loaded from: classes2.dex */
final class q extends t {

    /* renamed from: b  reason: collision with root package name */
    private final int f7901b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(byte[] bArr, int i9, int i10) {
        super(bArr);
        zzee.zzi(0, i10, bArr.length);
        this.f7901b = i10;
    }

    @Override // com.google.android.gms.internal.auth.t
    protected final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.auth.t, com.google.android.gms.internal.auth.zzee
    public final byte zza(int i9) {
        int i10 = this.f7901b;
        if (((i10 - (i9 + 1)) | i9) < 0) {
            if (i9 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i9);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i9 + ", " + i10);
        }
        return this.f7902a[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.t, com.google.android.gms.internal.auth.zzee
    public final byte zzb(int i9) {
        return this.f7902a[i9];
    }

    @Override // com.google.android.gms.internal.auth.t, com.google.android.gms.internal.auth.zzee
    public final int zzd() {
        return this.f7901b;
    }
}
