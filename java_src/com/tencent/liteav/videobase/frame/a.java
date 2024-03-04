package com.tencent.liteav.videobase.frame;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.k;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public abstract class a<T extends k> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f31824a = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: c  reason: collision with root package name */
    private final Map<InterfaceC0328a, Deque<T>> f31826c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f31827d = false;

    /* renamed from: e  reason: collision with root package name */
    private final com.tencent.liteav.base.b.a f31828e = new com.tencent.liteav.base.b.a(f31824a);

    /* renamed from: f  reason: collision with root package name */
    private final g<T> f31829f = new g(this) { // from class: com.tencent.liteav.videobase.frame.b

        /* renamed from: a  reason: collision with root package name */
        private final a f31830a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f31830a = this;
        }

        @Override // com.tencent.liteav.videobase.frame.g
        public final void a(k kVar) {
            a.a(this.f31830a, kVar);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final String f31825b = null;

    /* renamed from: com.tencent.liteav.videobase.frame.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0328a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(a aVar, k kVar) {
        if (kVar == 0) {
            return;
        }
        synchronized (aVar.f31826c) {
            if (aVar.f31827d) {
                aVar.a((a) kVar);
                return;
            }
            Deque<T> b10 = aVar.b(aVar.b((a) kVar));
            kVar.updateLastUsedTimestamp(SystemClock.elapsedRealtime());
            b10.addFirst(kVar);
            aVar.c();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c() {
        T peekLast;
        if (this.f31828e.a()) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ArrayList<k> arrayList = new ArrayList();
            synchronized (this.f31826c) {
                for (Deque<T> deque : this.f31826c.values()) {
                    while (!deque.isEmpty() && ((peekLast = deque.peekLast()) == null || elapsedRealtime - peekLast.getLastUsedTimestamp() >= f31824a)) {
                        deque.pollLast();
                        arrayList.add(peekLast);
                    }
                }
            }
            for (k kVar : arrayList) {
                a((a<T>) kVar);
            }
        }
    }

    protected abstract T a(g<T> gVar, InterfaceC0328a interfaceC0328a);

    protected abstract void a(T t10);

    protected abstract InterfaceC0328a b(T t10);

    public void b() {
        this.f31827d = true;
        a();
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.f31827d) {
            return;
        }
        LiteavLog.e("FramePool", "%s must call destroy() before finalize()!\n%s", getClass().getName(), this.f31825b);
    }

    private Deque<T> b(InterfaceC0328a interfaceC0328a) {
        Deque<T> deque = this.f31826c.get(interfaceC0328a);
        if (deque == null) {
            LinkedList linkedList = new LinkedList();
            this.f31826c.put(interfaceC0328a, linkedList);
            return linkedList;
        }
        return deque;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final T a(InterfaceC0328a interfaceC0328a) {
        T removeFirst;
        synchronized (this.f31826c) {
            Deque<T> b10 = b(interfaceC0328a);
            removeFirst = !b10.isEmpty() ? b10.removeFirst() : null;
        }
        c();
        if (removeFirst == null) {
            removeFirst = a(this.f31829f, interfaceC0328a);
        }
        if (removeFirst.retain() != 1) {
            LiteavLog.e("FramePool", "invalid reference count for %s", removeFirst);
        }
        return removeFirst;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a() {
        ArrayList<k> arrayList = new ArrayList();
        synchronized (this.f31826c) {
            for (Deque<T> deque : this.f31826c.values()) {
                arrayList.addAll(deque);
            }
            this.f31826c.clear();
        }
        for (k kVar : arrayList) {
            a((a<T>) kVar);
        }
    }
}
