package com.google.android.gms.internal.recaptcha;

import java.io.Serializable;
import java.util.Objects;
import kotlin.UByte;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t9 extends v9 implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    final byte[] f9068b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t9(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f9068b = bArr;
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final int a() {
        int length = this.f9068b.length;
        z7.k(length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", length);
        byte[] bArr = this.f9068b;
        return ((bArr[3] & UByte.MAX_VALUE) << 24) | ((bArr[1] & UByte.MAX_VALUE) << 8) | (bArr[0] & UByte.MAX_VALUE) | ((bArr[2] & UByte.MAX_VALUE) << 16);
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final int b() {
        return this.f9068b.length * 8;
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final long c() {
        int length = this.f9068b.length;
        z7.k(length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", length);
        long j10 = this.f9068b[0] & UByte.MAX_VALUE;
        for (int i9 = 1; i9 < Math.min(this.f9068b.length, 8); i9++) {
            j10 |= (this.f9068b[i9] & 255) << (i9 * 8);
        }
        return j10;
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    final boolean d(v9 v9Var) {
        if (this.f9068b.length != v9Var.f().length) {
            return false;
        }
        int i9 = 0;
        boolean z10 = true;
        while (true) {
            byte[] bArr = this.f9068b;
            if (i9 >= bArr.length) {
                return z10;
            }
            z10 &= bArr[i9] == v9Var.f()[i9];
            i9++;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final byte[] e() {
        return (byte[]) this.f9068b.clone();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.v9
    public final byte[] f() {
        return this.f9068b;
    }
}
