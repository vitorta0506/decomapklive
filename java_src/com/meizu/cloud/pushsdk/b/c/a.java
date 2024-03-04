package com.meizu.cloud.pushsdk.b.c;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class a implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final ThreadPoolExecutor f28223a;

    /* renamed from: com.meizu.cloud.pushsdk.b.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static class C0278a {

        /* renamed from: a  reason: collision with root package name */
        private static a f28224a = new a();
    }

    private a() {
        this.f28223a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new c().a("io-pool-%d").a());
    }

    public static a a() {
        return C0278a.f28224a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f28223a.execute(runnable);
    }
}
