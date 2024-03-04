package ig;

import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
final class u {

    /* renamed from: a  reason: collision with root package name */
    private static Throwable f41274a;

    /* renamed from: b  reason: collision with root package name */
    private static Throwable f41275b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        static final Throwable f41276a = a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: ig.u$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0459a implements PrivilegedExceptionAction<Method> {
            C0459a() {
            }

            @Override // java.security.PrivilegedExceptionAction
            /* renamed from: a */
            public Method run() throws Exception {
                return SSLEngine.class.getMethod("getApplicationProtocol", new Class[0]);
            }
        }

        static Throwable a() {
            try {
                SSLContext sSLContext = SSLContext.getInstance(SSLSocketFactory.TLS);
                sSLContext.init(null, null, null);
                ((Method) AccessController.doPrivileged(new C0459a())).invoke(sSLContext.createSSLEngine(), new Object[0]);
                return null;
            } catch (Throwable th2) {
                return th2;
            }
        }
    }

    static Throwable a() {
        return a.f41276a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized Throwable b() {
        Throwable th2;
        synchronized (u.class) {
            if (f41274a == null) {
                d();
            }
            th2 = f41274a;
        }
        return th2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c() {
        return a() == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized boolean d() {
        synchronized (u.class) {
            try {
                Class.forName("org.eclipse.jetty.alpn.ALPN", true, null);
            } catch (ClassNotFoundException e10) {
                f41274a = e10;
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized boolean e() {
        synchronized (u.class) {
            try {
                Class.forName("org.eclipse.jetty.npn.NextProtoNego", true, null);
            } catch (ClassNotFoundException e10) {
                f41275b = e10;
                return false;
            }
        }
        return true;
    }
}
