package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.k;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.Semaphore;
/* loaded from: classes4.dex */
public abstract class h<T extends k> {

    /* renamed from: a  reason: collision with root package name */
    final Deque<T> f31842a = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    volatile boolean f31844c = false;

    /* renamed from: d  reason: collision with root package name */
    private final g<T> f31845d = (g<T>) new g<T>() { // from class: com.tencent.liteav.videobase.frame.h.1
        @Override // com.tencent.liteav.videobase.frame.g
        public final void a(T t10) {
            h.this.f31843b.release();
            synchronized (h.this) {
                if (h.this.f31844c) {
                    return;
                }
                h.this.f31842a.addFirst(t10);
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    final Semaphore f31843b = new Semaphore(1);

    private void c() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f31842a);
            this.f31842a.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public final T a() throws InterruptedException {
        T a10;
        this.f31843b.acquire();
        synchronized (this) {
            if (!this.f31842a.isEmpty()) {
                a10 = this.f31842a.removeFirst();
            } else {
                a10 = a(this.f31845d);
            }
        }
        if (a10.retain() != 1) {
            LiteavLog.e("LimitedFramePool", "invalid reference count for %s", a10);
        }
        return a10;
    }

    protected abstract T a(g<T> gVar);

    public final void b() {
        this.f31844c = true;
        c();
    }
}
