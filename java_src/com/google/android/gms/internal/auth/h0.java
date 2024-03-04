package com.google.android.gms.internal.auth;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* loaded from: classes2.dex */
final class h0 {

    /* renamed from: a  reason: collision with root package name */
    private static final Unsafe f7887a;

    /* renamed from: b  reason: collision with root package name */
    private static final Class f7888b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f7889c;

    /* renamed from: d  reason: collision with root package name */
    private static final g0 f7890d;

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f7891e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f7892f;

    /* renamed from: g  reason: collision with root package name */
    static final boolean f7893g;

    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012e  */
    static {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.h0.<clinit>():void");
    }

    private h0() {
    }

    static Unsafe a() {
        try {
            return (Unsafe) AccessController.doPrivileged(new d0());
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* bridge */ /* synthetic */ void b(Throwable th2) {
        Logger.getLogger(h0.class.getName()).logp(Level.WARNING, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: ".concat(th2.toString()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean c(Class cls) {
        int i9 = m.f7897a;
        try {
            Class cls2 = f7888b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        return f7892f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        return f7891e;
    }

    private static int f(Class cls) {
        if (f7892f) {
            return f7890d.a(cls);
        }
        return -1;
    }

    private static int g(Class cls) {
        if (f7892f) {
            return f7890d.b(cls);
        }
        return -1;
    }

    private static Field h() {
        int i9 = m.f7897a;
        Field i10 = i(Buffer.class, "effectiveDirectAddress");
        if (i10 == null) {
            Field i11 = i(Buffer.class, IntegrityManager.INTEGRITY_TYPE_ADDRESS);
            if (i11 == null || i11.getType() != Long.TYPE) {
                return null;
            }
            return i11;
        }
        return i10;
    }

    private static Field i(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
