package io.grpc.internal;

import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes5.dex */
final class i implements e1 {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicLong f42784a = new AtomicLong();

    @Override // io.grpc.internal.e1
    public void add(long j10) {
        this.f42784a.getAndAdd(j10);
    }
}
