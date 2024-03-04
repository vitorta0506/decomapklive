package com.google.api.client.util;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public static final Boolean f11121a;

    /* renamed from: b  reason: collision with root package name */
    public static final String f11122b;

    /* renamed from: c  reason: collision with root package name */
    public static final Character f11123c;

    /* renamed from: d  reason: collision with root package name */
    public static final Byte f11124d;

    /* renamed from: e  reason: collision with root package name */
    public static final Short f11125e;

    /* renamed from: f  reason: collision with root package name */
    public static final Integer f11126f;

    /* renamed from: g  reason: collision with root package name */
    public static final Float f11127g;

    /* renamed from: h  reason: collision with root package name */
    public static final Long f11128h;

    /* renamed from: i  reason: collision with root package name */
    public static final Double f11129i;

    /* renamed from: j  reason: collision with root package name */
    public static final BigInteger f11130j;

    /* renamed from: k  reason: collision with root package name */
    public static final BigDecimal f11131k;

    /* renamed from: l  reason: collision with root package name */
    public static final DateTime f11132l;

    /* renamed from: m  reason: collision with root package name */
    private static final ConcurrentHashMap<Class<?>, Object> f11133m;

    static {
        Boolean bool = new Boolean(true);
        f11121a = bool;
        String str = new String();
        f11122b = str;
        Character ch2 = new Character((char) 0);
        f11123c = ch2;
        Byte b10 = new Byte((byte) 0);
        f11124d = b10;
        Short sh2 = new Short((short) 0);
        f11125e = sh2;
        Integer num = new Integer(0);
        f11126f = num;
        Float f10 = new Float(0.0f);
        f11127g = f10;
        Long l10 = new Long(0L);
        f11128h = l10;
        Double d10 = new Double(0.0d);
        f11129i = d10;
        BigInteger bigInteger = new BigInteger("0");
        f11130j = bigInteger;
        BigDecimal bigDecimal = new BigDecimal("0");
        f11131k = bigDecimal;
        DateTime dateTime = new DateTime(0L);
        f11132l = dateTime;
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = new ConcurrentHashMap<>();
        f11133m = concurrentHashMap;
        concurrentHashMap.put(Boolean.class, bool);
        concurrentHashMap.put(String.class, str);
        concurrentHashMap.put(Character.class, ch2);
        concurrentHashMap.put(Byte.class, b10);
        concurrentHashMap.put(Short.class, sh2);
        concurrentHashMap.put(Integer.class, num);
        concurrentHashMap.put(Float.class, f10);
        concurrentHashMap.put(Long.class, l10);
        concurrentHashMap.put(Double.class, d10);
        concurrentHashMap.put(BigInteger.class, bigInteger);
        concurrentHashMap.put(BigDecimal.class, bigDecimal);
        concurrentHashMap.put(DateTime.class, dateTime);
    }

    public static <T> T a(T t10) {
        T t11;
        if (t10 == null || e(t10.getClass())) {
            return t10;
        }
        if (t10 instanceof GenericData) {
            return (T) ((GenericData) t10).clone();
        }
        Class<?> cls = t10.getClass();
        if (cls.isArray()) {
            t11 = (T) Array.newInstance(cls.getComponentType(), Array.getLength(t10));
        } else if (t10 instanceof a) {
            t11 = (T) ((a) t10).clone();
        } else if ("java.util.Arrays$ArrayList".equals(cls.getName())) {
            Object[] array = ((List) t10).toArray();
            c(array, array);
            return (T) Arrays.asList(array);
        } else {
            t11 = (T) g0.m(cls);
        }
        c(t10, t11);
        return t11;
    }

    private static Object b(Class<?> cls) {
        int i9 = 0;
        if (cls.isArray()) {
            do {
                cls = cls.getComponentType();
                i9++;
            } while (cls.isArray());
            return Array.newInstance(cls, new int[i9]);
        } else if (cls.isEnum()) {
            m b10 = h.e(cls).b(null);
            z.f(b10, "enum missing constant with @NullValue annotation: %s", cls);
            return b10.a();
        } else {
            return g0.m(cls);
        }
    }

    public static void c(Object obj, Object obj2) {
        h e10;
        Class<?> cls = obj.getClass();
        int i9 = 0;
        z.a(cls == obj2.getClass());
        if (cls.isArray()) {
            z.a(Array.getLength(obj) == Array.getLength(obj2));
            for (Object obj3 : g0.l(obj)) {
                Array.set(obj2, i9, a(obj3));
                i9++;
            }
        } else if (Collection.class.isAssignableFrom(cls)) {
            Collection<Object> collection = (Collection) obj;
            if (ArrayList.class.isAssignableFrom(cls)) {
                ((ArrayList) obj2).ensureCapacity(collection.size());
            }
            Collection collection2 = (Collection) obj2;
            for (Object obj4 : collection) {
                collection2.add(a(obj4));
            }
        } else {
            boolean isAssignableFrom = GenericData.class.isAssignableFrom(cls);
            if (!isAssignableFrom && Map.class.isAssignableFrom(cls)) {
                if (a.class.isAssignableFrom(cls)) {
                    a aVar = (a) obj2;
                    a aVar2 = (a) obj;
                    int size = aVar2.size();
                    while (i9 < size) {
                        aVar.j(i9, a(aVar2.h(i9)));
                        i9++;
                    }
                    return;
                }
                Map map = (Map) obj2;
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    map.put(entry.getKey(), a(entry.getValue()));
                }
                return;
            }
            if (isAssignableFrom) {
                e10 = ((GenericData) obj).f11086b;
            } else {
                e10 = h.e(cls);
            }
            for (String str : e10.f11118d) {
                m b10 = e10.b(str);
                if (!b10.h() && (!isAssignableFrom || !b10.i())) {
                    Object g10 = b10.g(obj);
                    if (g10 != null) {
                        b10.m(obj2, a(g10));
                    }
                }
            }
        }
    }

    public static boolean d(Object obj) {
        return obj != null && obj == f11133m.get(obj.getClass());
    }

    public static boolean e(Type type) {
        if (type instanceof WildcardType) {
            type = g0.c((WildcardType) type);
        }
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isPrimitive() || cls == Character.class || cls == String.class || cls == Integer.class || cls == Long.class || cls == Short.class || cls == Byte.class || cls == Float.class || cls == Double.class || cls == BigInteger.class || cls == BigDecimal.class || cls == DateTime.class || cls == Boolean.class;
        }
        return false;
    }

    public static Map<String, Object> f(Object obj) {
        if (obj != null && !d(obj)) {
            if (obj instanceof Map) {
                return (Map) obj;
            }
            return new k(obj, false);
        }
        return Collections.emptyMap();
    }

    public static Collection<Object> g(Type type) {
        if (type instanceof WildcardType) {
            type = g0.c((WildcardType) type);
        }
        if (type instanceof ParameterizedType) {
            type = ((ParameterizedType) type).getRawType();
        }
        Class cls = type instanceof Class ? (Class) type : null;
        if (type == null || (type instanceof GenericArrayType) || (cls != null && (cls.isArray() || cls.isAssignableFrom(ArrayList.class)))) {
            return new ArrayList();
        }
        if (cls != null) {
            if (cls.isAssignableFrom(HashSet.class)) {
                return new HashSet();
            }
            if (cls.isAssignableFrom(TreeSet.class)) {
                return new TreeSet();
            }
            return (Collection) g0.m(cls);
        }
        throw new IllegalArgumentException("unable to create new instance of type: " + type);
    }

    public static Map<String, Object> h(Class<?> cls) {
        if (cls != null && !cls.isAssignableFrom(a.class)) {
            if (cls.isAssignableFrom(TreeMap.class)) {
                return new TreeMap();
            }
            return (Map) g0.m(cls);
        }
        return a.b();
    }

    public static <T> T i(Class<T> cls) {
        ConcurrentHashMap<Class<?>, Object> concurrentHashMap = f11133m;
        T t10 = (T) concurrentHashMap.get(cls);
        if (t10 == null) {
            T t11 = (T) b(cls);
            T t12 = (T) concurrentHashMap.putIfAbsent(cls, t11);
            return t12 == null ? t11 : t12;
        }
        return t10;
    }

    public static Object j(Type type, String str) {
        Class cls = type instanceof Class ? (Class) type : null;
        if (type == null || cls != null) {
            if (cls == Void.class) {
                return null;
            }
            if (str == null || cls == null || cls.isAssignableFrom(String.class)) {
                return str;
            }
            if (cls != Character.class && cls != Character.TYPE) {
                if (cls != Boolean.class && cls != Boolean.TYPE) {
                    if (cls != Byte.class && cls != Byte.TYPE) {
                        if (cls != Short.class && cls != Short.TYPE) {
                            if (cls != Integer.class && cls != Integer.TYPE) {
                                if (cls != Long.class && cls != Long.TYPE) {
                                    if (cls != Float.class && cls != Float.TYPE) {
                                        if (cls != Double.class && cls != Double.TYPE) {
                                            if (cls == DateTime.class) {
                                                return DateTime.parseRfc3339(str);
                                            }
                                            if (cls == BigInteger.class) {
                                                return new BigInteger(str);
                                            }
                                            if (cls == BigDecimal.class) {
                                                return new BigDecimal(str);
                                            }
                                            if (cls.isEnum()) {
                                                if (h.e(cls).f11118d.contains(str)) {
                                                    return h.e(cls).b(str).a();
                                                }
                                                throw new IllegalArgumentException(String.format("given enum name %s not part of enumeration", str));
                                            }
                                        } else {
                                            return Double.valueOf(str);
                                        }
                                    } else {
                                        return Float.valueOf(str);
                                    }
                                } else {
                                    return Long.valueOf(str);
                                }
                            } else {
                                return Integer.valueOf(str);
                            }
                        } else {
                            return Short.valueOf(str);
                        }
                    } else {
                        return Byte.valueOf(str);
                    }
                } else {
                    return Boolean.valueOf(str);
                }
            } else if (str.length() == 1) {
                return Character.valueOf(str.charAt(0));
            } else {
                throw new IllegalArgumentException("expected type Character/char but got " + cls);
            }
        }
        throw new IllegalArgumentException("expected primitive class, but got: " + type);
    }

    public static Type k(List<Type> list, Type type) {
        if (type instanceof WildcardType) {
            type = g0.c((WildcardType) type);
        }
        while (type instanceof TypeVariable) {
            Type n9 = g0.n(list, (TypeVariable) type);
            if (n9 != null) {
                type = n9;
            }
            if (type instanceof TypeVariable) {
                type = ((TypeVariable) type).getBounds()[0];
            }
        }
        return type;
    }
}
