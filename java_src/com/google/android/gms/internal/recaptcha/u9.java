package com.google.android.gms.internal.recaptcha;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class u9 extends v9 implements Serializable {

    /* renamed from: b  reason: collision with root package name */
    final long f9085b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u9(long j10) {
        this.f9085b = j10;
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final int a() {
        return (int) this.f9085b;
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final int b() {
        return 64;
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final long c() {
        return this.f9085b;
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    final boolean d(v9 v9Var) {
        return this.f9085b == v9Var.c();
    }

    @Override // com.google.android.gms.internal.recaptcha.v9
    public final byte[] e() {
        long j10 = this.f9085b;
        return new byte[]{(byte) j10, (byte) (j10 >> 8), (byte) (j10 >> 16), (byte) (j10 >> 24), (byte) (j10 >> 32), (byte) (j10 >> 40), (byte) (j10 >> 48), (byte) (j10 >> 56)};
    }
}
