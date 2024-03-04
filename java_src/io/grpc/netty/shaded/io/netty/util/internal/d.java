package io.grpc.netty.shaded.io.netty.util.internal;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private static final long f45039a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f45040b;

    /* renamed from: c  reason: collision with root package name */
    private static final Field f45041c;

    /* renamed from: d  reason: collision with root package name */
    private static final io.grpc.netty.shaded.io.netty.util.internal.logging.b f45042d = io.grpc.netty.shaded.io.netty.util.internal.logging.c.b(d.class);

    /* loaded from: classes5.dex */
    static class a implements PrivilegedAction<Object> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f45043a;

        a(ByteBuffer byteBuffer) {
            this.f45043a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                Field declaredField = this.f45043a.getClass().getDeclaredField("cleaner");
                if (!t.T()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (Throwable th2) {
                return th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements PrivilegedAction<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteBuffer f45044a;

        b(ByteBuffer byteBuffer) {
            this.f45044a = byteBuffer;
        }

        @Override // java.security.PrivilegedAction
        /* renamed from: a */
        public Throwable run() {
            try {
                d.c(this.f45044a);
                return null;
            } catch (Throwable th2) {
                return th2;
            }
        }
    }

    static {
        Field field;
        Method method;
        Object doPrivileged;
        Object obj;
        long j10;
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(1);
        long j11 = -1;
        Throwable th2 = null;
        try {
            doPrivileged = AccessController.doPrivileged(new a(allocateDirect));
        } catch (Throwable th3) {
            field = null;
            method = null;
            th2 = th3;
        }
        if (!(doPrivileged instanceof Throwable)) {
            field = (Field) doPrivileged;
            if (t.T()) {
                j10 = u.X(field);
                obj = u.z(allocateDirect, j10);
            } else {
                obj = field.get(allocateDirect);
                j10 = -1;
            }
            method = obj.getClass().getDeclaredMethod("clean", new Class[0]);
            method.invoke(obj, new Object[0]);
            j11 = j10;
            if (th2 == null) {
                f45042d.debug("java.nio.ByteBuffer.cleaner(): available");
            } else {
                f45042d.debug("java.nio.ByteBuffer.cleaner(): unavailable", th2);
            }
            f45041c = field;
            f45039a = j11;
            f45040b = method;
            return;
        }
        throw ((Throwable) doPrivileged);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(ByteBuffer byteBuffer) throws Exception {
        Object z10;
        long j10 = f45039a;
        if (j10 == -1) {
            z10 = f45041c.get(byteBuffer);
        } else {
            z10 = u.z(byteBuffer, j10);
        }
        if (z10 != null) {
            f45040b.invoke(z10, new Object[0]);
        }
    }

    private static void d(ByteBuffer byteBuffer) {
        Throwable th2 = (Throwable) AccessController.doPrivileged(new b(byteBuffer));
        if (th2 != null) {
            u.l0(th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        return (f45039a == -1 && f45041c == null) ? false : true;
    }

    @Override // io.grpc.netty.shaded.io.netty.util.internal.c
    public void a(ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect()) {
            if (System.getSecurityManager() == null) {
                try {
                    c(byteBuffer);
                    return;
                } catch (Throwable th2) {
                    u.l0(th2);
                    return;
                }
            }
            d(byteBuffer);
        }
    }
}
