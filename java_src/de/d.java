package de;

import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import de.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4.dex */
public final class d<T> implements de.b<T> {

    /* renamed from: a  reason: collision with root package name */
    private final de.a<T> f38045a;

    /* renamed from: b  reason: collision with root package name */
    private final ScheduledExecutorService f38046b;

    /* renamed from: c  reason: collision with root package name */
    private final e f38047c;

    /* renamed from: g  reason: collision with root package name */
    private final int f38051g;

    /* renamed from: d  reason: collision with root package name */
    private final LinkedHashSet<f<T>> f38048d = new LinkedHashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final LinkedHashSet<f<T>> f38049e = new LinkedHashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference<Future<?>> f38050f = new AtomicReference<>();
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    private final Runnable f38052h = new a();

    /* loaded from: classes4.dex */
    final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            d.this.e();
        }
    }

    /* loaded from: classes4.dex */
    final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            List<f<T>> c10 = d.this.f38045a.c();
            if (c10 == null || c10.isEmpty()) {
                return;
            }
            d.this.f38048d.addAll(c10);
            d.this.f38050f.set(d.this.f38046b.schedule(d.this.f38052h, 1000L, TimeUnit.MILLISECONDS));
        }
    }

    /* loaded from: classes4.dex */
    final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f38055a;

        c(Object obj) {
            this.f38055a = obj;
        }

        @Override // java.lang.Runnable
        public final void run() {
            d.this.f38048d.add(new f(this.f38055a));
            d.j(d.this);
            if (d.this.f38048d.size() >= d.this.f38051g) {
                d.this.e();
            } else if (d.this.f38050f.get() == null) {
                d.this.f38050f.set(d.this.f38046b.schedule(d.this.f38052h, 30000L, TimeUnit.MILLISECONDS));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: de.d$d  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public final class C0377d implements a.InterfaceC0376a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f38057a;

        /* renamed from: de.d$d$a */
        /* loaded from: classes4.dex */
        final class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                d.this.f38049e.removeAll(C0377d.this.f38057a);
                d.j(d.this);
            }
        }

        /* renamed from: de.d$d$b */
        /* loaded from: classes4.dex */
        final class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                d.this.f38049e.removeAll(C0377d.this.f38057a);
                d.this.f38048d.addAll(C0377d.this.f38057a);
            }
        }

        /* renamed from: de.d$d$c */
        /* loaded from: classes4.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Error f38061a;

            c(Error error) {
                this.f38061a = error;
            }

            @Override // java.lang.Runnable
            public final void run() {
                d.this.f38049e.removeAll(C0377d.this.f38057a);
                for (f fVar : C0377d.this.f38057a) {
                    if (fVar.b() <= 0) {
                        fVar.a();
                        d.this.f38048d.add(fVar);
                    }
                }
                d.j(d.this);
            }
        }

        C0377d(List list) {
            this.f38057a = list;
        }

        @Override // de.a.InterfaceC0376a
        public final void a(Error error) {
            d.this.f38046b.execute(new c(error));
        }

        @Override // de.a.InterfaceC0376a
        public final void b() {
            d.this.f38046b.execute(new b());
        }

        @Override // de.a.InterfaceC0376a
        public final void onSuccess() {
            d.this.f38046b.execute(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(de.a<T> aVar, ScheduledExecutorService scheduledExecutorService, e eVar, int i9) {
        this.f38045a = aVar;
        this.f38046b = scheduledExecutorService;
        this.f38051g = i9;
        this.f38047c = eVar;
    }

    @VisibleForTesting
    private static <T> List<T> b(Collection<f<T>> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (f<T> fVar : collection) {
            arrayList.add(fVar.c());
        }
        return arrayList;
    }

    static /* synthetic */ void j(d dVar) {
        ArrayList arrayList = new ArrayList(dVar.f38048d);
        arrayList.addAll(dVar.f38049e);
        dVar.f38045a.a(arrayList);
    }

    @AnyThread
    public final void c() {
        this.f38046b.execute(new b());
        this.f38047c.a(this);
    }

    @VisibleForTesting
    @WorkerThread
    final void e() {
        Future<?> andSet = this.f38050f.getAndSet(null);
        if (andSet != null) {
            andSet.cancel(false);
        }
        if (this.f38048d.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f38048d);
        this.f38048d.clear();
        this.f38049e.addAll(arrayList);
        this.f38045a.b(b(arrayList), new C0377d(arrayList));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Runnable f() {
        return this.f38052h;
    }

    @Override // de.b
    @AnyThread
    public final void push(T t10) {
        this.f38046b.execute(new c(t10));
    }
}
