package com.meizu.cloud.pushsdk.b.c;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class b implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadPoolExecutor f28225a;

    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static b f28226a = new b();
    }

    private b() {
        this.f28225a = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new c().a((Integer) 10).a("message-pool-%d").a());
    }

    public static b a() {
        return a.f28226a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f28225a.execute(runnable);
    }
}
