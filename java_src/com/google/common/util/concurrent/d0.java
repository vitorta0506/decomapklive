package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* loaded from: classes2.dex */
public interface d0<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
