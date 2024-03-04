package com.google.common.cache;

import com.google.common.util.concurrent.d0;
import com.google.common.util.concurrent.y;
/* loaded from: classes2.dex */
public abstract class CacheLoader<K, V> {

    /* loaded from: classes2.dex */
    public static final class InvalidCacheLoadException extends RuntimeException {
        public InvalidCacheLoadException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2.dex */
    public static final class UnsupportedLoadingOperationException extends UnsupportedOperationException {
        UnsupportedLoadingOperationException() {
        }
    }

    public abstract V a(K k10) throws Exception;

    public d0<V> b(K k10, V v10) throws Exception {
        com.google.common.base.o.s(k10);
        com.google.common.base.o.s(v10);
        return y.d(a(k10));
    }
}
