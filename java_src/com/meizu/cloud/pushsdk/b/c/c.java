package com.meizu.cloud.pushsdk.b.c;

import java.lang.Thread;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private String f28227a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f28228b = null;

    /* renamed from: c  reason: collision with root package name */
    private Integer f28229c = null;

    /* renamed from: d  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f28230d = null;

    /* renamed from: e  reason: collision with root package name */
    private ThreadFactory f28231e = null;

    private static ThreadFactory a(c cVar) {
        final String str = cVar.f28227a;
        final Boolean bool = cVar.f28228b;
        final Integer num = cVar.f28229c;
        final Thread.UncaughtExceptionHandler uncaughtExceptionHandler = cVar.f28230d;
        ThreadFactory threadFactory = cVar.f28231e;
        if (threadFactory == null) {
            threadFactory = Executors.defaultThreadFactory();
        }
        final ThreadFactory threadFactory2 = threadFactory;
        final AtomicLong atomicLong = str != null ? new AtomicLong(0L) : null;
        return new ThreadFactory() { // from class: com.meizu.cloud.pushsdk.b.c.c.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread newThread = threadFactory2.newThread(runnable);
                String str2 = str;
                if (str2 != null) {
                    newThread.setName(String.format(str2, Long.valueOf(atomicLong.getAndIncrement())));
                }
                Boolean bool2 = bool;
                if (bool2 != null) {
                    newThread.setDaemon(bool2.booleanValue());
                }
                Integer num2 = num;
                if (num2 != null) {
                    newThread.setPriority(num2.intValue());
                }
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = uncaughtExceptionHandler;
                if (uncaughtExceptionHandler2 != null) {
                    newThread.setUncaughtExceptionHandler(uncaughtExceptionHandler2);
                }
                return newThread;
            }
        };
    }

    public c a(Integer num) {
        this.f28229c = num;
        return this;
    }

    public c a(String str) {
        String.format(str, 0);
        this.f28227a = str;
        return this;
    }

    public ThreadFactory a() {
        return a(this);
    }
}
