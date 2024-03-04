package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d8 extends f8 {

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f8032d;

    /* renamed from: e  reason: collision with root package name */
    private final int f8033e;

    /* renamed from: f  reason: collision with root package name */
    private int f8034f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d8(byte[] bArr, int i9, int i10) {
        super(null);
        Objects.requireNonNull(bArr, "buffer");
        int length = bArr.length;
        if (((length - i10) | i10) >= 0) {
            this.f8032d = bArr;
            this.f8034f = 0;
            this.f8033e = i10;
            return;
        }
        throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i10)));
    }

    public final void E(byte[] bArr, int i9, int i10) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.f8032d, this.f8034f, i10);
            this.f8034f += i10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8034f), Integer.valueOf(this.f8033e), Integer.valueOf(i10)), e10);
        }
    }

    public final void F(String str) throws IOException {
        int i9 = this.f8034f;
        try {
            int a10 = f8.a(str.length() * 3);
            int a11 = f8.a(str.length());
            if (a11 == a10) {
                int i10 = i9 + a11;
                this.f8034f = i10;
                int b10 = rb.b(str, this.f8032d, i10, this.f8033e - i10);
                this.f8034f = i9;
                u((b10 - i9) - a11);
                this.f8034f = b10;
                return;
            }
            u(rb.c(str));
            byte[] bArr = this.f8032d;
            int i11 = this.f8034f;
            this.f8034f = rb.b(str, bArr, i11, this.f8033e - i11);
        } catch (qb e10) {
            this.f8034f = i9;
            e(str, e10);
        } catch (IndexOutOfBoundsException e11) {
            throw new zzjj(e11);
        }
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final int g() {
        return this.f8033e - this.f8034f;
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void h(byte b10) throws IOException {
        try {
            byte[] bArr = this.f8032d;
            int i9 = this.f8034f;
            this.f8034f = i9 + 1;
            bArr[i9] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8034f), Integer.valueOf(this.f8033e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void i(int i9, boolean z10) throws IOException {
        u(i9 << 3);
        h(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void j(int i9, zzjd zzjdVar) throws IOException {
        u((i9 << 3) | 2);
        u(zzjdVar.zzd());
        zzjdVar.zzh(this);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void k(int i9, int i10) throws IOException {
        u((i9 << 3) | 5);
        l(i10);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void l(int i9) throws IOException {
        try {
            byte[] bArr = this.f8032d;
            int i10 = this.f8034f;
            int i11 = i10 + 1;
            this.f8034f = i11;
            bArr[i10] = (byte) (i9 & 255);
            int i12 = i11 + 1;
            this.f8034f = i12;
            bArr[i11] = (byte) ((i9 >> 8) & 255);
            int i13 = i12 + 1;
            this.f8034f = i13;
            bArr[i12] = (byte) ((i9 >> 16) & 255);
            this.f8034f = i13 + 1;
            bArr[i13] = (byte) ((i9 >> 24) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8034f), Integer.valueOf(this.f8033e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void m(int i9, long j10) throws IOException {
        u((i9 << 3) | 1);
        n(j10);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void n(long j10) throws IOException {
        try {
            byte[] bArr = this.f8032d;
            int i9 = this.f8034f;
            int i10 = i9 + 1;
            this.f8034f = i10;
            bArr[i9] = (byte) (((int) j10) & 255);
            int i11 = i10 + 1;
            this.f8034f = i11;
            bArr[i10] = (byte) (((int) (j10 >> 8)) & 255);
            int i12 = i11 + 1;
            this.f8034f = i12;
            bArr[i11] = (byte) (((int) (j10 >> 16)) & 255);
            int i13 = i12 + 1;
            this.f8034f = i13;
            bArr[i12] = (byte) (((int) (j10 >> 24)) & 255);
            int i14 = i13 + 1;
            this.f8034f = i14;
            bArr[i13] = (byte) (((int) (j10 >> 32)) & 255);
            int i15 = i14 + 1;
            this.f8034f = i15;
            bArr[i14] = (byte) (((int) (j10 >> 40)) & 255);
            int i16 = i15 + 1;
            this.f8034f = i16;
            bArr[i15] = (byte) (((int) (j10 >> 48)) & 255);
            this.f8034f = i16 + 1;
            bArr[i16] = (byte) (((int) (j10 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8034f), Integer.valueOf(this.f8033e), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void o(int i9, int i10) throws IOException {
        u(i9 << 3);
        p(i10);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void p(int i9) throws IOException {
        if (i9 >= 0) {
            u(i9);
        } else {
            w(i9);
        }
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void q(byte[] bArr, int i9, int i10) throws IOException {
        E(bArr, 0, i10);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void r(int i9, String str) throws IOException {
        u((i9 << 3) | 2);
        F(str);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void s(int i9, int i10) throws IOException {
        u((i9 << 3) | i10);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void t(int i9, int i10) throws IOException {
        u(i9 << 3);
        u(i10);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void u(int i9) throws IOException {
        while ((i9 & (-128)) != 0) {
            try {
                byte[] bArr = this.f8032d;
                int i10 = this.f8034f;
                this.f8034f = i10 + 1;
                bArr[i10] = (byte) ((i9 & 127) | 128);
                i9 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8034f), Integer.valueOf(this.f8033e), 1), e10);
            }
        }
        byte[] bArr2 = this.f8032d;
        int i11 = this.f8034f;
        this.f8034f = i11 + 1;
        bArr2[i11] = (byte) i9;
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void v(int i9, long j10) throws IOException {
        u(i9 << 3);
        w(j10);
    }

    @Override // com.google.android.gms.internal.measurement.f8
    public final void w(long j10) throws IOException {
        boolean z10;
        z10 = f8.f8075c;
        if (z10 && this.f8033e - this.f8034f >= 10) {
            while ((j10 & (-128)) != 0) {
                byte[] bArr = this.f8032d;
                int i9 = this.f8034f;
                this.f8034f = i9 + 1;
                lb.s(bArr, i9, (byte) ((((int) j10) & 127) | 128));
                j10 >>>= 7;
            }
            byte[] bArr2 = this.f8032d;
            int i10 = this.f8034f;
            this.f8034f = i10 + 1;
            lb.s(bArr2, i10, (byte) j10);
            return;
        }
        while ((j10 & (-128)) != 0) {
            try {
                byte[] bArr3 = this.f8032d;
                int i11 = this.f8034f;
                this.f8034f = i11 + 1;
                bArr3[i11] = (byte) ((((int) j10) & 127) | 128);
                j10 >>>= 7;
            } catch (IndexOutOfBoundsException e10) {
                throw new zzjj(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8034f), Integer.valueOf(this.f8033e), 1), e10);
            }
        }
        byte[] bArr4 = this.f8032d;
        int i12 = this.f8034f;
        this.f8034f = i12 + 1;
        bArr4[i12] = (byte) j10;
    }
}
