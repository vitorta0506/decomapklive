package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class ef extends hf {

    /* renamed from: d  reason: collision with root package name */
    final byte[] f8647d;

    /* renamed from: e  reason: collision with root package name */
    final int f8648e;

    /* renamed from: f  reason: collision with root package name */
    int f8649f;

    /* renamed from: g  reason: collision with root package name */
    int f8650g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ef(int i9) {
        super(null);
        if (i9 >= 0) {
            byte[] bArr = new byte[Math.max(i9, 20)];
            this.f8647d = bArr;
            this.f8648e = bArr.length;
            return;
        }
        throw new IllegalArgumentException("bufferSize must be >= 0");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void P(byte b10) {
        byte[] bArr = this.f8647d;
        int i9 = this.f8649f;
        this.f8649f = i9 + 1;
        bArr[i9] = b10;
        this.f8650g++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void Q(int i9) {
        byte[] bArr = this.f8647d;
        int i10 = this.f8649f;
        int i11 = i10 + 1;
        this.f8649f = i11;
        bArr[i10] = (byte) (i9 & 255);
        int i12 = i11 + 1;
        this.f8649f = i12;
        bArr[i11] = (byte) ((i9 >> 8) & 255);
        int i13 = i12 + 1;
        this.f8649f = i13;
        bArr[i12] = (byte) ((i9 >> 16) & 255);
        this.f8649f = i13 + 1;
        bArr[i13] = (byte) ((i9 >> 24) & 255);
        this.f8650g += 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void R(long j10) {
        byte[] bArr = this.f8647d;
        int i9 = this.f8649f;
        int i10 = i9 + 1;
        this.f8649f = i10;
        bArr[i9] = (byte) (j10 & 255);
        int i11 = i10 + 1;
        this.f8649f = i11;
        bArr[i10] = (byte) ((j10 >> 8) & 255);
        int i12 = i11 + 1;
        this.f8649f = i12;
        bArr[i11] = (byte) ((j10 >> 16) & 255);
        int i13 = i12 + 1;
        this.f8649f = i13;
        bArr[i12] = (byte) (255 & (j10 >> 24));
        int i14 = i13 + 1;
        this.f8649f = i14;
        bArr[i13] = (byte) (((int) (j10 >> 32)) & 255);
        int i15 = i14 + 1;
        this.f8649f = i15;
        bArr[i14] = (byte) (((int) (j10 >> 40)) & 255);
        int i16 = i15 + 1;
        this.f8649f = i16;
        bArr[i15] = (byte) (((int) (j10 >> 48)) & 255);
        this.f8649f = i16 + 1;
        bArr[i16] = (byte) (((int) (j10 >> 56)) & 255);
        this.f8650g += 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void S(int i9) {
        boolean z10;
        z10 = hf.f8743c;
        if (z10) {
            long j10 = this.f8649f;
            while ((i9 & (-128)) != 0) {
                byte[] bArr = this.f8647d;
                int i10 = this.f8649f;
                this.f8649f = i10 + 1;
                vi.s(bArr, i10, (byte) ((i9 & 127) | 128));
                i9 >>>= 7;
            }
            byte[] bArr2 = this.f8647d;
            int i11 = this.f8649f;
            this.f8649f = i11 + 1;
            vi.s(bArr2, i11, (byte) i9);
            this.f8650g += (int) (this.f8649f - j10);
            return;
        }
        while ((i9 & (-128)) != 0) {
            byte[] bArr3 = this.f8647d;
            int i12 = this.f8649f;
            this.f8649f = i12 + 1;
            bArr3[i12] = (byte) ((i9 & 127) | 128);
            this.f8650g++;
            i9 >>>= 7;
        }
        byte[] bArr4 = this.f8647d;
        int i13 = this.f8649f;
        this.f8649f = i13 + 1;
        bArr4[i13] = (byte) i9;
        this.f8650g++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void T(long j10) {
        boolean z10;
        z10 = hf.f8743c;
        if (z10) {
            long j11 = this.f8649f;
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f8647d;
                int i9 = this.f8649f;
                this.f8649f = i9 + 1;
                vi.s(bArr, i9, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f8647d;
            int i10 = this.f8649f;
            this.f8649f = i10 + 1;
            vi.s(bArr2, i10, (byte) j10);
            this.f8650g += (int) (this.f8649f - j11);
            return;
        }
        while ((j10 & (-128)) != 0) {
            byte[] bArr3 = this.f8647d;
            int i11 = this.f8649f;
            this.f8649f = i11 + 1;
            bArr3[i11] = (byte) ((((int) j10) & 127) | 128);
            this.f8650g++;
            j10 >>>= 7;
        }
        byte[] bArr4 = this.f8647d;
        int i12 = this.f8649f;
        this.f8649f = i12 + 1;
        bArr4[i12] = (byte) j10;
        this.f8650g++;
    }

    @Override // com.google.android.gms.internal.recaptcha.hf
    public final int w() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }
}
