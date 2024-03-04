package b2;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import b2.f;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.util.ArrayDeque;
/* loaded from: classes.dex */
public abstract class h<I extends DecoderInputBuffer, O extends f, E extends DecoderException> implements d<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f1140a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f1141b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<I> f1142c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque<O> f1143d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    private final I[] f1144e;

    /* renamed from: f  reason: collision with root package name */
    private final O[] f1145f;

    /* renamed from: g  reason: collision with root package name */
    private int f1146g;

    /* renamed from: h  reason: collision with root package name */
    private int f1147h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private I f1148i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private E f1149j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f1150k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f1151l;

    /* renamed from: m  reason: collision with root package name */
    private int f1152m;

    /* loaded from: classes.dex */
    class a extends Thread {
        a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            h.this.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h(I[] iArr, O[] oArr) {
        this.f1144e = iArr;
        this.f1146g = iArr.length;
        for (int i9 = 0; i9 < this.f1146g; i9++) {
            this.f1144e[i9] = f();
        }
        this.f1145f = oArr;
        this.f1147h = oArr.length;
        for (int i10 = 0; i10 < this.f1147h; i10++) {
            this.f1145f[i10] = g();
        }
        a aVar = new a("ExoPlayer:SimpleDecoder");
        this.f1140a = aVar;
        aVar.start();
    }

    private boolean e() {
        return !this.f1142c.isEmpty() && this.f1147h > 0;
    }

    private boolean j() throws InterruptedException {
        E h10;
        synchronized (this.f1141b) {
            while (!this.f1151l && !e()) {
                this.f1141b.wait();
            }
            if (this.f1151l) {
                return false;
            }
            I removeFirst = this.f1142c.removeFirst();
            O[] oArr = this.f1145f;
            int i9 = this.f1147h - 1;
            this.f1147h = i9;
            O o10 = oArr[i9];
            boolean z10 = this.f1150k;
            this.f1150k = false;
            if (removeFirst.k()) {
                o10.e(4);
            } else {
                if (removeFirst.j()) {
                    o10.e(Integer.MIN_VALUE);
                }
                if (removeFirst.l()) {
                    o10.e(134217728);
                }
                try {
                    h10 = i(removeFirst, o10, z10);
                } catch (OutOfMemoryError e10) {
                    h10 = h(e10);
                } catch (RuntimeException e11) {
                    h10 = h(e11);
                }
                if (h10 != null) {
                    synchronized (this.f1141b) {
                        this.f1149j = h10;
                    }
                    return false;
                }
            }
            synchronized (this.f1141b) {
                if (this.f1150k) {
                    o10.p();
                } else if (o10.j()) {
                    this.f1152m++;
                    o10.p();
                } else {
                    o10.f1134c = this.f1152m;
                    this.f1152m = 0;
                    this.f1143d.addLast(o10);
                }
                p(removeFirst);
            }
            return true;
        }
    }

    private void m() {
        if (e()) {
            this.f1141b.notify();
        }
    }

    private void n() throws DecoderException {
        E e10 = this.f1149j;
        if (e10 != null) {
            throw e10;
        }
    }

    private void p(I i9) {
        i9.f();
        I[] iArr = this.f1144e;
        int i10 = this.f1146g;
        this.f1146g = i10 + 1;
        iArr[i10] = i9;
    }

    private void r(O o10) {
        o10.f();
        O[] oArr = this.f1145f;
        int i9 = this.f1147h;
        this.f1147h = i9 + 1;
        oArr[i9] = o10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        do {
            try {
            } catch (InterruptedException e10) {
                throw new IllegalStateException(e10);
            }
        } while (j());
    }

    protected abstract I f();

    @Override // b2.d
    public final void flush() {
        synchronized (this.f1141b) {
            this.f1150k = true;
            this.f1152m = 0;
            I i9 = this.f1148i;
            if (i9 != null) {
                p(i9);
                this.f1148i = null;
            }
            while (!this.f1142c.isEmpty()) {
                p(this.f1142c.removeFirst());
            }
            while (!this.f1143d.isEmpty()) {
                this.f1143d.removeFirst().p();
            }
        }
    }

    protected abstract O g();

    protected abstract E h(Throwable th2);

    @Nullable
    protected abstract E i(I i9, O o10, boolean z10);

    @Override // b2.d
    @Nullable
    /* renamed from: k */
    public final I c() throws DecoderException {
        I i9;
        synchronized (this.f1141b) {
            n();
            com.google.android.exoplayer2.util.a.f(this.f1148i == null);
            int i10 = this.f1146g;
            if (i10 == 0) {
                i9 = null;
            } else {
                I[] iArr = this.f1144e;
                int i11 = i10 - 1;
                this.f1146g = i11;
                i9 = iArr[i11];
            }
            this.f1148i = i9;
        }
        return i9;
    }

    @Override // b2.d
    @Nullable
    /* renamed from: l */
    public final O dequeueOutputBuffer() throws DecoderException {
        synchronized (this.f1141b) {
            n();
            if (this.f1143d.isEmpty()) {
                return null;
            }
            return this.f1143d.removeFirst();
        }
    }

    @Override // b2.d
    /* renamed from: o */
    public final void b(I i9) throws DecoderException {
        synchronized (this.f1141b) {
            n();
            com.google.android.exoplayer2.util.a.a(i9 == this.f1148i);
            this.f1142c.addLast(i9);
            m();
            this.f1148i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void q(O o10) {
        synchronized (this.f1141b) {
            r(o10);
            m();
        }
    }

    @Override // b2.d
    @CallSuper
    public void release() {
        synchronized (this.f1141b) {
            this.f1151l = true;
            this.f1141b.notify();
        }
        try {
            this.f1140a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t(int i9) {
        com.google.android.exoplayer2.util.a.f(this.f1146g == this.f1144e.length);
        for (I i10 : this.f1144e) {
            i10.q(i9);
        }
    }
}
