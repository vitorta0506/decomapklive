package ug;

import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes5.dex */
public class i implements ThreadFactory {

    /* renamed from: f  reason: collision with root package name */
    private static final AtomicInteger f58483f = new AtomicInteger();

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f58484a;

    /* renamed from: b  reason: collision with root package name */
    private final String f58485b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f58486c;

    /* renamed from: d  reason: collision with root package name */
    private final int f58487d;

    /* renamed from: e  reason: collision with root package name */
    protected final ThreadGroup f58488e;

    public i(String str, boolean z10) {
        this(str, z10, 5);
    }

    public static String b(Class<?> cls) {
        io.grpc.netty.shaded.io.netty.util.internal.s.h(cls, "poolType");
        String l10 = io.grpc.netty.shaded.io.netty.util.internal.b0.l(cls);
        int length = l10.length();
        if (length != 0) {
            if (length != 1) {
                if (Character.isUpperCase(l10.charAt(0)) && Character.isLowerCase(l10.charAt(1))) {
                    return Character.toLowerCase(l10.charAt(0)) + l10.substring(1);
                }
                return l10;
            }
            return l10.toLowerCase(Locale.US);
        }
        return "unknown";
    }

    protected Thread a(Runnable runnable, String str) {
        return new p(this.f58488e, runnable, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Runnable b10 = o.b(runnable);
        Thread a10 = a(b10, this.f58485b + this.f58484a.incrementAndGet());
        try {
            boolean isDaemon = a10.isDaemon();
            boolean z10 = this.f58486c;
            if (isDaemon != z10) {
                a10.setDaemon(z10);
            }
            int priority = a10.getPriority();
            int i9 = this.f58487d;
            if (priority != i9) {
                a10.setPriority(i9);
            }
        } catch (Exception unused) {
        }
        return a10;
    }

    public i(Class<?> cls, int i9) {
        this(cls, false, i9);
    }

    public i(Class<?> cls, boolean z10, int i9) {
        this(b(cls), z10, i9);
    }

    public i(String str, boolean z10, int i9, ThreadGroup threadGroup) {
        this.f58484a = new AtomicInteger();
        io.grpc.netty.shaded.io.netty.util.internal.s.h(str, "poolName");
        if (i9 >= 1 && i9 <= 10) {
            this.f58485b = str + '-' + f58483f.incrementAndGet() + '-';
            this.f58486c = z10;
            this.f58487d = i9;
            this.f58488e = threadGroup;
            return;
        }
        throw new IllegalArgumentException("priority: " + i9 + " (expected: Thread.MIN_PRIORITY <= priority <= Thread.MAX_PRIORITY)");
    }

    public i(String str, boolean z10, int i9) {
        this(str, z10, i9, null);
    }
}
