package com.google.android.gms.internal.recaptcha;

import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
enum da implements ba {
    UNSAFE_LITTLE_ENDIAN,
    UNSAFE_BIG_ENDIAN;
    

    /* renamed from: c  reason: collision with root package name */
    private static final Unsafe f8606c;

    /* renamed from: d  reason: collision with root package name */
    private static final int f8607d;

    static {
        Unsafe d10 = d();
        f8606c = d10;
        f8607d = d10.arrayBaseOffset(byte[].class);
        if (d10.arrayIndexScale(byte[].class) != 1) {
            throw new AssertionError();
        }
    }

    public static final long b(byte[] bArr, int i9) {
        return f8606c.getLong(bArr, i9 + f8607d);
    }

    public static final long c(byte[] bArr, int i9) {
        return Long.reverseBytes(f8606c.getLong(bArr, i9 + f8607d));
    }

    private static Unsafe d() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new ca());
        }
    }

    @Override // com.google.android.gms.internal.recaptcha.ba
    public final /* synthetic */ long a(byte[] bArr, int i9) {
        int ordinal = ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                return c(bArr, i9);
            }
            throw null;
        }
        return b(bArr, i9);
    }
}
