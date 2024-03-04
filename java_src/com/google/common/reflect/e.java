package com.google.common.reflect;

import com.google.common.base.l;
import com.google.common.base.o;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.d6;
import com.google.common.reflect.h;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.text.Typography;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final c f13669a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f13670b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Type f13671c;

        a(Map map, Type type) {
            this.f13670b = map;
            this.f13671c = type;
        }

        @Override // com.google.common.reflect.g
        void b(Class<?> cls) {
            if (this.f13671c instanceof WildcardType) {
                return;
            }
            String valueOf = String.valueOf(cls);
            String valueOf2 = String.valueOf(this.f13671c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 25 + valueOf2.length());
            sb2.append("No type mapping from ");
            sb2.append(valueOf);
            sb2.append(" to ");
            sb2.append(valueOf2);
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override // com.google.common.reflect.g
        void c(GenericArrayType genericArrayType) {
            Type type = this.f13671c;
            if (type instanceof WildcardType) {
                return;
            }
            Type i9 = h.i(type);
            o.m(i9 != null, "%s is not an array type.", this.f13671c);
            e.g(this.f13670b, genericArrayType.getGenericComponentType(), i9);
        }

        @Override // com.google.common.reflect.g
        void d(ParameterizedType parameterizedType) {
            Type type = this.f13671c;
            if (type instanceof WildcardType) {
                return;
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) e.e(ParameterizedType.class, type);
            if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                e.g(this.f13670b, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            o.n(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.f13671c);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            o.n(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i9 = 0; i9 < actualTypeArguments.length; i9++) {
                e.g(this.f13670b, actualTypeArguments[i9], actualTypeArguments2[i9]);
            }
        }

        @Override // com.google.common.reflect.g
        void e(TypeVariable<?> typeVariable) {
            this.f13670b.put(new d(typeVariable), this.f13671c);
        }

        @Override // com.google.common.reflect.g
        void f(WildcardType wildcardType) {
            Type type = this.f13671c;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                o.n(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.f13671c);
                for (int i9 = 0; i9 < upperBounds.length; i9++) {
                    e.g(this.f13670b, upperBounds[i9], upperBounds2[i9]);
                }
                for (int i10 = 0; i10 < lowerBounds.length; i10++) {
                    e.g(this.f13670b, lowerBounds[i10], lowerBounds2[i10]);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class b extends g {

        /* renamed from: b  reason: collision with root package name */
        private final Map<d, Type> f13672b = d6.m();

        private b() {
        }

        static ImmutableMap<d, Type> g(Type type) {
            o.s(type);
            b bVar = new b();
            bVar.a(type);
            return ImmutableMap.copyOf((Map) bVar.f13672b);
        }

        private void h(d dVar, Type type) {
            if (this.f13672b.containsKey(dVar)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (dVar.a(type2)) {
                    while (type != null) {
                        type = this.f13672b.remove(d.c(type));
                    }
                    return;
                }
                type2 = this.f13672b.get(d.c(type2));
            }
            this.f13672b.put(dVar, type);
        }

        @Override // com.google.common.reflect.g
        void b(Class<?> cls) {
            a(cls.getGenericSuperclass());
            a(cls.getGenericInterfaces());
        }

        @Override // com.google.common.reflect.g
        void d(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            o.z(typeParameters.length == actualTypeArguments.length);
            for (int i9 = 0; i9 < typeParameters.length; i9++) {
                h(new d(typeParameters[i9]), actualTypeArguments[i9]);
            }
            a(cls);
            a(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.g
        void e(TypeVariable<?> typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.g
        void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final TypeVariable<?> f13676a;

        d(TypeVariable<?> typeVariable) {
            this.f13676a = (TypeVariable) o.s(typeVariable);
        }

        private boolean b(TypeVariable<?> typeVariable) {
            return this.f13676a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.f13676a.getName().equals(typeVariable.getName());
        }

        static d c(Type type) {
            if (type instanceof TypeVariable) {
                return new d((TypeVariable) type);
            }
            return null;
        }

        boolean a(Type type) {
            if (type instanceof TypeVariable) {
                return b((TypeVariable) type);
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return b(((d) obj).f13676a);
            }
            return false;
        }

        public int hashCode() {
            return l.b(this.f13676a.getGenericDeclaration(), this.f13676a.getName());
        }

        public String toString() {
            return this.f13676a.toString();
        }
    }

    /* renamed from: com.google.common.reflect.e$e  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0126e {

        /* renamed from: b  reason: collision with root package name */
        static final C0126e f13677b = new C0126e();

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f13678a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.reflect.e$e$a */
        /* loaded from: classes2.dex */
        public class a extends C0126e {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ TypeVariable f13679c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(C0126e c0126e, AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.f13679c = typeVariable;
            }

            @Override // com.google.common.reflect.e.C0126e
            TypeVariable<?> b(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.f13679c.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.b((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        /* synthetic */ C0126e(AtomicInteger atomicInteger, a aVar) {
            this(atomicInteger);
        }

        private Type c(Type type) {
            if (type == null) {
                return null;
            }
            return a(type);
        }

        private C0126e d(TypeVariable<?> typeVariable) {
            return new a(this, this.f13678a, typeVariable);
        }

        private C0126e e() {
            return new C0126e(this.f13678a);
        }

        final Type a(Type type) {
            o.s(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return h.j(e().a(((GenericArrayType) type).getGenericComponentType()));
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls = (Class) parameterizedType.getRawType();
                TypeVariable<?>[] typeParameters = cls.getTypeParameters();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i9 = 0; i9 < actualTypeArguments.length; i9++) {
                    actualTypeArguments[i9] = d(typeParameters[i9]).a(actualTypeArguments[i9]);
                }
                return h.m(e().c(parameterizedType.getOwnerType()), cls, actualTypeArguments);
            } else if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? b(wildcardType.getUpperBounds()) : type;
            } else {
                throw new AssertionError("must have been one of the known types");
            }
        }

        TypeVariable<?> b(Type[] typeArr) {
            int incrementAndGet = this.f13678a.incrementAndGet();
            String f10 = com.google.common.base.i.g(Typography.amp).f(typeArr);
            StringBuilder sb2 = new StringBuilder(String.valueOf(f10).length() + 33);
            sb2.append("capture#");
            sb2.append(incrementAndGet);
            sb2.append("-of ? extends ");
            sb2.append(f10);
            return h.k(C0126e.class, sb2.toString(), typeArr);
        }

        private C0126e() {
            this(new AtomicInteger());
        }

        private C0126e(AtomicInteger atomicInteger) {
            this.f13678a = atomicInteger;
        }
    }

    /* synthetic */ e(c cVar, a aVar) {
        this(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e d(Type type) {
        return new e().o(b.g(type));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T e(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(obj);
            String simpleName = cls.getSimpleName();
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 10 + simpleName.length());
            sb2.append(valueOf);
            sb2.append(" is not a ");
            sb2.append(simpleName);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e f(Type type) {
        return new e().o(b.g(C0126e.f13677b.a(type)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(Map<d, Type> map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new a(map, type2).a(type);
    }

    private Type h(GenericArrayType genericArrayType) {
        return h.j(j(genericArrayType.getGenericComponentType()));
    }

    private ParameterizedType i(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return h.m(ownerType == null ? null : j(ownerType), (Class) j(parameterizedType.getRawType()), k(parameterizedType.getActualTypeArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Type[] k(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i9 = 0; i9 < typeArr.length; i9++) {
            typeArr2[i9] = j(typeArr[i9]);
        }
        return typeArr2;
    }

    private WildcardType m(WildcardType wildcardType) {
        return new h.i(k(wildcardType.getLowerBounds()), k(wildcardType.getUpperBounds()));
    }

    public Type j(Type type) {
        o.s(type);
        if (type instanceof TypeVariable) {
            return this.f13669a.a((TypeVariable) type);
        }
        if (type instanceof ParameterizedType) {
            return i((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return h((GenericArrayType) type);
        }
        return type instanceof WildcardType ? m((WildcardType) type) : type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Type[] l(Type[] typeArr) {
        for (int i9 = 0; i9 < typeArr.length; i9++) {
            typeArr[i9] = j(typeArr[i9]);
        }
        return typeArr;
    }

    public e n(Type type, Type type2) {
        HashMap m10 = d6.m();
        g(m10, (Type) o.s(type), (Type) o.s(type2));
        return o(m10);
    }

    e o(Map<d, ? extends Type> map) {
        return new e(this.f13669a.c(map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap<d, Type> f13673a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends c {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ TypeVariable f13674b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ c f13675c;

            a(c cVar, TypeVariable typeVariable, c cVar2) {
                this.f13674b = typeVariable;
                this.f13675c = cVar2;
            }

            @Override // com.google.common.reflect.e.c
            public Type b(TypeVariable<?> typeVariable, c cVar) {
                return typeVariable.getGenericDeclaration().equals(this.f13674b.getGenericDeclaration()) ? typeVariable : this.f13675c.b(typeVariable, cVar);
            }
        }

        c() {
            this.f13673a = ImmutableMap.of();
        }

        final Type a(TypeVariable<?> typeVariable) {
            return b(typeVariable, new a(this, typeVariable, this));
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.reflect.GenericDeclaration] */
        Type b(TypeVariable<?> typeVariable, c cVar) {
            Type type = this.f13673a.get(new d(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length == 0) {
                    return typeVariable;
                }
                Type[] k10 = new e(cVar, null).k(bounds);
                return (h.e.f13695a && Arrays.equals(bounds, k10)) ? typeVariable : h.k(typeVariable.getGenericDeclaration(), typeVariable.getName(), k10);
            }
            return new e(cVar, null).j(type);
        }

        final c c(Map<d, ? extends Type> map) {
            ImmutableMap.b builder = ImmutableMap.builder();
            builder.k(this.f13673a);
            for (Map.Entry<d, ? extends Type> entry : map.entrySet()) {
                d key = entry.getKey();
                Type value = entry.getValue();
                o.m(!key.a(value), "Type variable %s bound to itself", key);
                builder.h(key, value);
            }
            return new c(builder.d());
        }

        private c(ImmutableMap<d, Type> immutableMap) {
            this.f13673a = immutableMap;
        }
    }

    public e() {
        this.f13669a = new c();
    }

    private e(c cVar) {
        this.f13669a = cVar;
    }
}
