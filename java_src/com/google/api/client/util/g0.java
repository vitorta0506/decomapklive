package com.google.api.client.util;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public class g0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* loaded from: classes2.dex */
    static class a<T> implements Iterable<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f11109a;

        /* renamed from: com.google.api.client.util.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0092a implements Iterator<T> {

            /* renamed from: a  reason: collision with root package name */
            final int f11110a;

            /* renamed from: b  reason: collision with root package name */
            int f11111b = 0;

            C0092a() {
                this.f11110a = Array.getLength(a.this.f11109a);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f11111b < this.f11110a;
            }

            @Override // java.util.Iterator
            public T next() {
                if (hasNext()) {
                    Object obj = a.this.f11109a;
                    int i9 = this.f11111b;
                    this.f11111b = i9 + 1;
                    return (T) Array.get(obj, i9);
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        a(Object obj) {
            this.f11109a = obj;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return new C0092a();
        }
    }

    private static Type a(Type type, Class<?> cls, int i9) {
        Type n9;
        ParameterizedType h10 = h(type, cls);
        if (h10 == null) {
            return null;
        }
        Type type2 = h10.getActualTypeArguments()[i9];
        return (!(type2 instanceof TypeVariable) || (n9 = n(Arrays.asList(type), (TypeVariable) type2)) == null) ? type2 : n9;
    }

    public static Type b(Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return ((Class) type).getComponentType();
    }

    public static Type c(WildcardType wildcardType) {
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (lowerBounds.length != 0) {
            return lowerBounds[0];
        }
        return wildcardType.getUpperBounds()[0];
    }

    public static Type d(Type type) {
        return a(type, Iterable.class, 0);
    }

    public static Type e(Type type) {
        return a(type, Map.class, 1);
    }

    public static Class<?> f(List<Type> list, Type type) {
        if (type instanceof TypeVariable) {
            type = n(list, (TypeVariable) type);
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(f(list, b(type)), 0).getClass();
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return g((ParameterizedType) type);
        }
        z.c(type == null, "wildcard type is not supported: %s", type);
        return Object.class;
    }

    public static Class<?> g(ParameterizedType parameterizedType) {
        return (Class) parameterizedType.getRawType();
    }

    public static ParameterizedType h(Type type, Class<?> cls) {
        Class<?> cls2;
        Type[] genericInterfaces;
        if ((type instanceof Class) || (type instanceof ParameterizedType)) {
            while (type != null && type != Object.class) {
                if (type instanceof Class) {
                    cls2 = (Class) type;
                } else {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    Class<?> g10 = g(parameterizedType);
                    if (g10 == cls) {
                        return parameterizedType;
                    }
                    if (cls.isInterface()) {
                        for (Type type2 : g10.getGenericInterfaces()) {
                            if (cls.isAssignableFrom(type2 instanceof Class ? (Class) type2 : g((ParameterizedType) type2))) {
                                type = type2;
                                break;
                            }
                        }
                    }
                    cls2 = g10;
                }
                type = cls2.getGenericSuperclass();
            }
            return null;
        }
        return null;
    }

    private static IllegalArgumentException i(Exception exc, Class<?> cls) {
        StringBuilder sb2 = new StringBuilder("unable to create new instance of class ");
        sb2.append(cls.getName());
        ArrayList arrayList = new ArrayList();
        boolean z10 = false;
        if (cls.isArray()) {
            arrayList.add("because it is an array");
        } else if (cls.isPrimitive()) {
            arrayList.add("because it is primitive");
        } else if (cls == Void.class) {
            arrayList.add("because it is void");
        } else {
            if (Modifier.isInterface(cls.getModifiers())) {
                arrayList.add("because it is an interface");
            } else if (Modifier.isAbstract(cls.getModifiers())) {
                arrayList.add("because it is abstract");
            }
            if (cls.getEnclosingClass() != null && !Modifier.isStatic(cls.getModifiers())) {
                arrayList.add("because it is not static");
            }
            if (!Modifier.isPublic(cls.getModifiers())) {
                arrayList.add("possibly because it is not public");
            } else {
                try {
                    cls.getConstructor(new Class[0]);
                } catch (NoSuchMethodException unused) {
                    arrayList.add("because it has no accessible default constructor");
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (z10) {
                sb2.append(" and");
            } else {
                z10 = true;
            }
            sb2.append(" ");
            sb2.append(str);
        }
        return new IllegalArgumentException(sb2.toString(), exc);
    }

    public static boolean j(Type type) {
        return (type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray());
    }

    public static boolean k(Class<?> cls, Class<?> cls2) {
        return cls.isAssignableFrom(cls2) || cls2.isAssignableFrom(cls);
    }

    public static <T> Iterable<T> l(Object obj) {
        if (obj instanceof Iterable) {
            return (Iterable) obj;
        }
        Class<?> cls = obj.getClass();
        z.c(cls.isArray(), "not an array or Iterable: %s", cls);
        if (!cls.getComponentType().isPrimitive()) {
            return Arrays.asList((Object[]) obj);
        }
        return new a(obj);
    }

    public static <T> T m(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e10) {
            throw i(e10, cls);
        } catch (InstantiationException e11) {
            throw i(e11, cls);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.reflect.GenericDeclaration] */
    public static Type n(List<Type> list, TypeVariable<?> typeVariable) {
        Type n9;
        ?? genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            Class cls = (Class) genericDeclaration;
            int size = list.size();
            ParameterizedType parameterizedType = null;
            while (parameterizedType == null) {
                size--;
                if (size < 0) {
                    break;
                }
                parameterizedType = h(list.get(size), cls);
            }
            if (parameterizedType != null) {
                TypeVariable<?>[] typeParameters = genericDeclaration.getTypeParameters();
                int i9 = 0;
                while (i9 < typeParameters.length && !typeParameters[i9].equals(typeVariable)) {
                    i9++;
                }
                Type type = parameterizedType.getActualTypeArguments()[i9];
                return (!(type instanceof TypeVariable) || (n9 = n(list, (TypeVariable) type)) == null) ? type : n9;
            }
        }
        return null;
    }

    public static Object o(Collection<?> collection, Class<?> cls) {
        if (cls.isPrimitive()) {
            Object newInstance = Array.newInstance(cls, collection.size());
            int i9 = 0;
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                Array.set(newInstance, i9, it.next());
                i9++;
            }
            return newInstance;
        }
        return collection.toArray((Object[]) Array.newInstance(cls, collection.size()));
    }
}
