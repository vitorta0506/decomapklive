package com.google.api.client.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class m {

    /* renamed from: e  reason: collision with root package name */
    private static final Map<Field, m> f11161e = new WeakHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f11162a;

    /* renamed from: b  reason: collision with root package name */
    private final Field f11163b;

    /* renamed from: c  reason: collision with root package name */
    private final Method[] f11164c;

    /* renamed from: d  reason: collision with root package name */
    private final String f11165d;

    m(Field field, String str) {
        this.f11163b = field;
        this.f11165d = str == null ? null : str.intern();
        this.f11162a = j.e(f());
        this.f11164c = n(field);
    }

    public static Object c(Field field, Object obj) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public static m j(Enum<?> r52) {
        try {
            m k10 = k(r52.getClass().getField(r52.name()));
            z.c(k10 != null, "enum constant missing @Value or @NullValue annotation: %s", r52);
            return k10;
        } catch (NoSuchFieldException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static m k(Field field) {
        String str = null;
        if (field == null) {
            return null;
        }
        Map<Field, m> map = f11161e;
        synchronized (map) {
            m mVar = map.get(field);
            boolean isEnumConstant = field.isEnumConstant();
            if (mVar == null && (isEnumConstant || !Modifier.isStatic(field.getModifiers()))) {
                if (isEnumConstant) {
                    h0 h0Var = (h0) field.getAnnotation(h0.class);
                    if (h0Var != null) {
                        str = h0Var.value();
                    } else if (((v) field.getAnnotation(v.class)) == null) {
                        return null;
                    }
                } else {
                    p pVar = (p) field.getAnnotation(p.class);
                    if (pVar == null) {
                        return null;
                    }
                    str = pVar.value();
                    field.setAccessible(true);
                }
                if ("##default".equals(str)) {
                    str = field.getName();
                }
                mVar = new m(field, str);
                map.put(field, mVar);
            }
            return mVar;
        }
    }

    public static void l(Field field, Object obj, Object obj2) {
        if (Modifier.isFinal(field.getModifiers())) {
            Object c10 = c(field, obj);
            if (obj2 == null) {
                if (c10 == null) {
                    return;
                }
            } else if (obj2.equals(c10)) {
                return;
            }
            throw new IllegalArgumentException("expected final value <" + c10 + "> but was <" + obj2 + "> on " + field.getName() + " field in " + obj.getClass().getName());
        }
        try {
            field.set(obj, obj2);
        } catch (IllegalAccessException e10) {
            throw new IllegalArgumentException(e10);
        } catch (SecurityException e11) {
            throw new IllegalArgumentException(e11);
        }
    }

    private Method[] n(Field field) {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        for (Method method : field.getDeclaringClass().getDeclaredMethods()) {
            if (com.google.common.base.c.f(method.getName()).equals("set" + com.google.common.base.c.f(field.getName())) && method.getParameterTypes().length == 1) {
                arrayList.add(method);
            }
        }
        return (Method[]) arrayList.toArray(new Method[0]);
    }

    public <T extends Enum<T>> T a() {
        return (T) Enum.valueOf(this.f11163b.getDeclaringClass(), this.f11163b.getName());
    }

    public Field b() {
        return this.f11163b;
    }

    public Type d() {
        return this.f11163b.getGenericType();
    }

    public String e() {
        return this.f11165d;
    }

    public Class<?> f() {
        return this.f11163b.getType();
    }

    public Object g(Object obj) {
        return c(this.f11163b, obj);
    }

    public boolean h() {
        return Modifier.isFinal(this.f11163b.getModifiers());
    }

    public boolean i() {
        return this.f11162a;
    }

    public void m(Object obj, Object obj2) {
        Method[] methodArr = this.f11164c;
        if (methodArr.length > 0) {
            for (Method method : methodArr) {
                if (obj2 == null || method.getParameterTypes()[0].isAssignableFrom(obj2.getClass())) {
                    try {
                        method.invoke(obj, obj2);
                        return;
                    } catch (IllegalAccessException | InvocationTargetException unused) {
                        continue;
                    }
                }
            }
        }
        l(this.f11163b, obj, obj2);
    }
}
