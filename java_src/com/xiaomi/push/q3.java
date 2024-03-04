package com.xiaomi.push;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5.dex */
public class q3 {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f37051a;

    /* loaded from: classes5.dex */
    public static class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public final Class<? extends T> f37052a;

        /* renamed from: b  reason: collision with root package name */
        public final T f37053b;
    }

    static {
        HashMap hashMap = new HashMap();
        f37051a = hashMap;
        Class cls = Boolean.TYPE;
        hashMap.put(Boolean.class, cls);
        hashMap.put(Byte.class, Byte.TYPE);
        hashMap.put(Character.class, Character.TYPE);
        hashMap.put(Short.class, Short.TYPE);
        Class cls2 = Integer.TYPE;
        hashMap.put(Integer.class, cls2);
        Class cls3 = Float.TYPE;
        hashMap.put(Float.class, cls3);
        Class cls4 = Long.TYPE;
        hashMap.put(Long.class, cls4);
        hashMap.put(Double.class, Double.TYPE);
        hashMap.put(cls, cls);
        Class cls5 = Byte.TYPE;
        hashMap.put(cls5, cls5);
        Class cls6 = Character.TYPE;
        hashMap.put(cls6, cls6);
        Class cls7 = Short.TYPE;
        hashMap.put(cls7, cls7);
        hashMap.put(cls2, cls2);
        hashMap.put(cls3, cls3);
        hashMap.put(cls4, cls4);
        Class cls8 = Double.TYPE;
        hashMap.put(cls8, cls8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Class<? extends java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r2v4 */
    public static <T> T a(Class<? extends Object> cls, Object obj, String str) {
        Field field = null;
        while (field == null) {
            try {
                field = cls.getDeclaredField(str);
                field.setAccessible(true);
                continue;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
                continue;
            }
            if (cls == 0) {
                throw new NoSuchFieldException();
            }
        }
        field.setAccessible(true);
        return (T) field.get(obj);
    }

    public static <T> T b(Class<? extends Object> cls, String str) {
        try {
            return (T) a(cls, null, str);
        } catch (Exception e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Meet exception when call getStaticField '");
            sb2.append(str);
            sb2.append("' in ");
            sb2.append(cls != null ? cls.getSimpleName() : "");
            sb2.append(", ");
            sb2.append(e10);
            Log.w("JavaCalls", sb2.toString());
            return null;
        }
    }

    public static <T> T c(Class<?> cls, String str, Object... objArr) {
        return (T) h(cls, str, l(objArr)).invoke(null, m(objArr));
    }

    public static <T> T d(Object obj, String str) {
        try {
            return (T) a(obj.getClass(), obj, str);
        } catch (Exception e10) {
            Log.w("JavaCalls", "Meet exception when call getField '" + str + "' in " + obj + ", " + e10);
            return null;
        }
    }

    public static <T> T e(Object obj, String str, Object... objArr) {
        try {
            return (T) n(obj, str, objArr);
        } catch (Exception e10) {
            Log.w("JavaCalls", "Meet exception when call Method '" + str + "' in " + obj + ", " + e10);
            return null;
        }
    }

    public static <T> T f(String str, String str2) {
        try {
            return (T) a(sf.j.c(null, str), null, str2);
        } catch (Exception e10) {
            Log.w("JavaCalls", "Meet exception when call getStaticField '" + str2 + "' in " + str + ", " + e10);
            return null;
        }
    }

    public static <T> T g(String str, String str2, Object... objArr) {
        try {
            return (T) c(sf.j.c(null, str), str2, objArr);
        } catch (Exception e10) {
            Log.w("JavaCalls", "Meet exception when call Method '" + str2 + "' in " + str + ", " + e10);
            return null;
        }
    }

    private static Method h(Class<?> cls, String str, Class<?>... clsArr) {
        Method i9 = i(cls.getDeclaredMethods(), str, clsArr);
        if (i9 != null) {
            i9.setAccessible(true);
            return i9;
        } else if (cls.getSuperclass() != null) {
            return h(cls.getSuperclass(), str, clsArr);
        } else {
            throw new NoSuchMethodException();
        }
    }

    private static Method i(Method[] methodArr, String str, Class<?>[] clsArr) {
        Objects.requireNonNull(str, "Method name must not be null.");
        for (Method method : methodArr) {
            if (method.getName().equals(str) && k(method.getParameterTypes(), clsArr)) {
                return method;
            }
        }
        return null;
    }

    public static void j(Object obj, String str, Object obj2) {
        try {
            o(obj, str, obj2);
        } catch (Exception e10) {
            Log.w("JavaCalls", "Meet exception when call setField '" + str + "' in " + obj + ", " + e10);
        }
    }

    private static boolean k(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr == null) {
            return clsArr2 == null || clsArr2.length == 0;
        } else if (clsArr2 == null) {
            return clsArr.length == 0;
        } else if (clsArr.length != clsArr2.length) {
            return false;
        } else {
            for (int i9 = 0; i9 < clsArr.length; i9++) {
                if (clsArr2[i9] != null && !clsArr[i9].isAssignableFrom(clsArr2[i9])) {
                    Map<Class<?>, Class<?>> map = f37051a;
                    if (!map.containsKey(clsArr[i9]) || !map.get(clsArr[i9]).equals(map.get(clsArr2[i9]))) {
                        return false;
                    }
                }
            }
            return true;
        }
    }

    private static Class<?>[] l(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return null;
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i9 = 0; i9 < objArr.length; i9++) {
            Object obj = objArr[i9];
            if (obj == null || !(obj instanceof a)) {
                clsArr[i9] = obj == null ? null : obj.getClass();
            } else {
                clsArr[i9] = ((a) obj).f37052a;
            }
        }
        return clsArr;
    }

    private static Object[] m(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return null;
        }
        Object[] objArr2 = new Object[objArr.length];
        for (int i9 = 0; i9 < objArr.length; i9++) {
            Object obj = objArr[i9];
            if (obj == null || !(obj instanceof a)) {
                objArr2[i9] = obj;
            } else {
                objArr2[i9] = ((a) obj).f37053b;
            }
        }
        return objArr2;
    }

    public static <T> T n(Object obj, String str, Object... objArr) {
        return (T) h(obj.getClass(), str, l(objArr)).invoke(obj, m(objArr));
    }

    public static void o(Object obj, String str, Object obj2) {
        Class<?> cls = obj.getClass();
        Field field = null;
        while (field == null) {
            try {
                field = cls.getDeclaredField(str);
                continue;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
                continue;
            }
            if (cls == null) {
                throw new NoSuchFieldException();
            }
        }
        field.setAccessible(true);
        field.set(obj, obj2);
    }
}
