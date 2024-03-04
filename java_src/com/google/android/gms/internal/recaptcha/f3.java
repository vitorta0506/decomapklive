package com.google.android.gms.internal.recaptcha;

import java.io.Closeable;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class f3<T extends Closeable> implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final T f8661a;

    private f3(T t10) {
        this.f8661a = t10;
    }

    public static <T extends Closeable> f3<T> a(T t10) {
        return new f3<>(t10);
    }

    public final T c() {
        return this.f8661a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        T t10 = this.f8661a;
        if (t10 != null) {
            t10.close();
        }
    }
}
