package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.n;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g0 implements n {
    @GuardedBy("messagePool")

    /* renamed from: b  reason: collision with root package name */
    private static final List<b> f6965b = new ArrayList(50);

    /* renamed from: a  reason: collision with root package name */
    private final Handler f6966a;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b implements n.a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Message f6967a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private g0 f6968b;

        private b() {
        }

        private void b() {
            this.f6967a = null;
            this.f6968b = null;
            g0.n(this);
        }

        @Override // com.google.android.exoplayer2.util.n.a
        public void a() {
            ((Message) com.google.android.exoplayer2.util.a.e(this.f6967a)).sendToTarget();
            b();
        }

        public boolean c(Handler handler) {
            boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue((Message) com.google.android.exoplayer2.util.a.e(this.f6967a));
            b();
            return sendMessageAtFrontOfQueue;
        }

        public b d(Message message, g0 g0Var) {
            this.f6967a = message;
            this.f6968b = g0Var;
            return this;
        }
    }

    public g0(Handler handler) {
        this.f6966a = handler;
    }

    private static b m() {
        b remove;
        List<b> list = f6965b;
        synchronized (list) {
            if (list.isEmpty()) {
                remove = new b();
            } else {
                remove = list.remove(list.size() - 1);
            }
        }
        return remove;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n(b bVar) {
        List<b> list = f6965b;
        synchronized (list) {
            if (list.size() < 50) {
                list.add(bVar);
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.n
    public n.a a(int i9) {
        return m().d(this.f6966a.obtainMessage(i9), this);
    }

    @Override // com.google.android.exoplayer2.util.n
    public boolean b(n.a aVar) {
        return ((b) aVar).c(this.f6966a);
    }

    @Override // com.google.android.exoplayer2.util.n
    public boolean c(int i9) {
        return this.f6966a.hasMessages(i9);
    }

    @Override // com.google.android.exoplayer2.util.n
    public n.a d(int i9, int i10, int i11, @Nullable Object obj) {
        return m().d(this.f6966a.obtainMessage(i9, i10, i11, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.n
    public n.a e(int i9, @Nullable Object obj) {
        return m().d(this.f6966a.obtainMessage(i9, obj), this);
    }

    @Override // com.google.android.exoplayer2.util.n
    public void f(@Nullable Object obj) {
        this.f6966a.removeCallbacksAndMessages(obj);
    }

    @Override // com.google.android.exoplayer2.util.n
    public n.a g(int i9, int i10, int i11) {
        return m().d(this.f6966a.obtainMessage(i9, i10, i11), this);
    }

    @Override // com.google.android.exoplayer2.util.n
    public boolean h(Runnable runnable) {
        return this.f6966a.post(runnable);
    }

    @Override // com.google.android.exoplayer2.util.n
    public boolean i(int i9) {
        return this.f6966a.sendEmptyMessage(i9);
    }

    @Override // com.google.android.exoplayer2.util.n
    public boolean j(int i9, long j10) {
        return this.f6966a.sendEmptyMessageAtTime(i9, j10);
    }

    @Override // com.google.android.exoplayer2.util.n
    public void k(int i9) {
        this.f6966a.removeMessages(i9);
    }
}
