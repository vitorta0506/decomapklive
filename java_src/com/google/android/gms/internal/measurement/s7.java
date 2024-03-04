package com.google.android.gms.internal.measurement;
/* loaded from: classes2.dex */
final class s7 extends w7 {

    /* renamed from: b  reason: collision with root package name */
    private final int f8317b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s7(byte[] bArr, int i9, int i10) {
        super(bArr);
        zzjd.zzj(0, i10, bArr.length);
        this.f8317b = i10;
    }

    @Override // com.google.android.gms.internal.measurement.w7
    protected final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.w7, com.google.android.gms.internal.measurement.zzjd
    public final byte zza(int i9) {
        int i10 = this.f8317b;
        if (((i10 - (i9 + 1)) | i9) < 0) {
            if (i9 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i9);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i9 + ", " + i10);
        }
        return this.f8414a[i9];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.w7, com.google.android.gms.internal.measurement.zzjd
    public final byte zzb(int i9) {
        return this.f8414a[i9];
    }

    @Override // com.google.android.gms.internal.measurement.w7, com.google.android.gms.internal.measurement.zzjd
    public final int zzd() {
        return this.f8317b;
    }
}
