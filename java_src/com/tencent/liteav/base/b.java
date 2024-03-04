package com.tencent.liteav.base;

import android.os.StrictMode;
import java.io.Closeable;
/* loaded from: classes4.dex */
public final class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final StrictMode.ThreadPolicy f30880a;

    /* renamed from: b  reason: collision with root package name */
    private final StrictMode.VmPolicy f30881b;

    private b(StrictMode.ThreadPolicy threadPolicy) {
        this.f30880a = threadPolicy;
        this.f30881b = null;
    }

    public static b a() {
        return new b(StrictMode.allowThreadDiskWrites(), (byte) 0);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        StrictMode.ThreadPolicy threadPolicy = this.f30880a;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        StrictMode.VmPolicy vmPolicy = this.f30881b;
        if (vmPolicy != null) {
            StrictMode.setVmPolicy(vmPolicy);
        }
    }

    private b(StrictMode.ThreadPolicy threadPolicy, byte b10) {
        this(threadPolicy);
    }
}
