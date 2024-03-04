package com.google.common.reflect;

import com.google.common.base.l;
import com.google.common.base.o;
import com.google.common.base.r;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.e9;
import com.google.common.collect.n5;
import com.google.common.reflect.h;
import io.jsonwebtoken.JwtParser;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.text.Typography;
import okhttp3.HttpUrl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final com.google.common.base.i f13682a = com.google.common.base.i.h(", ").j("null");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends com.google.common.reflect.g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AtomicReference f13683b;

        a(AtomicReference atomicReference) {
            this.f13683b = atomicReference;
        }

        @Override // com.google.common.reflect.g
        void b(Class<?> cls) {
            this.f13683b.set(cls.getComponentType());
        }

        @Override // com.google.common.reflect.g
        void c(GenericArrayType genericArrayType) {
            this.f13683b.set(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.g
        void e(TypeVariable<?> typeVariable) {
            this.f13683b.set(h.p(typeVariable.getBounds()));
        }

        @Override // com.google.common.reflect.g
        void f(WildcardType wildcardType) {
            this.f13683b.set(h.p(wildcardType.getUpperBounds()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f13684a = new a("OWNED_BY_ENCLOSING_CLASS", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final b f13685b = new c("LOCAL_CLASS_HAS_NO_OWNER", 1);

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ b[] f13687d = a();

        /* renamed from: c  reason: collision with root package name */
        static final b f13686c = b();

        /* loaded from: classes2.dex */
        enum a extends b {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.reflect.h.b
            Class<?> c(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.reflect.h$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0127b<T> {
            C0127b() {
            }
        }

        /* loaded from: classes2.dex */
        enum c extends b {
            c(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.reflect.h.b
            Class<?> c(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class d extends C0127b<String> {
            d() {
            }
        }

        private b(String str, int i9) {
        }

        private static /* synthetic */ b[] a() {
            return new b[]{f13684a, f13685b};
        }

        private static b b() {
            b[] values;
            new d();
            ParameterizedType parameterizedType = (ParameterizedType) d.class.getGenericSuperclass();
            Objects.requireNonNull(parameterizedType);
            ParameterizedType parameterizedType2 = parameterizedType;
            for (b bVar : values()) {
                if (bVar.c(C0127b.class) == parameterizedType2.getOwnerType()) {
                    return bVar;
                }
            }
            throw new AssertionError();
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f13687d.clone();
        }

        abstract Class<?> c(Class<?> cls);

        /* synthetic */ b(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Type f13688a;

        c(Type type) {
            this.f13688a = d.f13693e.f(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return l.a(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f13688a;
        }

        public int hashCode() {
            return this.f13688a.hashCode();
        }

        public String toString() {
            return String.valueOf(h.s(this.f13688a)).concat(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        public static final d f13689a;

        /* renamed from: b  reason: collision with root package name */
        public static final d f13690b;

        /* renamed from: c  reason: collision with root package name */
        public static final d f13691c;

        /* renamed from: d  reason: collision with root package name */
        public static final d f13692d;

        /* renamed from: e  reason: collision with root package name */
        static final d f13693e;

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ d[] f13694f;

        /* loaded from: classes2.dex */
        enum a extends d {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.reflect.h.d
            Type f(Type type) {
                o.s(type);
                if (type instanceof Class) {
                    Class cls = (Class) type;
                    return cls.isArray() ? new c(cls.getComponentType()) : type;
                }
                return type;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.h.d
            /* renamed from: g */
            public GenericArrayType c(Type type) {
                return new c(type);
            }
        }

        /* loaded from: classes2.dex */
        enum b extends d {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.reflect.h.d
            Type c(Type type) {
                if (type instanceof Class) {
                    return h.h((Class) type);
                }
                return new c(type);
            }

            @Override // com.google.common.reflect.h.d
            Type f(Type type) {
                return (Type) o.s(type);
            }
        }

        /* loaded from: classes2.dex */
        enum c extends d {
            c(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.reflect.h.d
            Type c(Type type) {
                return d.f13690b.c(type);
            }

            @Override // com.google.common.reflect.h.d
            String d(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException(e10);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e11) {
                    throw new RuntimeException(e11);
                }
            }

            @Override // com.google.common.reflect.h.d
            Type f(Type type) {
                return d.f13690b.f(type);
            }
        }

        /* renamed from: com.google.common.reflect.h$d$d  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0128d extends d {
            C0128d(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.reflect.h.d
            boolean b() {
                return false;
            }

            @Override // com.google.common.reflect.h.d
            Type c(Type type) {
                return d.f13691c.c(type);
            }

            @Override // com.google.common.reflect.h.d
            String d(Type type) {
                return d.f13691c.d(type);
            }

            @Override // com.google.common.reflect.h.d
            Type f(Type type) {
                return d.f13691c.f(type);
            }
        }

        /* loaded from: classes2.dex */
        class e extends com.google.common.reflect.c<Map.Entry<String, int[][]>> {
            e() {
            }
        }

        /* loaded from: classes2.dex */
        class f extends com.google.common.reflect.c<int[]> {
            f() {
            }
        }

        static {
            a aVar = new a("JAVA6", 0);
            f13689a = aVar;
            b bVar = new b("JAVA7", 1);
            f13690b = bVar;
            c cVar = new c("JAVA8", 2);
            f13691c = cVar;
            C0128d c0128d = new C0128d("JAVA9", 3);
            f13692d = c0128d;
            f13694f = a();
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new e().capture().toString().contains("java.util.Map.java.util.Map")) {
                    f13693e = cVar;
                } else {
                    f13693e = c0128d;
                }
            } else if (new f().capture() instanceof Class) {
                f13693e = bVar;
            } else {
                f13693e = aVar;
            }
        }

        private d(String str, int i9) {
        }

        private static /* synthetic */ d[] a() {
            return new d[]{f13689a, f13690b, f13691c, f13692d};
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) f13694f.clone();
        }

        boolean b() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Type c(Type type);

        /* JADX INFO: Access modifiers changed from: package-private */
        public String d(Type type) {
            return h.s(type);
        }

        final ImmutableList<Type> e(Type[] typeArr) {
            ImmutableList.b builder = ImmutableList.builder();
            for (Type type : typeArr) {
                builder.a(f(type));
            }
            return builder.j();
        }

        abstract Type f(Type type);

        /* synthetic */ d(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class e<X> {

        /* renamed from: a  reason: collision with root package name */
        static final boolean f13695a = !e.class.getTypeParameters()[0].equals(h.k(e.class, "X", new Type[0]));

        e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class f implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Type f13696a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<Type> f13697b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<?> f13698c;

        f(Type type, Class<?> cls, Type[] typeArr) {
            o.s(cls);
            o.d(typeArr.length == cls.getTypeParameters().length);
            h.f(typeArr, "type parameter");
            this.f13696a = type;
            this.f13698c = cls;
            this.f13697b = d.f13693e.e(typeArr);
        }

        public boolean equals(Object obj) {
            if (obj instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) obj;
                return getRawType().equals(parameterizedType.getRawType()) && l.a(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return h.r(this.f13697b);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f13696a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f13698c;
        }

        public int hashCode() {
            Type type = this.f13696a;
            return ((type == null ? 0 : type.hashCode()) ^ this.f13697b.hashCode()) ^ this.f13698c.hashCode();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f13696a != null) {
                d dVar = d.f13693e;
                if (dVar.b()) {
                    sb2.append(dVar.d(this.f13696a));
                    sb2.append(JwtParser.SEPARATOR_CHAR);
                }
            }
            sb2.append(this.f13698c.getName());
            sb2.append(Typography.less);
            com.google.common.base.i iVar = h.f13682a;
            ImmutableList<Type> immutableList = this.f13697b;
            final d dVar2 = d.f13693e;
            Objects.requireNonNull(dVar2);
            sb2.append(iVar.d(n5.p(immutableList, new com.google.common.base.h() { // from class: com.google.common.reflect.i
                @Override // com.google.common.base.h, java.util.function.Function
                public final Object apply(Object obj) {
                    return h.d.this.d((Type) obj);
                }
            })));
            sb2.append(Typography.greater);
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class g<D extends GenericDeclaration> {

        /* renamed from: a  reason: collision with root package name */
        private final D f13699a;

        /* renamed from: b  reason: collision with root package name */
        private final String f13700b;

        /* renamed from: c  reason: collision with root package name */
        private final ImmutableList<Type> f13701c;

        g(D d10, String str, Type[] typeArr) {
            h.f(typeArr, "bound for type variable");
            this.f13699a = (D) o.s(d10);
            this.f13700b = (String) o.s(str);
            this.f13701c = ImmutableList.copyOf(typeArr);
        }

        public D a() {
            return this.f13699a;
        }

        public String b() {
            return this.f13700b;
        }

        public boolean equals(Object obj) {
            if (e.f13695a) {
                if (obj != null && Proxy.isProxyClass(obj.getClass()) && (Proxy.getInvocationHandler(obj) instanceof C0129h)) {
                    g gVar = ((C0129h) Proxy.getInvocationHandler(obj)).f13703a;
                    return this.f13700b.equals(gVar.b()) && this.f13699a.equals(gVar.a()) && this.f13701c.equals(gVar.f13701c);
                }
                return false;
            } else if (obj instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.f13700b.equals(typeVariable.getName()) && this.f13699a.equals(typeVariable.getGenericDeclaration());
            } else {
                return false;
            }
        }

        public int hashCode() {
            return this.f13699a.hashCode() ^ this.f13700b.hashCode();
        }

        public String toString() {
            return this.f13700b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.reflect.h$h  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0129h implements InvocationHandler {

        /* renamed from: b  reason: collision with root package name */
        private static final ImmutableMap<String, Method> f13702b;

        /* renamed from: a  reason: collision with root package name */
        private final g<?> f13703a;

        static {
            Method[] methods;
            ImmutableMap.b builder = ImmutableMap.builder();
            for (Method method : g.class.getMethods()) {
                if (method.getDeclaringClass().equals(g.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    builder.h(method.getName(), method);
                }
            }
            f13702b = builder.c();
        }

        C0129h(g<?> gVar) {
            this.f13703a = gVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = f13702b.get(name);
            if (method2 != null) {
                try {
                    return method2.invoke(this.f13703a, objArr);
                } catch (InvocationTargetException e10) {
                    throw e10.getCause();
                }
            }
            throw new UnsupportedOperationException(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class i implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<Type> f13704a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<Type> f13705b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public i(Type[] typeArr, Type[] typeArr2) {
            h.f(typeArr, "lower bound for wildcard");
            h.f(typeArr2, "upper bound for wildcard");
            d dVar = d.f13693e;
            this.f13704a = dVar.e(typeArr);
            this.f13705b = dVar.e(typeArr2);
        }

        public boolean equals(Object obj) {
            if (obj instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) obj;
                return this.f13704a.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.f13705b.equals(Arrays.asList(wildcardType.getUpperBounds()));
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return h.r(this.f13704a);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return h.r(this.f13705b);
        }

        public int hashCode() {
            return this.f13704a.hashCode() ^ this.f13705b.hashCode();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("?");
            e9<Type> it = this.f13704a.iterator();
            while (it.hasNext()) {
                sb2.append(" super ");
                sb2.append(d.f13693e.d(it.next()));
            }
            for (Type type : h.g(this.f13705b)) {
                sb2.append(" extends ");
                sb2.append(d.f13693e.d(type));
            }
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Type[] typeArr, String str) {
        Class cls;
        for (Type type : typeArr) {
            if (type instanceof Class) {
                o.n(!cls.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable<Type> g(Iterable<Type> iterable) {
        return n5.e(iterable, r.i(r.f(Object.class)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> h(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type i(Type type) {
        o.s(type);
        AtomicReference atomicReference = new AtomicReference();
        new a(atomicReference).a(type);
        return (Type) atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type j(Type type) {
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            o.e(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
            if (lowerBounds.length == 1) {
                return q(j(lowerBounds[0]));
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            o.e(upperBounds.length == 1, "Wildcard should have only one upper bound.");
            return o(j(upperBounds[0]));
        }
        return d.f13693e.c(type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <D extends GenericDeclaration> TypeVariable<D> k(D d10, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return n(d10, str, typeArr);
    }

    static ParameterizedType l(Class<?> cls, Type... typeArr) {
        return new f(b.f13686c.c(cls), cls, typeArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ParameterizedType m(Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return l(cls, typeArr);
        }
        o.s(typeArr);
        o.m(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new f(type, cls, typeArr);
    }

    private static <D extends GenericDeclaration> TypeVariable<D> n(D d10, String str, Type[] typeArr) {
        return (TypeVariable) com.google.common.reflect.b.a(TypeVariable.class, new C0129h(new g(d10, str, typeArr)));
    }

    static WildcardType o(Type type) {
        return new i(new Type[0], new Type[]{type});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type p(Type[] typeArr) {
        for (Type type : typeArr) {
            Type i9 = i(type);
            if (i9 != null) {
                if (i9 instanceof Class) {
                    Class cls = (Class) i9;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return o(i9);
            }
        }
        return null;
    }

    static WildcardType q(Type type) {
        return new i(new Type[]{type}, new Type[]{Object.class});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type[] r(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String s(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
