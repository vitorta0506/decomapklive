package com.meizu.cloud.pushsdk.b.b;

import com.meizu.cloud.pushinternal.DebugLogger;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, Method> f28216a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final com.meizu.cloud.pushsdk.b.b.a f28217b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28218c;

    /* renamed from: d  reason: collision with root package name */
    private Class<?>[] f28219d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(com.meizu.cloud.pushsdk.b.b.a aVar, String str, Class<?>... clsArr) {
        this.f28217b = aVar;
        this.f28218c = str;
        this.f28219d = clsArr;
    }

    private Class<?> a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        return cls.isPrimitive() ? Boolean.TYPE == cls ? Boolean.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : Byte.TYPE == cls ? Byte.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Character.TYPE == cls ? Character.class : Void.TYPE == cls ? Void.class : cls : cls;
    }

    private Method a() throws NoSuchMethodException, ClassNotFoundException {
        Method[] methods;
        Method[] declaredMethods;
        Class<?> a10 = this.f28217b.a();
        for (Method method : a10.getMethods()) {
            if (a(method, this.f28218c, this.f28219d)) {
                return method;
            }
        }
        for (Method method2 : a10.getDeclaredMethods()) {
            if (a(method2, this.f28218c, this.f28219d)) {
                return method2;
            }
        }
        throw new NoSuchMethodException("No similar method " + this.f28218c + " with params " + Arrays.toString(this.f28219d) + " could be found on type " + a10);
    }

    private boolean a(Method method, String str, Class<?>[] clsArr) {
        return method.getName().equals(str) && a(method.getParameterTypes(), clsArr);
    }

    private boolean a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr.length == clsArr2.length) {
            for (int i9 = 0; i9 < clsArr2.length; i9++) {
                if (clsArr2[i9] != a.class && !a(clsArr[i9]).isAssignableFrom(a(clsArr2[i9]))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private String b() throws ClassNotFoundException {
        StringBuilder sb2 = new StringBuilder(this.f28217b.a().getName());
        sb2.append(this.f28218c);
        for (Class<?> cls : this.f28219d) {
            sb2.append(cls.getName());
        }
        return sb2.toString();
    }

    public <T> d<T> a(Object obj, Object... objArr) {
        d<T> dVar = new d<>();
        try {
            String b10 = b();
            Method method = f28216a.get(b10);
            if (method == null) {
                if (this.f28219d.length == objArr.length) {
                    method = this.f28217b.a().getMethod(this.f28218c, this.f28219d);
                } else {
                    if (objArr.length > 0) {
                        this.f28219d = new Class[objArr.length];
                        for (int i9 = 0; i9 < objArr.length; i9++) {
                            this.f28219d[i9] = objArr[i9].getClass();
                        }
                    }
                    method = a();
                }
                f28216a.put(b10, method);
            }
            method.setAccessible(true);
            dVar.f28221b = (T) method.invoke(obj, objArr);
            dVar.f28220a = true;
        } catch (Exception e10) {
            DebugLogger.e("ReflectMethod", "invoke", e10);
        }
        return dVar;
    }

    public <T> d<T> a(Object... objArr) {
        try {
            return a(this.f28217b.a(), objArr);
        } catch (ClassNotFoundException unused) {
            return new d<>();
        }
    }
}
