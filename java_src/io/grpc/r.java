package io.grpc;

import io.grpc.y0;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public class r {

    /* renamed from: d  reason: collision with root package name */
    static final Logger f45315d = Logger.getLogger(r.class.getName());

    /* renamed from: e  reason: collision with root package name */
    public static final r f45316e = new r();

    /* renamed from: a  reason: collision with root package name */
    final a f45317a;

    /* renamed from: b  reason: collision with root package name */
    final y0.d<e<?>, Object> f45318b;

    /* renamed from: c  reason: collision with root package name */
    final int f45319c;

    /* loaded from: classes5.dex */
    public static final class a extends r implements Closeable {

        /* renamed from: f  reason: collision with root package name */
        private final t f45320f;

        /* renamed from: g  reason: collision with root package name */
        private final r f45321g;

        /* renamed from: h  reason: collision with root package name */
        private ArrayList<d> f45322h;

        /* renamed from: i  reason: collision with root package name */
        private b f45323i;

        /* renamed from: j  reason: collision with root package name */
        private Throwable f45324j;

        /* renamed from: k  reason: collision with root package name */
        private ScheduledFuture<?> f45325k;

        /* renamed from: l  reason: collision with root package name */
        private boolean f45326l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.grpc.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public class C0496a implements b {
            C0496a() {
            }

            @Override // io.grpc.r.b
            public void a(r rVar) {
                a.this.C(rVar.e());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void A(d dVar) {
            synchronized (this) {
                if (p()) {
                    dVar.c();
                } else {
                    ArrayList<d> arrayList = this.f45322h;
                    if (arrayList == null) {
                        ArrayList<d> arrayList2 = new ArrayList<>();
                        this.f45322h = arrayList2;
                        arrayList2.add(dVar);
                        if (this.f45317a != null) {
                            C0496a c0496a = new C0496a();
                            this.f45323i = c0496a;
                            this.f45317a.A(new d(c.INSTANCE, c0496a, this));
                        }
                    } else {
                        arrayList.add(dVar);
                    }
                }
            }
        }

        private void F() {
            synchronized (this) {
                ArrayList<d> arrayList = this.f45322h;
                if (arrayList == null) {
                    return;
                }
                b bVar = this.f45323i;
                this.f45323i = null;
                this.f45322h = null;
                Iterator<d> it = arrayList.iterator();
                while (it.hasNext()) {
                    d next = it.next();
                    if (next.f45332c == this) {
                        next.c();
                    }
                }
                Iterator<d> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    d next2 = it2.next();
                    if (next2.f45332c != this) {
                        next2.c();
                    }
                }
                a aVar = this.f45317a;
                if (aVar != null) {
                    aVar.r(bVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void I(b bVar, r rVar) {
            synchronized (this) {
                ArrayList<d> arrayList = this.f45322h;
                if (arrayList != null) {
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        }
                        d dVar = this.f45322h.get(size);
                        if (dVar.f45331b == bVar && dVar.f45332c == rVar) {
                            this.f45322h.remove(size);
                            break;
                        }
                        size--;
                    }
                    if (this.f45322h.isEmpty()) {
                        a aVar = this.f45317a;
                        if (aVar != null) {
                            aVar.r(this.f45323i);
                        }
                        this.f45323i = null;
                        this.f45322h = null;
                    }
                }
            }
        }

        public boolean C(Throwable th2) {
            boolean z10;
            ScheduledFuture<?> scheduledFuture;
            synchronized (this) {
                z10 = true;
                scheduledFuture = null;
                if (this.f45326l) {
                    z10 = false;
                } else {
                    this.f45326l = true;
                    ScheduledFuture<?> scheduledFuture2 = this.f45325k;
                    if (scheduledFuture2 != null) {
                        this.f45325k = null;
                        scheduledFuture = scheduledFuture2;
                    }
                    this.f45324j = th2;
                }
            }
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            if (z10) {
                F();
            }
            return z10;
        }

        @Override // io.grpc.r
        public void a(b bVar, Executor executor) {
            r.h(bVar, "cancellationListener");
            r.h(executor, "executor");
            A(new d(executor, bVar, this));
        }

        @Override // io.grpc.r
        public r c() {
            return this.f45321g.c();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            C(null);
        }

        @Override // io.grpc.r
        public Throwable e() {
            if (p()) {
                return this.f45324j;
            }
            return null;
        }

        @Override // io.grpc.r
        public void k(r rVar) {
            this.f45321g.k(rVar);
        }

        @Override // io.grpc.r
        public t o() {
            return this.f45320f;
        }

        @Override // io.grpc.r
        public boolean p() {
            synchronized (this) {
                if (this.f45326l) {
                    return true;
                }
                if (super.p()) {
                    C(super.e());
                    return true;
                }
                return false;
            }
        }

        @Override // io.grpc.r
        public void r(b bVar) {
            I(bVar, this);
        }
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a(r rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum c implements Executor {
        INSTANCE;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Context.DirectExecutor";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Executor f45330a;

        /* renamed from: b  reason: collision with root package name */
        final b f45331b;

        /* renamed from: c  reason: collision with root package name */
        private final r f45332c;

        d(Executor executor, b bVar, r rVar) {
            this.f45330a = executor;
            this.f45331b = bVar;
            this.f45332c = rVar;
        }

        void c() {
            try {
                this.f45330a.execute(this);
            } catch (Throwable th2) {
                r.f45315d.log(Level.INFO, "Exception notifying context listener", th2);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f45331b.a(this.f45332c);
        }
    }

    /* loaded from: classes5.dex */
    public static final class e<T> {

        /* renamed from: a  reason: collision with root package name */
        private final String f45333a;

        /* renamed from: b  reason: collision with root package name */
        private final T f45334b;

        e(String str) {
            this(str, null);
        }

        public T a(r rVar) {
            T t10 = (T) y0.a(rVar.f45318b, this);
            return t10 == null ? this.f45334b : t10;
        }

        public String toString() {
            return this.f45333a;
        }

        e(String str, T t10) {
            this.f45333a = (String) r.h(str, "name");
            this.f45334b = t10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        static final g f45335a;

        static {
            AtomicReference atomicReference = new AtomicReference();
            f45335a = a(atomicReference);
            Throwable th2 = (Throwable) atomicReference.get();
            if (th2 != null) {
                r.f45315d.log(Level.FINE, "Storage override doesn't exist. Using default", th2);
            }
        }

        private static g a(AtomicReference<? super ClassNotFoundException> atomicReference) {
            try {
                return (g) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(g.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e10) {
                atomicReference.set(e10);
                return new e1();
            } catch (Exception e11) {
                throw new RuntimeException("Storage override failed to initialize", e11);
            }
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class g {
        @Deprecated
        public void a(r rVar) {
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }

        public abstract r b();

        public abstract void c(r rVar, r rVar2);

        public r d(r rVar) {
            r b10 = b();
            a(rVar);
            return b10;
        }
    }

    private r(r rVar, y0.d<e<?>, Object> dVar) {
        this.f45317a = d(rVar);
        this.f45318b = dVar;
        int i9 = rVar.f45319c + 1;
        this.f45319c = i9;
        t(i9);
    }

    static a d(r rVar) {
        if (rVar instanceof a) {
            return (a) rVar;
        }
        return rVar.f45317a;
    }

    static <T> T h(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static r j() {
        r b10 = s().b();
        return b10 == null ? f45316e : b10;
    }

    public static <T> e<T> q(String str) {
        return new e<>(str);
    }

    static g s() {
        return f.f45335a;
    }

    private static void t(int i9) {
        if (i9 == 1000) {
            f45315d.log(Level.SEVERE, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000", (Throwable) new Exception());
        }
    }

    public void a(b bVar, Executor executor) {
        h(bVar, "cancellationListener");
        h(executor, "executor");
        a aVar = this.f45317a;
        if (aVar == null) {
            return;
        }
        aVar.A(new d(executor, bVar, this));
    }

    public r c() {
        r d10 = s().d(this);
        return d10 == null ? f45316e : d10;
    }

    public Throwable e() {
        a aVar = this.f45317a;
        if (aVar == null) {
            return null;
        }
        return aVar.e();
    }

    public void k(r rVar) {
        h(rVar, "toAttach");
        s().c(this, rVar);
    }

    public t o() {
        a aVar = this.f45317a;
        if (aVar == null) {
            return null;
        }
        return aVar.o();
    }

    public boolean p() {
        a aVar = this.f45317a;
        if (aVar == null) {
            return false;
        }
        return aVar.p();
    }

    public void r(b bVar) {
        a aVar = this.f45317a;
        if (aVar == null) {
            return;
        }
        aVar.I(bVar, this);
    }

    public <V> r v(e<V> eVar, V v10) {
        return new r(this, y0.b(this.f45318b, eVar, v10));
    }

    private r() {
        this.f45317a = null;
        this.f45318b = null;
        this.f45319c = 0;
        t(0);
    }
}
