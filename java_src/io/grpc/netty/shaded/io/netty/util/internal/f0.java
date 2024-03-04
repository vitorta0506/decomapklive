package io.grpc.netty.shaded.io.netty.util.internal;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public abstract class f0 {

    /* renamed from: a  reason: collision with root package name */
    private static final f0 f45056a = new a();

    /* loaded from: classes5.dex */
    static class a extends f0 {
        a() {
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.f0
        public boolean e(Object obj) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class b extends f0 {

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f45057b;

        b(Class<?> cls) {
            this.f45057b = cls;
        }

        @Override // io.grpc.netty.shaded.io.netty.util.internal.f0
        public boolean e(Object obj) {
            return this.f45057b.isInstance(obj);
        }
    }

    f0() {
    }

    private static Class<?> a(Class<?> cls, String str) {
        throw new IllegalStateException("cannot determine the type of the type parameter '" + str + "': " + cls);
    }

    public static f0 b(Object obj, Class<?> cls, String str) {
        Map<Class<?>, Map<String, f0>> r10 = k.e().r();
        Class<?> cls2 = obj.getClass();
        Map<String, f0> map = r10.get(cls2);
        if (map == null) {
            map = new HashMap<>();
            r10.put(cls2, map);
        }
        f0 f0Var = map.get(str);
        if (f0Var == null) {
            f0 d10 = d(c(obj, cls, str));
            map.put(str, d10);
            return d10;
        }
        return f0Var;
    }

    private static Class<?> c(Object obj, Class<?> cls, String str) {
        Class<?> cls2 = obj.getClass();
        Class<?> cls3 = cls2;
        while (true) {
            if (cls3.getSuperclass() == cls) {
                int i9 = -1;
                TypeVariable<Class<? super Object>>[] typeParameters = cls3.getSuperclass().getTypeParameters();
                int i10 = 0;
                while (true) {
                    if (i10 >= typeParameters.length) {
                        break;
                    } else if (str.equals(typeParameters[i10].getName())) {
                        i9 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i9 >= 0) {
                    Type genericSuperclass = cls3.getGenericSuperclass();
                    if (!(genericSuperclass instanceof ParameterizedType)) {
                        return Object.class;
                    }
                    Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[i9];
                    if (type instanceof ParameterizedType) {
                        type = ((ParameterizedType) type).getRawType();
                    }
                    if (type instanceof Class) {
                        return (Class) type;
                    }
                    if (type instanceof GenericArrayType) {
                        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                        if (genericComponentType instanceof ParameterizedType) {
                            genericComponentType = ((ParameterizedType) genericComponentType).getRawType();
                        }
                        if (genericComponentType instanceof Class) {
                            return Array.newInstance((Class) genericComponentType, 0).getClass();
                        }
                    }
                    if (type instanceof TypeVariable) {
                        TypeVariable typeVariable = (TypeVariable) type;
                        if (!(typeVariable.getGenericDeclaration() instanceof Class)) {
                            return Object.class;
                        }
                        Class<?> cls4 = (Class) typeVariable.getGenericDeclaration();
                        String name = typeVariable.getName();
                        if (!cls4.isAssignableFrom(cls2)) {
                            return Object.class;
                        }
                        cls3 = cls2;
                        str = name;
                        cls = cls4;
                    } else {
                        return a(cls2, str);
                    }
                } else {
                    throw new IllegalStateException("unknown type parameter '" + str + "': " + cls);
                }
            } else {
                cls3 = cls3.getSuperclass();
                if (cls3 == null) {
                    return a(cls2, str);
                }
            }
        }
    }

    public static f0 d(Class<?> cls) {
        Map<Class<?>, f0> s10 = k.e().s();
        f0 f0Var = s10.get(cls);
        if (f0Var == null) {
            if (cls == Object.class) {
                f0Var = f45056a;
            } else {
                f0Var = new b(cls);
            }
            s10.put(cls, f0Var);
        }
        return f0Var;
    }

    public abstract boolean e(Object obj);
}
