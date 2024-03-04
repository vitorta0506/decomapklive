package h0;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f40238a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final b f40239b = new b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final Lock f40240a = new ReentrantLock();

        /* renamed from: b  reason: collision with root package name */
        int f40241b;

        a() {
        }
    }

    /* loaded from: classes.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<a> f40242a = new ArrayDeque();

        b() {
        }

        a a() {
            a poll;
            synchronized (this.f40242a) {
                poll = this.f40242a.poll();
            }
            return poll == null ? new a() : poll;
        }

        void b(a aVar) {
            synchronized (this.f40242a) {
                if (this.f40242a.size() < 10) {
                    this.f40242a.offer(aVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        a aVar;
        synchronized (this) {
            aVar = this.f40238a.get(str);
            if (aVar == null) {
                aVar = this.f40239b.a();
                this.f40238a.put(str, aVar);
            }
            aVar.f40241b++;
        }
        aVar.f40240a.lock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str) {
        a aVar;
        synchronized (this) {
            aVar = (a) v0.j.d(this.f40238a.get(str));
            int i9 = aVar.f40241b;
            if (i9 >= 1) {
                int i10 = i9 - 1;
                aVar.f40241b = i10;
                if (i10 == 0) {
                    a remove = this.f40238a.remove(str);
                    if (remove.equals(aVar)) {
                        this.f40239b.b(remove);
                    } else {
                        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + aVar + ", but actually removed: " + remove + ", safeKey: " + str);
                    }
                }
            } else {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + aVar.f40241b);
            }
        }
        aVar.f40240a.unlock();
    }
}
