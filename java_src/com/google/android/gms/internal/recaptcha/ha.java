package com.google.android.gms.internal.recaptcha;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
final class ha extends n9 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final MessageDigest f8731a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8732b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8733c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8734d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ha(String str, String str2) {
        MessageDigest e10 = e("SHA-256");
        this.f8731a = e10;
        this.f8732b = e10.getDigestLength();
        this.f8734d = "Hashing.sha256()";
        this.f8733c = f(e10);
    }

    private static MessageDigest e(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    private static boolean f(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.w9
    public final x9 l() {
        if (this.f8733c) {
            try {
                return new ga((MessageDigest) this.f8731a.clone(), this.f8732b, null);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new ga(e(this.f8731a.getAlgorithm()), this.f8732b, null);
    }

    public final String toString() {
        return this.f8734d;
    }
}
