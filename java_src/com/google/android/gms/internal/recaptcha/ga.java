package com.google.android.gms.internal.recaptcha;

import java.security.MessageDigest;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class ga extends m9 {

    /* renamed from: b  reason: collision with root package name */
    private final MessageDigest f8705b;

    /* renamed from: c  reason: collision with root package name */
    private final int f8706c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8707d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ga(MessageDigest messageDigest, int i9, fa faVar) {
        this.f8705b = messageDigest;
        this.f8706c = i9;
    }

    private final void d() {
        z7.j(!this.f8707d, "Cannot re-use a Hasher after calling hash() on it");
    }

    @Override // com.google.android.gms.internal.recaptcha.m9
    protected final void b(byte[] bArr, int i9, int i10) {
        d();
        this.f8705b.update(bArr, 0, i10);
    }

    @Override // com.google.android.gms.internal.recaptcha.x9
    public final v9 c() {
        d();
        this.f8707d = true;
        if (this.f8706c == this.f8705b.getDigestLength()) {
            return v9.g(this.f8705b.digest());
        }
        return v9.g(Arrays.copyOf(this.f8705b.digest(), this.f8706c));
    }
}
