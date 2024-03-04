package io.grpc.internal;

import com.facebook.internal.ServerProtocol;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class i1 extends n0 {

    /* renamed from: c  reason: collision with root package name */
    private static final ReferenceQueue<i1> f42785c = new ReferenceQueue<>();

    /* renamed from: d  reason: collision with root package name */
    private static final ConcurrentMap<a, a> f42786d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f42787e = Logger.getLogger(i1.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private final a f42788b;

    /* loaded from: classes5.dex */
    static final class a extends WeakReference<i1> {

        /* renamed from: f  reason: collision with root package name */
        private static final boolean f42789f = Boolean.parseBoolean(System.getProperty("io.grpc.ManagedChannel.enableAllocationTracking", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE));

        /* renamed from: g  reason: collision with root package name */
        private static final RuntimeException f42790g = e();

        /* renamed from: a  reason: collision with root package name */
        private final ReferenceQueue<i1> f42791a;

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentMap<a, a> f42792b;

        /* renamed from: c  reason: collision with root package name */
        private final String f42793c;

        /* renamed from: d  reason: collision with root package name */
        private final Reference<RuntimeException> f42794d;

        /* renamed from: e  reason: collision with root package name */
        private final AtomicBoolean f42795e;

        a(i1 i1Var, io.grpc.q0 q0Var, ReferenceQueue<i1> referenceQueue, ConcurrentMap<a, a> concurrentMap) {
            super(i1Var, referenceQueue);
            RuntimeException runtimeException;
            this.f42795e = new AtomicBoolean();
            if (f42789f) {
                runtimeException = new RuntimeException("ManagedChannel allocation site");
            } else {
                runtimeException = f42790g;
            }
            this.f42794d = new SoftReference(runtimeException);
            this.f42793c = q0Var.toString();
            this.f42791a = referenceQueue;
            this.f42792b = concurrentMap;
            concurrentMap.put(this, this);
            b(referenceQueue);
        }

        static int b(ReferenceQueue<i1> referenceQueue) {
            int i9 = 0;
            while (true) {
                a aVar = (a) referenceQueue.poll();
                if (aVar == null) {
                    return i9;
                }
                RuntimeException runtimeException = aVar.f42794d.get();
                aVar.c();
                if (!aVar.f42795e.get()) {
                    i9++;
                    Level level = Level.SEVERE;
                    if (i1.f42787e.isLoggable(level)) {
                        LogRecord logRecord = new LogRecord(level, "*~*~*~ Channel {0} was not shutdown properly!!! ~*~*~*" + System.getProperty("line.separator") + "    Make sure to call shutdown()/shutdownNow() and wait until awaitTermination() returns true.");
                        logRecord.setLoggerName(i1.f42787e.getName());
                        logRecord.setParameters(new Object[]{aVar.f42793c});
                        logRecord.setThrown(runtimeException);
                        i1.f42787e.log(logRecord);
                    }
                }
            }
        }

        private void c() {
            super.clear();
            this.f42792b.remove(this);
            this.f42794d.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            if (this.f42795e.getAndSet(true)) {
                return;
            }
            clear();
        }

        private static RuntimeException e() {
            RuntimeException runtimeException = new RuntimeException("ManagedChannel allocation site not recorded.  Set -Dio.grpc.ManagedChannel.enableAllocationTracking=true to enable it");
            runtimeException.setStackTrace(new StackTraceElement[0]);
            return runtimeException;
        }

        @Override // java.lang.ref.Reference
        public void clear() {
            c();
            b(this.f42791a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(io.grpc.q0 q0Var) {
        this(q0Var, f42785c, f42786d);
    }

    @Override // io.grpc.internal.n0, io.grpc.q0
    public io.grpc.q0 m() {
        this.f42788b.d();
        return super.m();
    }

    @Override // io.grpc.internal.n0, io.grpc.q0
    public io.grpc.q0 n() {
        this.f42788b.d();
        return super.n();
    }

    i1(io.grpc.q0 q0Var, ReferenceQueue<i1> referenceQueue, ConcurrentMap<a, a> concurrentMap) {
        super(q0Var);
        this.f42788b = new a(this, q0Var, referenceQueue, concurrentMap);
    }
}
