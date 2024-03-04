package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes2.dex */
public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    private final Object f6936a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final PriorityQueue<Integer> f6937b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    private int f6938c = Integer.MIN_VALUE;

    /* loaded from: classes2.dex */
    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i9, int i10) {
            super("Priority too low [priority=" + i9 + ", highest=" + i10 + "]");
        }
    }

    public void a(int i9) {
        synchronized (this.f6936a) {
            this.f6937b.add(Integer.valueOf(i9));
            this.f6938c = Math.max(this.f6938c, i9);
        }
    }

    public void b(int i9) {
        synchronized (this.f6936a) {
            this.f6937b.remove(Integer.valueOf(i9));
            this.f6938c = this.f6937b.isEmpty() ? Integer.MIN_VALUE : ((Integer) l0.j(this.f6937b.peek())).intValue();
            this.f6936a.notifyAll();
        }
    }
}
