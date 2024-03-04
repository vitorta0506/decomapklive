package com.google.common.cache;

import java.util.concurrent.ExecutionException;
/* loaded from: classes2.dex */
public interface g<K, V> extends c<K, V>, com.google.common.base.h<K, V> {
    @Override // com.google.common.base.h, java.util.function.Function
    @Deprecated
    V apply(K k10);

    V get(K k10) throws ExecutionException;
}
