package com.google.common.reflect;

import com.google.common.collect.w7;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Set;
/* loaded from: classes2.dex */
abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Type> f13681a = w7.g();

    public final void a(Type... typeArr) {
        for (Type type : typeArr) {
            if (type != null && this.f13681a.add(type)) {
                try {
                    if (type instanceof TypeVariable) {
                        e((TypeVariable) type);
                    } else if (type instanceof WildcardType) {
                        f((WildcardType) type);
                    } else if (type instanceof ParameterizedType) {
                        d((ParameterizedType) type);
                    } else if (type instanceof Class) {
                        b((Class) type);
                    } else if (type instanceof GenericArrayType) {
                        c((GenericArrayType) type);
                    } else {
                        String valueOf = String.valueOf(type);
                        StringBuilder sb2 = new StringBuilder(valueOf.length() + 14);
                        sb2.append("Unknown type: ");
                        sb2.append(valueOf);
                        throw new AssertionError(sb2.toString());
                    }
                } catch (Throwable th2) {
                    this.f13681a.remove(type);
                    throw th2;
                }
            }
        }
    }

    void b(Class<?> cls) {
    }

    void c(GenericArrayType genericArrayType) {
    }

    void d(ParameterizedType parameterizedType) {
    }

    abstract void e(TypeVariable<?> typeVariable);

    abstract void f(WildcardType wildcardType);
}
