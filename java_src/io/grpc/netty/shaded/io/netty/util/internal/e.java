package io.grpc.netty.shaded.io.netty.util.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45052a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f45053b;

    /* loaded from: classes5.dex */
    static class a implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f45054a;

        a(ByteBuffer byteBuffer) {
            this.f45054a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Unsafe unsafe = u.f45205r;
                Method declaredMethod = unsafe.getClass().getDeclaredMethod("invokeCleaner", ByteBuffer.class);
                declaredMethod.invoke(unsafe, this.f45054a);
                return declaredMethod;
            } catch (IllegalAccessException e10) {
                return e10;
            } catch (NoSuchMethodException e11) {
                return e11;
            } catch (InvocationTargetException e12) {
                return e12;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements PrivilegedAction<Exception> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f45055a;

        b(ByteBuffer byteBuffer) {
            this.f45055a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Exception run() {
            try {
                e.f45053b.invoke(u.f45205r, this.f45055a);
                return null;
            } catch (IllegalAccessException e10) {
                return e10;
            } catch (InvocationTargetException e11) {
                return e11;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    static {
        /*
            java.lang.Class<io.grpc.netty.shaded.io.netty.util.internal.e> r0 = io.grpc.netty.shaded.io.netty.util.internal.e.class
            io.grpc.netty.shaded.io.netty.util.internal.logging.b r0 = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(r0)
            io.grpc.netty.shaded.io.netty.util.internal.e.f45052a = r0
            boolean r1 = io.grpc.netty.shaded.io.netty.util.internal.u.H()
            r2 = 0
            if (r1 == 0) goto L27
            r1 = 1
            java.nio.ByteBuffer r1 = java.nio.ByteBuffer.allocateDirect(r1)
            io.grpc.netty.shaded.io.netty.util.internal.e$a r3 = new io.grpc.netty.shaded.io.netty.util.internal.e$a
            r3.<init>(r1)
            java.lang.Object r1 = java.security.AccessController.doPrivileged(r3)
            boolean r3 = r1 instanceof java.lang.Throwable
            if (r3 == 0) goto L24
            java.lang.Throwable r1 = (java.lang.Throwable) r1
            goto L2e
        L24:
            java.lang.reflect.Method r1 = (java.lang.reflect.Method) r1
            goto L31
        L27:
            java.lang.UnsupportedOperationException r1 = new java.lang.UnsupportedOperationException
            java.lang.String r3 = "sun.misc.Unsafe unavailable"
            r1.<init>(r3)
        L2e:
            r4 = r2
            r2 = r1
            r1 = r4
        L31:
            if (r2 != 0) goto L39
            java.lang.String r2 = "java.nio.ByteBuffer.cleaner(): available"
            r0.debug(r2)
            goto L3e
        L39:
            java.lang.String r3 = "java.nio.ByteBuffer.cleaner(): unavailable"
            r0.debug(r3, r2)
        L3e:
            io.grpc.netty.shaded.io.netty.util.internal.e.f45053b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.netty.shaded.io.netty.util.internal.e.<clinit>():void");
    }

    private static void c(ByteBuffer byteBuffer) {
        Exception exc = (Exception) AccessController.doPrivileged(new b(byteBuffer));
        if (exc != null) {
            u.l0(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        return f45053b != null;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.c
    public void a(ByteBuffer byteBuffer) {
        if (System.getSecurityManager() == null) {
            try {
                f45053b.invoke(u.f45205r, byteBuffer);
                return;
            } catch (Throwable th2) {
                u.l0(th2);
                return;
            }
        }
        c(byteBuffer);
    }
}
