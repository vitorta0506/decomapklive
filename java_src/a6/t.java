package a6;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
class t implements h6.d, h6.c {
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, ConcurrentHashMap<h6.b<Object>, Executor>> f694a = new HashMap();
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private Queue<h6.a<?>> f695b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private final Executor f696c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Executor executor) {
        this.f696c = executor;
    }

    private synchronized Set<Map.Entry<h6.b<Object>, Executor>> f(h6.a<?> aVar) {
        ConcurrentHashMap<h6.b<Object>, Executor> concurrentHashMap;
        concurrentHashMap = this.f694a.get(aVar.b());
        return concurrentHashMap == null ? Collections.emptySet() : concurrentHashMap.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(Map.Entry entry, h6.a aVar) {
        ((h6.b) entry.getKey()).a(aVar);
    }

    @Override // h6.d
    public synchronized <T> void a(Class<T> cls, Executor executor, h6.b<? super T> bVar) {
        z.b(cls);
        z.b(bVar);
        z.b(executor);
        if (!this.f694a.containsKey(cls)) {
            this.f694a.put(cls, new ConcurrentHashMap<>());
        }
        this.f694a.get(cls).put(bVar, executor);
    }

    @Override // h6.d
    public synchronized <T> void b(Class<T> cls, h6.b<? super T> bVar) {
        z.b(cls);
        z.b(bVar);
        if (this.f694a.containsKey(cls)) {
            ConcurrentHashMap<h6.b<Object>, Executor> concurrentHashMap = this.f694a.get(cls);
            concurrentHashMap.remove(bVar);
            if (concurrentHashMap.isEmpty()) {
                this.f694a.remove(cls);
            }
        }
    }

    @Override // h6.d
    public <T> void c(Class<T> cls, h6.b<? super T> bVar) {
        a(cls, this.f696c, bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        Queue<h6.a<?>> queue;
        synchronized (this) {
            queue = this.f695b;
            if (queue != null) {
                this.f695b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (h6.a<?> aVar : queue) {
                h(aVar);
            }
        }
    }

    public void h(final h6.a<?> aVar) {
        z.b(aVar);
        synchronized (this) {
            Queue<h6.a<?>> queue = this.f695b;
            if (queue != null) {
                queue.add(aVar);
                return;
            }
            for (final Map.Entry<h6.b<Object>, Executor> entry : f(aVar)) {
                entry.getValue().execute(new Runnable() { // from class: a6.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        t.g(entry, aVar);
                    }
                });
            }
        }
    }
}
