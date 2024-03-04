package com.google.android.gms.dynamite;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public final class b {
    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")

    /* renamed from: a  reason: collision with root package name */
    private static volatile ClassLoader f7874a;
    @Nullable
    @GuardedBy("DynamiteLoaderV2ClassLoader.class")

    /* renamed from: b  reason: collision with root package name */
    private static volatile Thread f7875b;

    @Nullable
    public static synchronized ClassLoader a() {
        ClassLoader classLoader;
        synchronized (b.class) {
            if (f7874a == null) {
                f7874a = b();
            }
            classLoader = f7874a;
        }
        return classLoader;
    }

    @Nullable
    private static synchronized ClassLoader b() {
        synchronized (b.class) {
            ClassLoader classLoader = null;
            if (f7875b == null) {
                f7875b = c();
                if (f7875b == null) {
                    return null;
                }
            }
            synchronized (f7875b) {
                try {
                    classLoader = f7875b.getContextClassLoader();
                } catch (SecurityException e10) {
                    String message = e10.getMessage();
                    Log.w("DynamiteLoaderV2CL", "Failed to get thread context classloader " + message);
                }
            }
            return classLoader;
        }
    }

    @Nullable
    private static synchronized Thread c() {
        SecurityException e10;
        a aVar;
        a aVar2;
        ThreadGroup threadGroup;
        synchronized (b.class) {
            ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
            if (threadGroup2 == null) {
                return null;
            }
            synchronized (Void.class) {
                try {
                    int activeGroupCount = threadGroup2.activeGroupCount();
                    ThreadGroup[] threadGroupArr = new ThreadGroup[activeGroupCount];
                    threadGroup2.enumerate(threadGroupArr);
                    int i9 = 0;
                    int i10 = 0;
                    while (true) {
                        if (i10 >= activeGroupCount) {
                            threadGroup = null;
                            break;
                        }
                        threadGroup = threadGroupArr[i10];
                        if ("dynamiteLoader".equals(threadGroup.getName())) {
                            break;
                        }
                        i10++;
                    }
                    if (threadGroup == null) {
                        threadGroup = new ThreadGroup(threadGroup2, "dynamiteLoader");
                    }
                    int activeCount = threadGroup.activeCount();
                    Thread[] threadArr = new Thread[activeCount];
                    threadGroup.enumerate(threadArr);
                    while (true) {
                        if (i9 >= activeCount) {
                            aVar2 = null;
                            break;
                        }
                        aVar2 = threadArr[i9];
                        if ("GmsDynamite".equals(aVar2.getName())) {
                            break;
                        }
                        i9++;
                    }
                } catch (SecurityException e11) {
                    e10 = e11;
                    aVar = null;
                }
                if (aVar2 == null) {
                    try {
                        aVar = new a(threadGroup, "GmsDynamite");
                        try {
                            aVar.setContextClassLoader(null);
                            aVar.start();
                        } catch (SecurityException e12) {
                            e10 = e12;
                            Log.w("DynamiteLoaderV2CL", "Failed to enumerate thread/threadgroup " + e10.getMessage());
                            aVar2 = aVar;
                            return aVar2;
                        }
                    } catch (SecurityException e13) {
                        e10 = e13;
                        aVar = aVar2;
                    }
                    aVar2 = aVar;
                }
            }
            return aVar2;
        }
    }
}
