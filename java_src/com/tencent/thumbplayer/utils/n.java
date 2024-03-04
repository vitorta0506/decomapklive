package com.tencent.thumbplayer.utils;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes4.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static ArrayList<a> f34482a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f34483a;

        /* renamed from: b  reason: collision with root package name */
        Map<Integer, Method> f34484b;

        private a() {
        }
    }

    @Target({ElementType.METHOD, ElementType.TYPE})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes4.dex */
    public @interface b {
        boolean a() default false;

        boolean b() default false;

        boolean c() default false;
    }

    public static Method a(Class<?> cls, String str, Object[] objArr) {
        Map<Integer, Method> b10 = b(cls);
        if (b10 == null) {
            return null;
        }
        for (Map.Entry<Integer, Method> entry : b10.entrySet()) {
            Method value = entry.getValue();
            if (value != null && str.equals(value.getName()) && a(value, objArr)) {
                return value;
            }
        }
        return null;
    }

    private static boolean a(Class<?> cls) {
        String str;
        Iterator<a> it = f34482a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next != null && (str = next.f34483a) != null && str.equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    public static synchronized boolean a(Class<?> cls, int i9) {
        Method[] methods;
        synchronized (n.class) {
            if (a(cls)) {
                return true;
            }
            HashMap hashMap = new HashMap();
            try {
                for (Method method : cls.getMethods()) {
                    if (((b) method.getAnnotation(b.class)) != null) {
                        hashMap.put(Integer.valueOf(i9), method);
                        i9++;
                    }
                }
                a aVar = new a();
                aVar.f34483a = cls.getName();
                aVar.f34484b = hashMap;
                f34482a.add(aVar);
                return true;
            } catch (Exception unused) {
                hashMap.clear();
                return false;
            }
        }
    }

    private static boolean a(Class<?> cls, Object obj) {
        if (cls.isPrimitive()) {
            try {
                return obj.getClass().getField("TYPE").get(null).equals(cls);
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    private static boolean a(Method method, Object[] objArr) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (objArr == null || objArr.length == 0) {
            return parameterTypes.length == 0;
        } else if (parameterTypes.length != objArr.length) {
            return false;
        } else {
            for (int i9 = 0; i9 < parameterTypes.length; i9++) {
                Class<?> cls = parameterTypes[i9];
                if (objArr[i9] == null) {
                    if (cls.isPrimitive()) {
                        return false;
                    }
                } else if (!cls.isAssignableFrom(objArr[i9].getClass()) && !a(cls, objArr[i9])) {
                    return false;
                }
            }
            return true;
        }
    }

    public static int b(Class<?> cls, String str, Object[] objArr) {
        Map<Integer, Method> b10 = b(cls);
        if (b10 == null) {
            return -1;
        }
        for (Map.Entry<Integer, Method> entry : b10.entrySet()) {
            Method value = entry.getValue();
            if (value != null && str.equals(value.getName()) && a(value, objArr)) {
                return entry.getKey().intValue();
            }
        }
        return -1;
    }

    public static String b(Class<?> cls, int i9) {
        Method method;
        Map<Integer, Method> b10 = b(cls);
        return (b10 == null || (method = b10.get(Integer.valueOf(i9))) == null) ? "unknown" : method.getName();
    }

    private static Map<Integer, Method> b(Class<?> cls) {
        String str;
        Iterator<a> it = f34482a.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next != null && (str = next.f34483a) != null && str.equals(cls.getName())) {
                return next.f34484b;
            }
        }
        return null;
    }

    public static boolean c(Class<?> cls, int i9) {
        Method method;
        Map<Integer, Method> b10 = b(cls);
        if (b10 != null && (method = b10.get(Integer.valueOf(i9))) != null) {
            Class<?>[] exceptionTypes = method.getExceptionTypes();
            if (exceptionTypes != null && exceptionTypes.length > 0) {
                return true;
            }
            b bVar = (b) method.getAnnotation(b.class);
            if (bVar != null) {
                return bVar.a();
            }
        }
        return false;
    }

    public static boolean d(Class<?> cls, int i9) {
        Method method;
        b bVar;
        Map<Integer, Method> b10 = b(cls);
        if (b10 == null || (method = b10.get(Integer.valueOf(i9))) == null || (bVar = (b) method.getAnnotation(b.class)) == null) {
            return false;
        }
        return bVar.b();
    }

    public static boolean e(Class<?> cls, int i9) {
        Method method;
        b bVar;
        Map<Integer, Method> b10 = b(cls);
        if (b10 == null || (method = b10.get(Integer.valueOf(i9))) == null || (bVar = (b) method.getAnnotation(b.class)) == null) {
            return false;
        }
        return bVar.c();
    }

    public static Method f(Class<?> cls, int i9) {
        Map<Integer, Method> b10 = b(cls);
        if (b10 == null) {
            return null;
        }
        return b10.get(Integer.valueOf(i9));
    }
}
