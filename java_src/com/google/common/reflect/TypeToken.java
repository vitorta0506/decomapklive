package com.google.common.reflect;

import com.google.common.base.o;
import com.google.common.base.p;
import com.google.common.base.q;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.d6;
import com.google.common.collect.e9;
import com.google.common.collect.p3;
import com.google.common.collect.y3;
import com.google.common.collect.y6;
import com.google.common.reflect.a;
import com.google.common.reflect.h;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class TypeToken<T> extends com.google.common.reflect.c<T> implements Serializable {
    private static final long serialVersionUID = 3637540370352322684L;
    private transient com.google.common.reflect.e covariantTypeResolver;
    private transient com.google.common.reflect.e invariantTypeResolver;
    private final Type runtimeType;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends a.b<T> {
        a(Method method) {
            super(method);
        }

        @Override // com.google.common.reflect.a
        public TypeToken<T> a() {
            return TypeToken.this;
        }

        @Override // com.google.common.reflect.a
        public String toString() {
            String valueOf = String.valueOf(a());
            String aVar = super.toString();
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + String.valueOf(aVar).length());
            sb2.append(valueOf);
            sb2.append(".");
            sb2.append(aVar);
            return sb2.toString();
        }
    }

    /* loaded from: classes2.dex */
    class b extends a.C0125a<T> {
        b(Constructor constructor) {
            super(constructor);
        }

        @Override // com.google.common.reflect.a
        public TypeToken<T> a() {
            return TypeToken.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.a.C0125a
        public Type[] b() {
            return TypeToken.this.getInvariantTypeResolver().l(super.b());
        }

        @Override // com.google.common.reflect.a
        public String toString() {
            String valueOf = String.valueOf(a());
            String f10 = com.google.common.base.i.h(", ").f(b());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2 + String.valueOf(f10).length());
            sb2.append(valueOf);
            sb2.append("(");
            sb2.append(f10);
            sb2.append(")");
            return sb2.toString();
        }
    }

    /* loaded from: classes2.dex */
    class c extends com.google.common.reflect.g {
        c() {
        }

        @Override // com.google.common.reflect.g
        void c(GenericArrayType genericArrayType) {
            a(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.g
        void d(ParameterizedType parameterizedType) {
            a(parameterizedType.getActualTypeArguments());
            a(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.g
        void e(TypeVariable<?> typeVariable) {
            String valueOf = String.valueOf(TypeToken.this.runtimeType);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 58);
            sb2.append(valueOf);
            sb2.append("contains a type variable and is not safe for the operation");
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override // com.google.common.reflect.g
        void f(WildcardType wildcardType) {
            a(wildcardType.getLowerBounds());
            a(wildcardType.getUpperBounds());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends com.google.common.reflect.g {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmutableSet.a f13649b;

        d(TypeToken typeToken, ImmutableSet.a aVar) {
            this.f13649b = aVar;
        }

        @Override // com.google.common.reflect.g
        void b(Class<?> cls) {
            this.f13649b.a(cls);
        }

        @Override // com.google.common.reflect.g
        void c(GenericArrayType genericArrayType) {
            this.f13649b.a(com.google.common.reflect.h.h(TypeToken.of(genericArrayType.getGenericComponentType()).getRawType()));
        }

        @Override // com.google.common.reflect.g
        void d(ParameterizedType parameterizedType) {
            this.f13649b.a((Class) parameterizedType.getRawType());
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private final Type[] f13650a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f13651b;

        e(Type[] typeArr, boolean z10) {
            this.f13650a = typeArr;
            this.f13651b = z10;
        }

        boolean a(Type type) {
            for (Type type2 : this.f13650a) {
                boolean isSubtypeOf = TypeToken.of(type2).isSubtypeOf(type);
                boolean z10 = this.f13651b;
                if (isSubtypeOf == z10) {
                    return z10;
                }
            }
            return !this.f13651b;
        }

        boolean b(Type type) {
            TypeToken<?> of2 = TypeToken.of(type);
            for (Type type2 : this.f13650a) {
                boolean isSubtypeOf = of2.isSubtypeOf(type2);
                boolean z10 = this.f13651b;
                if (isSubtypeOf == z10) {
                    return z10;
                }
            }
            return !this.f13651b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class f extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private transient ImmutableSet<TypeToken<? super T>> f13652a;

        private f() {
            super();
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().classes();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) i.f13658b.a().c(TypeToken.this.getRawTypes()));
        }

        /* synthetic */ f(TypeToken typeToken, a aVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.f13652a;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> n9 = p3.g(i.f13657a.a().d(TypeToken.this)).f(j.f13662a).n();
                this.f13652a = n9;
                return n9;
            }
            return immutableSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class h<T> extends TypeToken<T> {
        private static final long serialVersionUID = 0;

        h(Type type) {
            super(type, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class i<K> {

        /* renamed from: a  reason: collision with root package name */
        static final i<TypeToken<?>> f13657a = new a();

        /* renamed from: b  reason: collision with root package name */
        static final i<Class<?>> f13658b = new b();

        /* loaded from: classes2.dex */
        class a extends i<TypeToken<?>> {
            a() {
                super(null);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: i */
            public Iterable<? extends TypeToken<?>> e(TypeToken<?> typeToken) {
                return typeToken.getGenericInterfaces();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: j */
            public Class<?> f(TypeToken<?> typeToken) {
                return typeToken.getRawType();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: k */
            public TypeToken<?> g(TypeToken<?> typeToken) {
                return typeToken.getGenericSuperclass();
            }
        }

        /* loaded from: classes2.dex */
        class b extends i<Class<?>> {
            b() {
                super(null);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: i */
            public Iterable<? extends Class<?>> e(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: j */
            public Class<?> f(Class<?> cls) {
                return cls;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: k */
            public Class<?> g(Class<?> cls) {
                return cls.getSuperclass();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class c extends e<K> {
            c(i iVar, i iVar2) {
                super(iVar2);
            }

            @Override // com.google.common.reflect.TypeToken.i
            ImmutableList<K> c(Iterable<? extends K> iterable) {
                ImmutableList.b builder = ImmutableList.builder();
                for (K k10 : iterable) {
                    if (!f(k10).isInterface()) {
                        builder.a(k10);
                    }
                }
                return super.c(builder.j());
            }

            @Override // com.google.common.reflect.TypeToken.i
            Iterable<? extends K> e(K k10) {
                return ImmutableSet.of();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class d extends y6<K> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Comparator f13659a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Map f13660b;

            d(Comparator comparator, Map map) {
                this.f13659a = comparator;
                this.f13660b = map;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.y6, java.util.Comparator
            public int compare(K k10, K k11) {
                Comparator comparator = this.f13659a;
                Object obj = this.f13660b.get(k10);
                Objects.requireNonNull(obj);
                Object obj2 = this.f13660b.get(k11);
                Objects.requireNonNull(obj2);
                return comparator.compare(obj, obj2);
            }
        }

        /* loaded from: classes2.dex */
        private static class e<K> extends i<K> {

            /* renamed from: c  reason: collision with root package name */
            private final i<K> f13661c;

            e(i<K> iVar) {
                super(null);
                this.f13661c = iVar;
            }

            @Override // com.google.common.reflect.TypeToken.i
            Class<?> f(K k10) {
                return this.f13661c.f(k10);
            }

            @Override // com.google.common.reflect.TypeToken.i
            K g(K k10) {
                return this.f13661c.g(k10);
            }
        }

        private i() {
        }

        /* synthetic */ i(a aVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int b(K k10, Map<? super K, Integer> map) {
            Integer num = map.get(k10);
            if (num != null) {
                return num.intValue();
            }
            boolean isInterface = f(k10).isInterface();
            int i9 = isInterface;
            for (K k11 : e(k10)) {
                i9 = Math.max(i9, b(k11, map));
            }
            K g10 = g(k10);
            int i10 = i9;
            if (g10 != null) {
                i10 = Math.max(i9, b(g10, map));
            }
            int i11 = i10 + 1;
            map.put(k10, Integer.valueOf(i11));
            return i11;
        }

        private static <K, V> ImmutableList<K> h(Map<K, V> map, Comparator<? super V> comparator) {
            return (ImmutableList<K>) new d(comparator, map).b(map.keySet());
        }

        final i<K> a() {
            return new c(this, this);
        }

        ImmutableList<K> c(Iterable<? extends K> iterable) {
            HashMap m10 = d6.m();
            for (K k10 : iterable) {
                b(k10, m10);
            }
            return h(m10, y6.e().h());
        }

        final ImmutableList<K> d(K k10) {
            return c(ImmutableList.of(k10));
        }

        abstract Iterable<? extends K> e(K k10);

        abstract Class<?> f(K k10);

        abstract K g(K k10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class j implements q<TypeToken<?>> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f13662a = new a("IGNORE_TYPE_VARIABLE_OR_WILDCARD", 0);

        /* renamed from: b  reason: collision with root package name */
        public static final j f13663b = new b("INTERFACE_ONLY", 1);

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ j[] f13664c = a();

        /* loaded from: classes2.dex */
        enum a extends j {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.base.q
            /* renamed from: b */
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).runtimeType instanceof TypeVariable) || (((TypeToken) typeToken).runtimeType instanceof WildcardType)) ? false : true;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends j {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.base.q
            /* renamed from: b */
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        }

        private j(String str, int i9) {
        }

        private static /* synthetic */ j[] a() {
            return new j[]{f13662a, f13663b};
        }

        public static j valueOf(String str) {
            return (j) Enum.valueOf(j.class, str);
        }

        public static j[] values() {
            return (j[]) f13664c.clone();
        }

        @Override // com.google.common.base.q, java.util.function.Predicate
        public /* synthetic */ boolean test(Object obj) {
            return p.a(this, obj);
        }

        /* synthetic */ j(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* synthetic */ TypeToken(Type type, a aVar) {
        this(type);
    }

    private static e any(Type[] typeArr) {
        return new e(typeArr, true);
    }

    private TypeToken<? super T> boundAsSuperclass(Type type) {
        TypeToken<? super T> typeToken = (TypeToken<? super T>) of(type);
        if (typeToken.getRawType().isInterface()) {
            return null;
        }
        return typeToken;
    }

    private ImmutableList<TypeToken<? super T>> boundsAsInterfaces(Type[] typeArr) {
        ImmutableList.b builder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> of2 = of(type);
            if (of2.getRawType().isInterface()) {
                builder.a(of2);
            }
        }
        return builder.j();
    }

    private static Type canonicalizeTypeArg(TypeVariable<?> typeVariable, Type type) {
        if (type instanceof WildcardType) {
            return canonicalizeWildcardType(typeVariable, (WildcardType) type);
        }
        return canonicalizeWildcardsInType(type);
    }

    private static WildcardType canonicalizeWildcardType(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] upperBounds;
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!any(bounds).a(type)) {
                arrayList.add(canonicalizeWildcardsInType(type));
            }
        }
        return new h.i(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    private static ParameterizedType canonicalizeWildcardsInParameterizedType(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i9 = 0; i9 < actualTypeArguments.length; i9++) {
            actualTypeArguments[i9] = canonicalizeTypeArg(typeParameters[i9], actualTypeArguments[i9]);
        }
        return com.google.common.reflect.h.m(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    private static Type canonicalizeWildcardsInType(Type type) {
        if (type instanceof ParameterizedType) {
            return canonicalizeWildcardsInParameterizedType((ParameterizedType) type);
        }
        return type instanceof GenericArrayType ? com.google.common.reflect.h.j(canonicalizeWildcardsInType(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    private static e every(Type[] typeArr) {
        return new e(typeArr, false);
    }

    private TypeToken<? extends T> getArraySubtype(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType != null) {
            TypeToken<?> componentType2 = getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? extends T>) of(newArrayClassOrGenericArrayType(componentType2.getSubtype(componentType).runtimeType));
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 36 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" does not appear to be a subtype of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    private TypeToken<? super T> getArraySupertype(Class<? super T> cls) {
        TypeToken<?> componentType = getComponentType();
        if (componentType != null) {
            Class componentType2 = cls.getComponentType();
            Objects.requireNonNull(componentType2);
            return (TypeToken<? super T>) of(newArrayClassOrGenericArrayType(componentType.getSupertype(componentType2).runtimeType));
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 23 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" isn't a super type of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.common.reflect.e getCovariantTypeResolver() {
        com.google.common.reflect.e eVar = this.covariantTypeResolver;
        if (eVar == null) {
            com.google.common.reflect.e d10 = com.google.common.reflect.e.d(this.runtimeType);
            this.covariantTypeResolver = d10;
            return d10;
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.common.reflect.e getInvariantTypeResolver() {
        com.google.common.reflect.e eVar = this.invariantTypeResolver;
        if (eVar == null) {
            com.google.common.reflect.e f10 = com.google.common.reflect.e.f(this.runtimeType);
            this.invariantTypeResolver = f10;
            return f10;
        }
        return eVar;
    }

    private Type getOwnerTypeIfPresent() {
        Type type = this.runtimeType;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImmutableSet<Class<? super T>> getRawTypes() {
        ImmutableSet.a builder = ImmutableSet.builder();
        new d(this, builder).a(this.runtimeType);
        return builder.h();
    }

    private TypeToken<? extends T> getSubtypeFromLowerBounds(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (TypeToken<? extends T>) of(typeArr[0]).getSubtype(cls);
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" isn't a subclass of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    private TypeToken<? super T> getSupertypeFromUpperBounds(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> of2 = of(type);
            if (of2.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) of2.getSupertype(cls);
            }
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 23 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" isn't a super type of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    private boolean is(Type type, TypeVariable<?> typeVariable) {
        if (this.runtimeType.equals(type)) {
            return true;
        }
        if (type instanceof WildcardType) {
            WildcardType canonicalizeWildcardType = canonicalizeWildcardType(typeVariable, (WildcardType) type);
            return every(canonicalizeWildcardType.getUpperBounds()).b(this.runtimeType) && every(canonicalizeWildcardType.getLowerBounds()).a(this.runtimeType);
        }
        return canonicalizeWildcardsInType(this.runtimeType).equals(canonicalizeWildcardsInType(type));
    }

    private boolean isOwnedBySubtypeOf(Type type) {
        Iterator<TypeToken<? super T>> it = getTypes().iterator();
        while (it.hasNext()) {
            Type ownerTypeIfPresent = it.next().getOwnerTypeIfPresent();
            if (ownerTypeIfPresent != null && of(ownerTypeIfPresent).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    private boolean isSubtypeOfArrayType(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                return of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        } else {
            return false;
        }
    }

    private boolean isSubtypeOfParameterizedType(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = of(parameterizedType).getRawType();
        if (someRawTypeIsSubclassOf(rawType)) {
            TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            for (int i9 = 0; i9 < typeParameters.length; i9++) {
                if (!of(getCovariantTypeResolver().j(typeParameters[i9])).is(actualTypeArguments[i9], typeParameters[i9])) {
                    return false;
                }
            }
            return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || isOwnedBySubtypeOf(parameterizedType.getOwnerType());
        }
        return false;
    }

    private boolean isSupertypeOfArray(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (!cls.isArray()) {
                return cls.isAssignableFrom(Object[].class);
            }
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        } else if (type instanceof GenericArrayType) {
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.runtimeType).getGenericComponentType());
        } else {
            return false;
        }
    }

    private boolean isWrapper() {
        return com.google.common.primitives.i.b().contains(this.runtimeType);
    }

    private static Type newArrayClassOrGenericArrayType(Type type) {
        return h.d.f13690b.c(type);
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new h(cls);
    }

    private TypeToken<?> resolveSupertype(Type type) {
        TypeToken<?> of2 = of(getCovariantTypeResolver().j(type));
        of2.covariantTypeResolver = this.covariantTypeResolver;
        of2.invariantTypeResolver = this.invariantTypeResolver;
        return of2;
    }

    private Type resolveTypeArgsForSubclass(Class<?> cls) {
        if (!(this.runtimeType instanceof Class) || (cls.getTypeParameters().length != 0 && getRawType().getTypeParameters().length == 0)) {
            TypeToken genericType = toGenericType(cls);
            return new com.google.common.reflect.e().n(genericType.getSupertype(getRawType()).runtimeType, this.runtimeType).j(genericType.runtimeType);
        }
        return cls;
    }

    private boolean someRawTypeIsSubclassOf(Class<?> cls) {
        e9<Class<? super T>> it = getRawTypes().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    static <T> TypeToken<? extends T> toGenericType(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) of(com.google.common.reflect.h.j(toGenericType(cls.getComponentType()).runtimeType));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : toGenericType(cls.getEnclosingClass()).runtimeType;
        if (typeParameters.length <= 0 && (type == null || type == cls.getEnclosingClass())) {
            return of((Class) cls);
        }
        return (TypeToken<? extends T>) of(com.google.common.reflect.h.m(type, cls, typeParameters));
    }

    public final com.google.common.reflect.a<T, T> constructor(Constructor<?> constructor) {
        o.n(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new b(constructor);
    }

    public boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return this.runtimeType.equals(((TypeToken) obj).runtimeType);
        }
        return false;
    }

    public final TypeToken<?> getComponentType() {
        Type i9 = com.google.common.reflect.h.i(this.runtimeType);
        if (i9 == null) {
            return null;
        }
        return of(i9);
    }

    final ImmutableList<TypeToken<? super T>> getGenericInterfaces() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundsAsInterfaces(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return boundsAsInterfaces(((WildcardType) type).getUpperBounds());
        }
        ImmutableList.b builder = ImmutableList.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            builder.a(resolveSupertype(type2));
        }
        return builder.j();
    }

    final TypeToken<? super T> getGenericSuperclass() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundAsSuperclass(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return boundAsSuperclass(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) resolveSupertype(genericSuperclass);
    }

    public final Class<? super T> getRawType() {
        return getRawTypes().iterator().next();
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        o.m(!(this.runtimeType instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.runtimeType;
        if (type instanceof WildcardType) {
            return getSubtypeFromLowerBounds(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return getArraySubtype(cls);
        }
        o.n(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        TypeToken<? extends T> typeToken = (TypeToken<? extends T>) of(resolveTypeArgsForSubclass(cls));
        o.n(typeToken.isSubtypeOf((TypeToken<?>) this), "%s does not appear to be a subtype of %s", typeToken, this);
        return typeToken;
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        o.n(someRawTypeIsSubclassOf(cls), "%s is not a super class of %s", cls, this);
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return getSupertypeFromUpperBounds(cls, ((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return getSupertypeFromUpperBounds(cls, ((WildcardType) type).getUpperBounds());
        }
        if (cls.isArray()) {
            return getArraySupertype(cls);
        }
        return (TypeToken<? super T>) resolveSupertype(toGenericType(cls).runtimeType);
    }

    public final Type getType() {
        return this.runtimeType;
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public int hashCode() {
        return this.runtimeType.hashCode();
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.runtimeType;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final com.google.common.reflect.a<T, Object> method(Method method) {
        o.n(someRawTypeIsSubclassOf(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new a(method);
    }

    final TypeToken<T> rejectTypeVariables() {
        new c().a(this.runtimeType);
        return this;
    }

    public final TypeToken<?> resolveType(Type type) {
        o.s(type);
        return of(getInvariantTypeResolver().j(type));
    }

    public String toString() {
        return com.google.common.reflect.h.s(this.runtimeType);
    }

    public final TypeToken<T> unwrap() {
        return isWrapper() ? of(com.google.common.primitives.i.c((Class) this.runtimeType)) : this;
    }

    public final <X> TypeToken<T> where(com.google.common.reflect.d<X> dVar, TypeToken<X> typeToken) {
        new com.google.common.reflect.e();
        throw null;
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? of(com.google.common.primitives.i.d((Class) this.runtimeType)) : this;
    }

    protected Object writeReplace() {
        return of(new com.google.common.reflect.e().j(this.runtimeType));
    }

    /* loaded from: classes2.dex */
    public class TypeSet extends y3<TypeToken<? super T>> implements Serializable {
        private static final long serialVersionUID = 0;
        private transient ImmutableSet<TypeToken<? super T>> types;

        TypeSet() {
        }

        public TypeToken<T>.TypeSet classes() {
            return new f(TypeToken.this, null);
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new g(this);
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) i.f13658b.c(TypeToken.this.getRawTypes()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.types;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> n9 = p3.g(i.f13657a.d(TypeToken.this)).f(j.f13662a).n();
                this.types = n9;
                return n9;
            }
            return immutableSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class g extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;

        /* renamed from: a  reason: collision with root package name */
        private final transient TypeToken<T>.TypeSet f13654a;

        /* renamed from: b  reason: collision with root package name */
        private transient ImmutableSet<TypeToken<? super T>> f13655b;

        g(TypeToken<T>.TypeSet typeSet) {
            super();
            this.f13654a = typeSet;
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().interfaces();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return p3.g(i.f13658b.c(TypeToken.this.getRawTypes())).f(new q() { // from class: com.google.common.reflect.f
                @Override // com.google.common.base.q
                public final boolean apply(Object obj) {
                    return ((Class) obj).isInterface();
                }

                @Override // com.google.common.base.q, java.util.function.Predicate
                public /* synthetic */ boolean test(Object obj) {
                    return p.a(this, obj);
                }
            }).n();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.y3, com.google.common.collect.q3, com.google.common.collect.w3
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.f13655b;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> n9 = p3.g(this.f13654a).f(j.f13663b).n();
                this.f13655b = n9;
                return n9;
            }
            return immutableSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TypeToken() {
        Type capture = capture();
        this.runtimeType = capture;
        o.D(!(capture instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", capture);
    }

    public static TypeToken<?> of(Type type) {
        return new h(type);
    }

    public final boolean isSubtypeOf(Type type) {
        o.s(type);
        if (type instanceof WildcardType) {
            return any(((WildcardType) type).getLowerBounds()).b(this.runtimeType);
        }
        Type type2 = this.runtimeType;
        if (type2 instanceof WildcardType) {
            return any(((WildcardType) type2).getUpperBounds()).a(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || any(((TypeVariable) this.runtimeType).getBounds()).a(type);
        } else if (type2 instanceof GenericArrayType) {
            return of(type).isSupertypeOfArray((GenericArrayType) this.runtimeType);
        } else {
            if (type instanceof Class) {
                return someRawTypeIsSubclassOf((Class) type);
            }
            if (type instanceof ParameterizedType) {
                return isSubtypeOfParameterizedType((ParameterizedType) type);
            }
            if (type instanceof GenericArrayType) {
                return isSubtypeOfArrayType((GenericArrayType) type);
            }
            return false;
        }
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    public final <X> TypeToken<T> where(com.google.common.reflect.d<X> dVar, Class<X> cls) {
        return where(dVar, of((Class) cls));
    }

    protected TypeToken(Class<?> cls) {
        Type capture = super.capture();
        if (capture instanceof Class) {
            this.runtimeType = capture;
        } else {
            this.runtimeType = com.google.common.reflect.e.d(cls).j(capture);
        }
    }

    private TypeToken(Type type) {
        this.runtimeType = (Type) o.s(type);
    }
}
