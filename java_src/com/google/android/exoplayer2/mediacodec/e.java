package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.l0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
@RequiresApi(23)
/* loaded from: classes.dex */
class e {
    @GuardedBy("MESSAGE_PARAMS_INSTANCE_POOL")

    /* renamed from: g  reason: collision with root package name */
    private static final ArrayDeque<b> f6247g = new ArrayDeque<>();

    /* renamed from: h  reason: collision with root package name */
    private static final Object f6248h = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f6249a;

    /* renamed from: b  reason: collision with root package name */
    private final HandlerThread f6250b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f6251c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<RuntimeException> f6252d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f6253e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6254f;

    /* loaded from: classes.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e.this.f(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f6256a;

        /* renamed from: b  reason: collision with root package name */
        public int f6257b;

        /* renamed from: c  reason: collision with root package name */
        public int f6258c;

        /* renamed from: d  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f6259d = new MediaCodec.CryptoInfo();

        /* renamed from: e  reason: collision with root package name */
        public long f6260e;

        /* renamed from: f  reason: collision with root package name */
        public int f6261f;

        b() {
        }

        public void a(int i9, int i10, int i11, long j10, int i12) {
            this.f6256a = i9;
            this.f6257b = i10;
            this.f6258c = i11;
            this.f6260e = j10;
            this.f6261f = i12;
        }
    }

    public e(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new com.google.android.exoplayer2.util.g());
    }

    private void b() throws InterruptedException {
        this.f6253e.c();
        ((Handler) com.google.android.exoplayer2.util.a.e(this.f6251c)).obtainMessage(2).sendToTarget();
        this.f6253e.a();
    }

    private static void c(b2.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f1114f;
        cryptoInfo.numBytesOfClearData = e(cVar.f1112d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(cVar.f1113e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.f1110b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.f1109a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f1111c;
        if (l0.f6985a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f1115g, cVar.f1116h));
        }
    }

    @Nullable
    private static byte[] d(@Nullable byte[] bArr, @Nullable byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 != null && bArr2.length >= bArr.length) {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    @Nullable
    private static int[] e(@Nullable int[] iArr, @Nullable int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 != null && iArr2.length >= iArr.length) {
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            return iArr2;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Message message) {
        int i9 = message.what;
        b bVar = null;
        if (i9 == 0) {
            bVar = (b) message.obj;
            g(bVar.f6256a, bVar.f6257b, bVar.f6258c, bVar.f6260e, bVar.f6261f);
        } else if (i9 == 1) {
            bVar = (b) message.obj;
            h(bVar.f6256a, bVar.f6257b, bVar.f6259d, bVar.f6260e, bVar.f6261f);
        } else if (i9 != 2) {
            this.f6252d.compareAndSet(null, new IllegalStateException(String.valueOf(message.what)));
        } else {
            this.f6253e.e();
        }
        if (bVar != null) {
            o(bVar);
        }
    }

    private void g(int i9, int i10, int i11, long j10, int i12) {
        try {
            this.f6249a.queueInputBuffer(i9, i10, i11, j10, i12);
        } catch (RuntimeException e10) {
            this.f6252d.compareAndSet(null, e10);
        }
    }

    private void h(int i9, int i10, MediaCodec.CryptoInfo cryptoInfo, long j10, int i11) {
        try {
            synchronized (f6248h) {
                this.f6249a.queueSecureInputBuffer(i9, i10, cryptoInfo, j10, i11);
            }
        } catch (RuntimeException e10) {
            this.f6252d.compareAndSet(null, e10);
        }
    }

    private void j() throws InterruptedException {
        ((Handler) com.google.android.exoplayer2.util.a.e(this.f6251c)).removeCallbacksAndMessages(null);
        b();
    }

    private static b k() {
        ArrayDeque<b> arrayDeque = f6247g;
        synchronized (arrayDeque) {
            if (arrayDeque.isEmpty()) {
                return new b();
            }
            return arrayDeque.removeFirst();
        }
    }

    private void l() {
        RuntimeException andSet = this.f6252d.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    private static void o(b bVar) {
        ArrayDeque<b> arrayDeque = f6247g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public void i() {
        if (this.f6254f) {
            try {
                j();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e10);
            }
        }
    }

    public void m(int i9, int i10, int i11, long j10, int i12) {
        l();
        b k10 = k();
        k10.a(i9, i10, i11, j10, i12);
        ((Handler) l0.j(this.f6251c)).obtainMessage(0, k10).sendToTarget();
    }

    public void n(int i9, int i10, b2.c cVar, long j10, int i11) {
        l();
        b k10 = k();
        k10.a(i9, i10, 0, j10, i11);
        c(cVar, k10.f6259d);
        ((Handler) l0.j(this.f6251c)).obtainMessage(1, k10).sendToTarget();
    }

    public void p() {
        if (this.f6254f) {
            i();
            this.f6250b.quit();
        }
        this.f6254f = false;
    }

    public void q() {
        if (this.f6254f) {
            return;
        }
        this.f6250b.start();
        this.f6251c = new a(this.f6250b.getLooper());
        this.f6254f = true;
    }

    public void r() throws InterruptedException {
        b();
    }

    @VisibleForTesting
    e(MediaCodec mediaCodec, HandlerThread handlerThread, com.google.android.exoplayer2.util.g gVar) {
        this.f6249a = mediaCodec;
        this.f6250b = handlerThread;
        this.f6253e = gVar;
        this.f6252d = new AtomicReference<>();
    }
}
