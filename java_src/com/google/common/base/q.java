package com.google.common.base;

import java.util.function.Predicate;
@FunctionalInterface
/* loaded from: classes2.dex */
public interface q<T> extends Predicate<T> {
    boolean apply(T t10);

    boolean equals(Object obj);

    @Override // java.util.function.Predicate
    boolean test(T t10);
}
