package io.grpc.alts.internal;

import com.google.common.base.Optional;
import io.grpc.alts.internal.t;
import java.io.IOException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private io.grpc.stub.h<HandshakerReq> f41893b;

    /* renamed from: c  reason: collision with root package name */
    private final t.d f41894c;

    /* renamed from: a  reason: collision with root package name */
    private final io.grpc.stub.h<HandshakerResp> f41892a = new b();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayBlockingQueue<Optional<HandshakerResp>> f41895d = new ArrayBlockingQueue<>(1);

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<String> f41896e = new AtomicReference<>();

    /* loaded from: classes5.dex */
    private class b implements io.grpc.stub.h<HandshakerResp> {
        private b() {
        }

        @Override // io.grpc.stub.h
        /* renamed from: b */
        public void onNext(HandshakerResp handshakerResp) {
            try {
                i.this.f41895d.add(Optional.of(handshakerResp));
            } catch (IllegalStateException unused) {
                i.this.f41896e.compareAndSet(null, "Received an unexpected response.");
                i.this.c();
            }
        }

        @Override // io.grpc.stub.h
        public void onCompleted() {
            i.this.f41896e.compareAndSet(null, "Response stream closed.");
            i.this.f41895d.offer(Optional.absent());
        }

        @Override // io.grpc.stub.h
        public void onError(Throwable th2) {
            AtomicReference atomicReference = i.this.f41896e;
            atomicReference.compareAndSet(null, "Received a terminating error: " + th2.toString());
            i.this.f41895d.offer(Optional.absent());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(t.d dVar) {
        this.f41894c = dVar;
    }

    private void d() {
        if (this.f41893b == null) {
            this.f41893b = ((t.d) this.f41894c.d(20L, TimeUnit.SECONDS)).i(this.f41892a);
        }
    }

    private void e() throws IOException {
        if (this.f41896e.get() != null) {
            throw new IOException(this.f41896e.get());
        }
    }

    public void c() {
        io.grpc.stub.h<HandshakerReq> hVar = this.f41893b;
        if (hVar != null) {
            hVar.onCompleted();
        }
    }

    public HandshakerResp f(HandshakerReq handshakerReq) throws InterruptedException, IOException {
        d();
        e();
        if (this.f41895d.isEmpty()) {
            this.f41893b.onNext(handshakerReq);
            Optional<HandshakerResp> take = this.f41895d.take();
            if (!take.isPresent()) {
                e();
            }
            return take.get();
        }
        throw new IOException("Received an unexpected response.");
    }
}
