package io.grpc.internal;

import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public interface m2 {

    /* renamed from: a  reason: collision with root package name */
    public static final m2 f42901a = new a();

    /* loaded from: classes5.dex */
    class a implements m2 {
        a() {
        }

        @Override // io.grpc.internal.m2
        public long a() {
            return TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        }
    }

    long a();
}
