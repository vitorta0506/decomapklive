package io.grpc.netty.shaded.io.netty.util;

import io.grpc.netty.shaded.io.netty.util.a;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
public abstract class a<T extends a<T>> implements i<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicLong f45000d = new AtomicLong();

    /* renamed from: a  reason: collision with root package name */
    private final int f45001a;

    /* renamed from: b  reason: collision with root package name */
    private final String f45002b;

    /* renamed from: c  reason: collision with root package name */
    private final long f45003c = f45000d.getAndIncrement();

    /* JADX INFO: Access modifiers changed from: protected */
    public a(int i9, String str) {
        this.f45001a = i9;
        this.f45002b = str;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public final int compareTo(T t10) {
        if (this == t10) {
            return 0;
        }
        int hashCode = hashCode() - t10.hashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        long j10 = this.f45003c;
        long j11 = t10.f45003c;
        if (j10 < j11) {
            return -1;
        }
        if (j10 > j11) {
            return 1;
        }
        throw new Error("failed to compare two different constants");
    }

    public final int b() {
        return this.f45001a;
    }

    public final String c() {
        return this.f45002b;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final String toString() {
        return c();
    }
}
