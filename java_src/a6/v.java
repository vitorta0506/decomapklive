package a6;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class v<T> implements k6.b<Set<T>> {

    /* renamed from: b  reason: collision with root package name */
    private volatile Set<T> f701b = null;

    /* renamed from: a  reason: collision with root package name */
    private volatile Set<k6.b<T>> f700a = Collections.newSetFromMap(new ConcurrentHashMap());

    v(Collection<k6.b<T>> collection) {
        this.f700a.addAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v<?> b(Collection<k6.b<?>> collection) {
        return new v<>((Set) collection);
    }

    private synchronized void d() {
        for (k6.b<T> bVar : this.f700a) {
            this.f701b.add(bVar.get());
        }
        this.f700a = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(k6.b<T> bVar) {
        if (this.f701b == null) {
            this.f700a.add(bVar);
        } else {
            this.f701b.add(bVar.get());
        }
    }

    @Override // k6.b
    /* renamed from: c */
    public Set<T> get() {
        if (this.f701b == null) {
            synchronized (this) {
                if (this.f701b == null) {
                    this.f701b = Collections.newSetFromMap(new ConcurrentHashMap());
                    d();
                }
            }
        }
        return Collections.unmodifiableSet(this.f701b);
    }
}
