package gg;

import androidx.webkit.ProxyConfig;
import com.google.auth.Credentials;
import com.google.common.base.o;
import com.google.common.io.BaseEncoding;
import io.grpc.MethodDescriptor;
import io.grpc.SecurityLevel;
import io.grpc.Status;
import io.grpc.StatusException;
import io.grpc.b;
import io.grpc.s0;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.light.utils.FileUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class a extends io.grpc.b {

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f40058e = Logger.getLogger(a.class.getName());

    /* renamed from: f  reason: collision with root package name */
    private static final b f40059f = h(a.class.getClassLoader());

    /* renamed from: g  reason: collision with root package name */
    private static final Class<? extends Credentials> f40060g = i();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f40061a;

    /* renamed from: b  reason: collision with root package name */
    final Credentials f40062b;

    /* renamed from: c  reason: collision with root package name */
    private s0 f40063c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, List<String>> f40064d;

    /* renamed from: gg.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0433a implements com.google.auth.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b.a f40065a;

        C0433a(b.a aVar) {
            this.f40065a = aVar;
        }

        @Override // com.google.auth.a
        public void a(Map<String, List<String>> map) {
            s0 s0Var;
            try {
                synchronized (a.this) {
                    if (a.this.f40064d == null || a.this.f40064d != map) {
                        a.this.f40063c = a.l(map);
                        a.this.f40064d = map;
                    }
                    s0Var = a.this.f40063c;
                }
                this.f40065a.a(s0Var);
            } catch (Throwable th2) {
                this.f40065a.b(Status.f41712n.r("Failed to convert credential metadata").q(th2));
            }
        }

        @Override // com.google.auth.a
        public void onFailure(Throwable th2) {
            if (th2 instanceof IOException) {
                this.f40065a.b(Status.f41719u.r("Credentials failed to obtain metadata").q(th2));
            } else {
                this.f40065a.b(Status.f41712n.r("Failed computing credential metadata").q(th2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Class<? extends Credentials> f40067a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f40068b;

        /* renamed from: c  reason: collision with root package name */
        private final Method f40069c;

        /* renamed from: d  reason: collision with root package name */
        private final Method f40070d;

        /* renamed from: e  reason: collision with root package name */
        private final List<c> f40071e;

        public b(Class<?> cls, ClassLoader classLoader) throws ClassNotFoundException, NoSuchMethodException {
            Class asSubclass = cls.asSubclass(Credentials.class);
            this.f40067a = asSubclass;
            this.f40070d = asSubclass.getMethod("getScopes", new Class[0]);
            Method declaredMethod = Class.forName("com.google.auth.oauth2.ServiceAccountJwtAccessCredentials", false, classLoader).asSubclass(Credentials.class).getDeclaredMethod("newBuilder", new Class[0]);
            this.f40068b = declaredMethod;
            Class<?> returnType = declaredMethod.getReturnType();
            this.f40069c = returnType.getMethod("build", new Class[0]);
            ArrayList arrayList = new ArrayList();
            this.f40071e = arrayList;
            Method method = asSubclass.getMethod("getClientId", new Class[0]);
            arrayList.add(new c(method, returnType.getMethod("setClientId", method.getReturnType()), null));
            Method method2 = asSubclass.getMethod("getClientEmail", new Class[0]);
            arrayList.add(new c(method2, returnType.getMethod("setClientEmail", method2.getReturnType()), null));
            Method method3 = asSubclass.getMethod("getPrivateKey", new Class[0]);
            arrayList.add(new c(method3, returnType.getMethod("setPrivateKey", method3.getReturnType()), null));
            Method method4 = asSubclass.getMethod("getPrivateKeyId", new Class[0]);
            arrayList.add(new c(method4, returnType.getMethod("setPrivateKeyId", method4.getReturnType()), null));
        }

        public Credentials a(Credentials credentials) {
            Credentials credentials2;
            Throwable e10;
            if (this.f40067a.isInstance(credentials)) {
                try {
                    credentials2 = this.f40067a.cast(credentials);
                } catch (IllegalAccessException | InvocationTargetException e11) {
                    credentials2 = credentials;
                    e10 = e11;
                }
                try {
                    if (((Collection) this.f40070d.invoke(credentials2, new Object[0])).size() != 0) {
                        return credentials2;
                    }
                    Object invoke = this.f40068b.invoke(null, new Object[0]);
                    for (c cVar : this.f40071e) {
                        cVar.b(credentials2, invoke);
                    }
                    return (Credentials) this.f40069c.invoke(invoke, new Object[0]);
                } catch (IllegalAccessException e12) {
                    e10 = e12;
                    a.f40058e.log(Level.WARNING, "Failed converting service account credential to JWT. This is unexpected", e10);
                    return credentials2;
                } catch (InvocationTargetException e13) {
                    e10 = e13;
                    a.f40058e.log(Level.WARNING, "Failed converting service account credential to JWT. This is unexpected", e10);
                    return credentials2;
                }
            }
            return credentials;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final Method f40072a;

        /* renamed from: b  reason: collision with root package name */
        private final Method f40073b;

        /* synthetic */ c(Method method, Method method2, C0433a c0433a) {
            this(method, method2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(Credentials credentials, Object obj) throws InvocationTargetException, IllegalAccessException {
            this.f40073b.invoke(obj, this.f40072a.invoke(credentials, new Object[0]));
        }

        private c(Method method, Method method2) {
            this.f40072a = method;
            this.f40073b = method2;
        }
    }

    public a(Credentials credentials) {
        this(credentials, f40059f);
    }

    static b h(ClassLoader classLoader) {
        try {
            return new b(Class.forName("com.google.auth.oauth2.ServiceAccountCredentials", false, classLoader), classLoader);
        } catch (ClassNotFoundException | NoSuchMethodException e10) {
            f40058e.log(Level.WARNING, "Failed to create JWT helper. This is unexpected", e10);
            return null;
        }
    }

    private static Class<? extends Credentials> i() {
        try {
            return Class.forName("com.google.auth.oauth2.GoogleCredentials").asSubclass(Credentials.class);
        } catch (ClassNotFoundException e10) {
            f40058e.log(Level.FINE, "Failed to load GoogleCredentials", (Throwable) e10);
            return null;
        }
    }

    private static URI j(URI uri) throws StatusException {
        try {
            return new URI(uri.getScheme(), uri.getUserInfo(), uri.getHost(), -1, uri.getPath(), uri.getQuery(), uri.getFragment());
        } catch (URISyntaxException e10) {
            throw Status.f41712n.r("Unable to construct service URI after removing port").q(e10).c();
        }
    }

    private static URI k(String str, MethodDescriptor<?, ?> methodDescriptor) throws StatusException {
        try {
            URI uri = new URI(ProxyConfig.MATCH_HTTPS, str, FileUtils.RES_PREFIX_STORAGE + methodDescriptor.e(), null, null);
            return uri.getPort() == 443 ? j(uri) : uri;
        } catch (URISyntaxException e10) {
            throw Status.f41712n.r("Unable to construct service URI for auth").q(e10).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static s0 l(Map<String, List<String>> map) {
        s0 s0Var = new s0();
        if (map != null) {
            for (String str : map.keySet()) {
                if (str.endsWith("-bin")) {
                    s0.i f10 = s0.i.f(str, s0.f45382d);
                    for (String str2 : map.get(str)) {
                        s0Var.t(f10, BaseEncoding.b().d(str2));
                    }
                } else {
                    s0.i e10 = s0.i.e(str, s0.f45383e);
                    for (String str3 : map.get(str)) {
                        s0Var.t(e10, str3);
                    }
                }
            }
        }
        return s0Var;
    }

    @Override // io.grpc.b
    public void a(b.AbstractC0464b abstractC0464b, Executor executor, b.a aVar) {
        SecurityLevel c10 = abstractC0464b.c();
        if (this.f40061a && c10 != SecurityLevel.PRIVACY_AND_INTEGRITY) {
            Status status = Status.f41712n;
            aVar.b(status.r("Credentials require channel with PRIVACY_AND_INTEGRITY security level. Observed security level: " + c10));
            return;
        }
        try {
            this.f40062b.getRequestMetadata(k((String) o.t(abstractC0464b.a(), "authority"), abstractC0464b.b()), executor, new C0433a(aVar));
        } catch (StatusException e10) {
            aVar.b(e10.getStatus());
        }
    }

    a(Credentials credentials, b bVar) {
        o.t(credentials, "creds");
        Class<? extends Credentials> cls = f40060g;
        boolean isInstance = cls != null ? cls.isInstance(credentials) : false;
        credentials = bVar != null ? bVar.a(credentials) : credentials;
        this.f40061a = isInstance;
        this.f40062b = credentials;
    }
}
