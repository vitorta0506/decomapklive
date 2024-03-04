package sc;

import androidx.annotation.NonNull;
import com.linecorp.linesdk.LineAccessToken;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class a {

    /* loaded from: classes4.dex */
    private static class b implements InvocationHandler {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final rc.a f57844a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final Map<Method, Boolean> f57845b;

        private boolean a(@NonNull Method method) {
            Boolean bool = this.f57845b.get(method);
            if (bool != null) {
                return bool.booleanValue();
            }
            String name = method.getName();
            Class<?>[] parameterTypes = method.getParameterTypes();
            for (Class<?> cls = this.f57844a.getClass(); cls != null; cls = cls.getSuperclass()) {
                if (((e) cls.getDeclaredMethod(name, parameterTypes).getAnnotation(e.class)) != null) {
                    this.f57845b.put(method, Boolean.TRUE);
                    return true;
                }
                continue;
            }
            this.f57845b.put(method, Boolean.FALSE);
            return false;
        }

        private static boolean b(@NonNull Object obj) {
            return (obj instanceof qc.c) && ((qc.c) obj).c().b() == 401;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                Object invoke = method.invoke(this.f57844a, objArr);
                if (a(method) && b(invoke)) {
                    qc.c<LineAccessToken> a10 = this.f57844a.a();
                    if (!a10.g()) {
                        return a10.f() ? a10 : invoke;
                    }
                    try {
                        return method.invoke(this.f57844a, objArr);
                    } catch (InvocationTargetException e10) {
                        throw e10.getTargetException();
                    }
                }
                return invoke;
            } catch (InvocationTargetException e11) {
                throw e11.getTargetException();
            }
        }

        private b(@NonNull rc.a aVar) {
            this.f57844a = aVar;
            this.f57845b = new ConcurrentHashMap(0);
        }
    }

    @NonNull
    public static rc.a a(@NonNull rc.a aVar) {
        return (rc.a) Proxy.newProxyInstance(aVar.getClass().getClassLoader(), new Class[]{rc.a.class}, new b(aVar));
    }
}
