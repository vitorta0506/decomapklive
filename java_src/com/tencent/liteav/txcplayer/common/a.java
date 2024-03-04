package com.tencent.liteav.txcplayer.common;

import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class a extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    public static ThreadPoolExecutor f31356a;

    private a() {
        super(1, 3, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
    }

    public static synchronized ThreadPoolExecutor a() {
        ThreadPoolExecutor threadPoolExecutor;
        synchronized (a.class) {
            ThreadPoolExecutor threadPoolExecutor2 = f31356a;
            if (threadPoolExecutor2 == null || threadPoolExecutor2.isShutdown()) {
                f31356a = new a();
            }
            threadPoolExecutor = f31356a;
        }
        return threadPoolExecutor;
    }
}
