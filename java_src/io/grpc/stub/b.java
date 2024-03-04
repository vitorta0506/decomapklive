package io.grpc.stub;

import com.google.common.base.o;
import io.grpc.stub.b;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public abstract class b<S extends b<S>> {

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.d f45404a;

    /* renamed from: b  reason: collision with root package name */
    private final io.grpc.c f45405b;

    /* loaded from: classes5.dex */
    public interface a<T extends b<T>> {
        T a(io.grpc.d dVar, io.grpc.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b(io.grpc.d dVar, io.grpc.c cVar) {
        this.f45404a = (io.grpc.d) o.t(dVar, "channel");
        this.f45405b = (io.grpc.c) o.t(cVar, "callOptions");
    }

    protected abstract S a(io.grpc.d dVar, io.grpc.c cVar);

    public final io.grpc.c b() {
        return this.f45405b;
    }

    public final io.grpc.d c() {
        return this.f45404a;
    }

    public final S d(long j10, TimeUnit timeUnit) {
        return a(this.f45404a, this.f45405b.m(j10, timeUnit));
    }

    public final S e() {
        return a(this.f45404a, this.f45405b.s());
    }
}
