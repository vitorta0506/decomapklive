package com.google.common.util.concurrent;

import java.lang.Thread;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public final class l0 {

    /* renamed from: a  reason: collision with root package name */
    private String f13774a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f13775b = null;

    /* renamed from: c  reason: collision with root package name */
    private Integer f13776c = null;

    /* renamed from: d  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f13777d = null;

    /* renamed from: e  reason: collision with root package name */
    private ThreadFactory f13778e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ThreadFactory f13779a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f13780b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AtomicLong f13781c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Boolean f13782d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Integer f13783e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f13784f;

        a(ThreadFactory threadFactory, String str, AtomicLong atomicLong, Boolean bool, Integer num, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f13779a = threadFactory;
            this.f13780b = str;
            this.f13781c = atomicLong;
            this.f13782d = bool;
            this.f13783e = num;
            this.f13784f = uncaughtExceptionHandler;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = this.f13779a.newThread(runnable);
            String str = this.f13780b;
            if (str != null) {
                AtomicLong atomicLong = this.f13781c;
                Objects.requireNonNull(atomicLong);
                newThread.setName(l0.d(str, Long.valueOf(atomicLong.getAndIncrement())));
            }
            Boolean bool = this.f13782d;
            if (bool != null) {
                newThread.setDaemon(bool.booleanValue());
            }
            Integer num = this.f13783e;
            if (num != null) {
                newThread.setPriority(num.intValue());
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f13784f;
            if (uncaughtExceptionHandler != null) {
                newThread.setUncaughtExceptionHandler(uncaughtExceptionHandler);
            }
            return newThread;
        }
    }

    private static ThreadFactory c(l0 l0Var) {
        String str = l0Var.f13774a;
        Boolean bool = l0Var.f13775b;
        Integer num = l0Var.f13776c;
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = l0Var.f13777d;
        ThreadFactory threadFactory = l0Var.f13778e;
        if (threadFactory == null) {
            threadFactory = Executors.defaultThreadFactory();
        }
        return new a(threadFactory, str, str != null ? new AtomicLong(0L) : null, bool, num, uncaughtExceptionHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(String str, Object... objArr) {
        return String.format(Locale.ROOT, str, objArr);
    }

    public ThreadFactory b() {
        return c(this);
    }

    public l0 e(boolean z10) {
        this.f13775b = Boolean.valueOf(z10);
        return this;
    }

    public l0 f(String str) {
        d(str, 0);
        this.f13774a = str;
        return this;
    }
}
