package com.google.common.base;

import java.util.function.Function;
@FunctionalInterface
/* loaded from: classes2.dex */
public interface h<F, T> extends Function<F, T> {
    @Override // java.util.function.Function
    T apply(F f10);

    boolean equals(Object obj);
}
