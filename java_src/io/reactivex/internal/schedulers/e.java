package io.reactivex.internal.schedulers;

import io.reactivex.s;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes7.dex */
public final class e extends s {

    /* renamed from: d  reason: collision with root package name */
    private static final RxThreadFactory f52720d = new RxThreadFactory("RxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.newthread-priority", 5).intValue())));

    /* renamed from: c  reason: collision with root package name */
    final ThreadFactory f52721c;

    public e() {
        this(f52720d);
    }

    @Override // io.reactivex.s
    public s.c b() {
        return new f(this.f52721c);
    }

    public e(ThreadFactory threadFactory) {
        this.f52721c = threadFactory;
    }
}
