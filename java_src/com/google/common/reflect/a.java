package com.google.common.reflect;

import com.google.common.base.o;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;
/* loaded from: classes2.dex */
public abstract class a<T, R> implements AnnotatedElement, Member {

    /* renamed from: a  reason: collision with root package name */
    private final AccessibleObject f13665a;

    /* renamed from: b  reason: collision with root package name */
    private final Member f13666b;

    /* renamed from: com.google.common.reflect.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static class C0125a<T> extends a<T, T> {

        /* renamed from: c  reason: collision with root package name */
        final Constructor<?> f13667c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0125a(Constructor<?> constructor) {
            super(constructor);
            this.f13667c = constructor;
        }

        private boolean c() {
            Class<?> declaringClass = this.f13667c.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            Method enclosingMethod = declaringClass.getEnclosingMethod();
            if (enclosingMethod != null) {
                return !Modifier.isStatic(enclosingMethod.getModifiers());
            }
            return (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Type[] b() {
            Type[] genericParameterTypes = this.f13667c.getGenericParameterTypes();
            if (genericParameterTypes.length <= 0 || !c()) {
                return genericParameterTypes;
            }
            Class<?>[] parameterTypes = this.f13667c.getParameterTypes();
            return (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) ? (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length) : genericParameterTypes;
        }
    }

    /* loaded from: classes2.dex */
    static class b<T> extends a<T, Object> {

        /* renamed from: c  reason: collision with root package name */
        final Method f13668c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Method method) {
            super(method);
            this.f13668c = method;
        }
    }

    <M extends AccessibleObject & Member> a(M m10) {
        o.s(m10);
        this.f13665a = m10;
        this.f13666b = m10;
    }

    public TypeToken<T> a() {
        return TypeToken.of((Class) getDeclaringClass());
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return a().equals(aVar.a()) && this.f13666b.equals(aVar.f13666b);
        }
        return false;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f13665a.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.f13665a.getAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.f13665a.getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) this.f13666b.getDeclaringClass();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.f13666b.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.f13666b.getName();
    }

    public int hashCode() {
        return this.f13666b.hashCode();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f13665a.isAnnotationPresent(cls);
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.f13666b.isSynthetic();
    }

    public String toString() {
        return this.f13666b.toString();
    }
}
