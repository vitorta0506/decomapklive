package com.google.android.gms.internal.recaptcha;

import kotlin.UByte;
/* loaded from: classes2.dex */
public abstract class v9 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f9101a = "0123456789abcdef".toCharArray();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v9 g(byte[] bArr) {
        return new t9(bArr);
    }

    public static v9 h(long j10) {
        return new u9(j10);
    }

    public abstract int a();

    public abstract int b();

    public abstract long c();

    abstract boolean d(v9 v9Var);

    public abstract byte[] e();

    public final boolean equals(Object obj) {
        if (obj instanceof v9) {
            v9 v9Var = (v9) obj;
            if (b() == v9Var.b() && d(v9Var)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] f() {
        return e();
    }

    public final int hashCode() {
        if (b() >= 32) {
            return a();
        }
        byte[] f10 = f();
        int i9 = f10[0] & UByte.MAX_VALUE;
        for (int i10 = 1; i10 < f10.length; i10++) {
            i9 |= (f10[i10] & UByte.MAX_VALUE) << (i10 * 8);
        }
        return i9;
    }

    public final String toString() {
        byte[] f10 = f();
        int length = f10.length;
        StringBuilder sb2 = new StringBuilder(length + length);
        for (byte b10 : f10) {
            char[] cArr = f9101a;
            sb2.append(cArr[(b10 >> 4) & 15]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }
}
