package com.google.android.exoplayer2.audio;

import a2.s1;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.t;
import com.google.android.exoplayer2.audio.x;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.util.l0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
/* loaded from: classes.dex */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: c0  reason: collision with root package name */
    public static boolean f5374c0 = false;
    private int A;
    private long B;
    private long C;
    private long D;
    private long E;
    private int F;
    private boolean G;
    private boolean H;
    private long I;
    private float J;
    private AudioProcessor[] K;
    private ByteBuffer[] L;
    @Nullable
    private ByteBuffer M;
    private int N;
    @Nullable
    private ByteBuffer O;
    private byte[] P;
    private int Q;
    private int R;
    private boolean S;
    private boolean T;
    private boolean U;
    private boolean V;
    private int W;
    private u X;
    private boolean Y;
    private long Z;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.audio.f f5375a;

    /* renamed from: a0  reason: collision with root package name */
    private boolean f5376a0;

    /* renamed from: b  reason: collision with root package name */
    private final c f5377b;

    /* renamed from: b0  reason: collision with root package name */
    private boolean f5378b0;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f5379c;

    /* renamed from: d  reason: collision with root package name */
    private final w f5380d;

    /* renamed from: e  reason: collision with root package name */
    private final h0 f5381e;

    /* renamed from: f  reason: collision with root package name */
    private final AudioProcessor[] f5382f;

    /* renamed from: g  reason: collision with root package name */
    private final AudioProcessor[] f5383g;

    /* renamed from: h  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.g f5384h;

    /* renamed from: i  reason: collision with root package name */
    private final t f5385i;

    /* renamed from: j  reason: collision with root package name */
    private final ArrayDeque<h> f5386j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f5387k;

    /* renamed from: l  reason: collision with root package name */
    private final int f5388l;

    /* renamed from: m  reason: collision with root package name */
    private k f5389m;

    /* renamed from: n  reason: collision with root package name */
    private final i<AudioSink.InitializationException> f5390n;

    /* renamed from: o  reason: collision with root package name */
    private final i<AudioSink.WriteException> f5391o;

    /* renamed from: p  reason: collision with root package name */
    private final d f5392p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private s1 f5393q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private AudioSink.a f5394r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private f f5395s;

    /* renamed from: t  reason: collision with root package name */
    private f f5396t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private AudioTrack f5397u;

    /* renamed from: v  reason: collision with root package name */
    private com.google.android.exoplayer2.audio.e f5398v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private h f5399w;

    /* renamed from: x  reason: collision with root package name */
    private h f5400x;

    /* renamed from: y  reason: collision with root package name */
    private k2 f5401y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private ByteBuffer f5402z;

    /* loaded from: classes.dex */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        /* synthetic */ InvalidAudioTrackTimestampException(String str, a aVar) {
            this(str);
        }

        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AudioTrack f5403a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, AudioTrack audioTrack) {
            super(str);
            this.f5403a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f5403a.flush();
                this.f5403a.release();
            } finally {
                DefaultAudioSink.this.f5384h.e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static final class b {
        @DoNotInline
        public static void a(AudioTrack audioTrack, s1 s1Var) {
            LogSessionId a10 = s1Var.a();
            if (a10.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            audioTrack.setLogSessionId(a10);
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        long a(long j10);

        AudioProcessor[] b();

        k2 c(k2 k2Var);

        long d();

        boolean e(boolean z10);
    }

    /* loaded from: classes.dex */
    interface d {

        /* renamed from: a  reason: collision with root package name */
        public static final d f5405a = new x.a().g();

        int a(int i9, int i10, int i11, int i12, int i13, double d10);
    }

    /* loaded from: classes.dex */
    public static final class e {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private c f5407b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5408c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5409d;

        /* renamed from: a  reason: collision with root package name */
        private com.google.android.exoplayer2.audio.f f5406a = com.google.android.exoplayer2.audio.f.f5514c;

        /* renamed from: e  reason: collision with root package name */
        private int f5410e = 0;

        /* renamed from: f  reason: collision with root package name */
        d f5411f = d.f5405a;

        public DefaultAudioSink f() {
            if (this.f5407b == null) {
                this.f5407b = new g(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this, null);
        }

        public e g(com.google.android.exoplayer2.audio.f fVar) {
            com.google.android.exoplayer2.util.a.e(fVar);
            this.f5406a = fVar;
            return this;
        }

        public e h(boolean z10) {
            this.f5409d = z10;
            return this;
        }

        public e i(boolean z10) {
            this.f5408c = z10;
            return this;
        }

        public e j(int i9) {
            this.f5410e = i9;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final k1 f5412a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5413b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5414c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5415d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5416e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5417f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5418g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5419h;

        /* renamed from: i  reason: collision with root package name */
        public final AudioProcessor[] f5420i;

        public f(k1 k1Var, int i9, int i10, int i11, int i12, int i13, int i14, int i15, AudioProcessor[] audioProcessorArr) {
            this.f5412a = k1Var;
            this.f5413b = i9;
            this.f5414c = i10;
            this.f5415d = i11;
            this.f5416e = i12;
            this.f5417f = i13;
            this.f5418g = i14;
            this.f5419h = i15;
            this.f5420i = audioProcessorArr;
        }

        private AudioTrack d(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i9) {
            int i10 = l0.f6985a;
            if (i10 >= 29) {
                return f(z10, eVar, i9);
            }
            if (i10 >= 21) {
                return e(z10, eVar, i9);
            }
            return g(eVar, i9);
        }

        @RequiresApi(21)
        private AudioTrack e(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i9) {
            return new AudioTrack(i(eVar, z10), DefaultAudioSink.J(this.f5416e, this.f5417f, this.f5418g), this.f5419h, 1, i9);
        }

        @RequiresApi(29)
        private AudioTrack f(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i9) {
            return new AudioTrack.Builder().setAudioAttributes(i(eVar, z10)).setAudioFormat(DefaultAudioSink.J(this.f5416e, this.f5417f, this.f5418g)).setTransferMode(1).setBufferSizeInBytes(this.f5419h).setSessionId(i9).setOffloadedPlayback(this.f5414c == 1).build();
        }

        private AudioTrack g(com.google.android.exoplayer2.audio.e eVar, int i9) {
            int a02 = l0.a0(eVar.f5492c);
            if (i9 == 0) {
                return new AudioTrack(a02, this.f5416e, this.f5417f, this.f5418g, this.f5419h, 1);
            }
            return new AudioTrack(a02, this.f5416e, this.f5417f, this.f5418g, this.f5419h, 1, i9);
        }

        @RequiresApi(21)
        private static AudioAttributes i(com.google.android.exoplayer2.audio.e eVar, boolean z10) {
            if (z10) {
                return j();
            }
            return eVar.b().f5496a;
        }

        @RequiresApi(21)
        private static AudioAttributes j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public AudioTrack a(boolean z10, com.google.android.exoplayer2.audio.e eVar, int i9) throws AudioSink.InitializationException {
            try {
                AudioTrack d10 = d(z10, eVar, i9);
                int state = d10.getState();
                if (state == 1) {
                    return d10;
                }
                try {
                    d10.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.f5416e, this.f5417f, this.f5419h, this.f5412a, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e10) {
                throw new AudioSink.InitializationException(0, this.f5416e, this.f5417f, this.f5419h, this.f5412a, l(), e10);
            }
        }

        public boolean b(f fVar) {
            return fVar.f5414c == this.f5414c && fVar.f5418g == this.f5418g && fVar.f5416e == this.f5416e && fVar.f5417f == this.f5417f && fVar.f5415d == this.f5415d;
        }

        public f c(int i9) {
            return new f(this.f5412a, this.f5413b, this.f5414c, this.f5415d, this.f5416e, this.f5417f, this.f5418g, i9, this.f5420i);
        }

        public long h(long j10) {
            return (j10 * 1000000) / this.f5416e;
        }

        public long k(long j10) {
            return (j10 * 1000000) / this.f5412a.f6125z;
        }

        public boolean l() {
            return this.f5414c == 1;
        }
    }

    /* loaded from: classes.dex */
    public static class g implements c {

        /* renamed from: a  reason: collision with root package name */
        private final AudioProcessor[] f5421a;

        /* renamed from: b  reason: collision with root package name */
        private final e0 f5422b;

        /* renamed from: c  reason: collision with root package name */
        private final g0 f5423c;

        public g(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new e0(), new g0());
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.c
        public long a(long j10) {
            return this.f5423c.f(j10);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.c
        public AudioProcessor[] b() {
            return this.f5421a;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.c
        public k2 c(k2 k2Var) {
            this.f5423c.h(k2Var.f6154a);
            this.f5423c.g(k2Var.f6155b);
            return k2Var;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.c
        public long d() {
            return this.f5422b.o();
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.c
        public boolean e(boolean z10) {
            this.f5422b.u(z10);
            return z10;
        }

        public g(AudioProcessor[] audioProcessorArr, e0 e0Var, g0 g0Var) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f5421a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f5422b = e0Var;
            this.f5423c = g0Var;
            audioProcessorArr2[audioProcessorArr.length] = e0Var;
            audioProcessorArr2[audioProcessorArr.length + 1] = g0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final k2 f5424a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f5425b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5426c;

        /* renamed from: d  reason: collision with root package name */
        public final long f5427d;

        /* synthetic */ h(k2 k2Var, boolean z10, long j10, long j11, a aVar) {
            this(k2Var, z10, j10, j11);
        }

        private h(k2 k2Var, boolean z10, long j10, long j11) {
            this.f5424a = k2Var;
            this.f5425b = z10;
            this.f5426c = j10;
            this.f5427d = j11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class i<T extends Exception> {

        /* renamed from: a  reason: collision with root package name */
        private final long f5428a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private T f5429b;

        /* renamed from: c  reason: collision with root package name */
        private long f5430c;

        public i(long j10) {
            this.f5428a = j10;
        }

        public void a() {
            this.f5429b = null;
        }

        public void b(T t10) throws Exception {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f5429b == null) {
                this.f5429b = t10;
                this.f5430c = this.f5428a + elapsedRealtime;
            }
            if (elapsedRealtime >= this.f5430c) {
                T t11 = this.f5429b;
                if (t11 != t10) {
                    t11.addSuppressed(t10);
                }
                T t12 = this.f5429b;
                a();
                throw t12;
            }
        }
    }

    /* loaded from: classes.dex */
    private final class j implements t.a {
        private j() {
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void a(int i9, long j10) {
            if (DefaultAudioSink.this.f5394r != null) {
                DefaultAudioSink.this.f5394r.e(i9, j10, SystemClock.elapsedRealtime() - DefaultAudioSink.this.Z);
            }
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void b(long j10) {
            com.google.android.exoplayer2.util.r.i("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j10);
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void c(long j10) {
            if (DefaultAudioSink.this.f5394r != null) {
                DefaultAudioSink.this.f5394r.c(j10);
            }
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void d(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.Q() + ", " + DefaultAudioSink.this.R();
            if (!DefaultAudioSink.f5374c0) {
                com.google.android.exoplayer2.util.r.i("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }

        @Override // com.google.android.exoplayer2.audio.t.a
        public void e(long j10, long j11, long j12, long j13) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j10 + ", " + j11 + ", " + j12 + ", " + j13 + ", " + DefaultAudioSink.this.Q() + ", " + DefaultAudioSink.this.R();
            if (!DefaultAudioSink.f5374c0) {
                com.google.android.exoplayer2.util.r.i("DefaultAudioSink", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }

        /* synthetic */ j(DefaultAudioSink defaultAudioSink, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public final class k {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f5432a = new Handler();

        /* renamed from: b  reason: collision with root package name */
        private final AudioTrack.StreamEventCallback f5433b;

        /* loaded from: classes.dex */
        class a extends AudioTrack.StreamEventCallback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DefaultAudioSink f5435a;

            a(DefaultAudioSink defaultAudioSink) {
                this.f5435a = defaultAudioSink;
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onDataRequest(AudioTrack audioTrack, int i9) {
                com.google.android.exoplayer2.util.a.f(audioTrack == DefaultAudioSink.this.f5397u);
                if (DefaultAudioSink.this.f5394r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.f5394r.g();
            }

            @Override // android.media.AudioTrack.StreamEventCallback
            public void onTearDown(AudioTrack audioTrack) {
                com.google.android.exoplayer2.util.a.f(audioTrack == DefaultAudioSink.this.f5397u);
                if (DefaultAudioSink.this.f5394r == null || !DefaultAudioSink.this.U) {
                    return;
                }
                DefaultAudioSink.this.f5394r.g();
            }
        }

        public k() {
            this.f5433b = new a(DefaultAudioSink.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.f5432a;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new androidx.emoji2.text.a(handler), this.f5433b);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.f5433b);
            this.f5432a.removeCallbacksAndMessages(null);
        }
    }

    /* synthetic */ DefaultAudioSink(e eVar, a aVar) {
        this(eVar);
    }

    private void C(long j10) {
        k2 k2Var;
        if (h0()) {
            k2Var = this.f5377b.c(K());
        } else {
            k2Var = k2.f6152d;
        }
        k2 k2Var2 = k2Var;
        boolean e10 = h0() ? this.f5377b.e(P()) : false;
        this.f5386j.add(new h(k2Var2, e10, Math.max(0L, j10), this.f5396t.h(R()), null));
        g0();
        AudioSink.a aVar = this.f5394r;
        if (aVar != null) {
            aVar.a(e10);
        }
    }

    private long D(long j10) {
        while (!this.f5386j.isEmpty() && j10 >= this.f5386j.getFirst().f5427d) {
            this.f5400x = this.f5386j.remove();
        }
        h hVar = this.f5400x;
        long j11 = j10 - hVar.f5427d;
        if (hVar.f5424a.equals(k2.f6152d)) {
            return this.f5400x.f5426c + j11;
        }
        if (this.f5386j.isEmpty()) {
            return this.f5400x.f5426c + this.f5377b.a(j11);
        }
        h first = this.f5386j.getFirst();
        return first.f5426c - l0.U(first.f5427d - j10, this.f5400x.f5424a.f6154a);
    }

    private long E(long j10) {
        return j10 + this.f5396t.h(this.f5377b.d());
    }

    private AudioTrack F(f fVar) throws AudioSink.InitializationException {
        try {
            return fVar.a(this.Y, this.f5398v, this.W);
        } catch (AudioSink.InitializationException e10) {
            AudioSink.a aVar = this.f5394r;
            if (aVar != null) {
                aVar.b(e10);
            }
            throw e10;
        }
    }

    private AudioTrack G() throws AudioSink.InitializationException {
        try {
            return F((f) com.google.android.exoplayer2.util.a.e(this.f5396t));
        } catch (AudioSink.InitializationException e10) {
            f fVar = this.f5396t;
            if (fVar.f5419h > 1000000) {
                f c10 = fVar.c(1000000);
                try {
                    AudioTrack F = F(c10);
                    this.f5396t = c10;
                    return F;
                } catch (AudioSink.InitializationException e11) {
                    e10.addSuppressed(e11);
                    W();
                    throw e10;
                }
            }
            W();
            throw e10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean H() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r9 = this;
            int r0 = r9.R
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto Lb
            r9.R = r3
        L9:
            r0 = 1
            goto Lc
        Lb:
            r0 = 0
        Lc:
            int r4 = r9.R
            com.google.android.exoplayer2.audio.AudioProcessor[] r5 = r9.K
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.e()
        L1f:
            r9.Y(r7)
            boolean r0 = r4.c()
            if (r0 != 0) goto L29
            return r3
        L29:
            int r0 = r9.R
            int r0 = r0 + r2
            r9.R = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            r9.k0(r0, r7)
            java.nio.ByteBuffer r0 = r9.O
            if (r0 == 0) goto L3b
            return r3
        L3b:
            r9.R = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.H():boolean");
    }

    private void I() {
        int i9 = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.K;
            if (i9 >= audioProcessorArr.length) {
                return;
            }
            AudioProcessor audioProcessor = audioProcessorArr[i9];
            audioProcessor.flush();
            this.L[i9] = audioProcessor.a();
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public static AudioFormat J(int i9, int i10, int i11) {
        return new AudioFormat.Builder().setSampleRate(i9).setChannelMask(i10).setEncoding(i11).build();
    }

    private k2 K() {
        return N().f5424a;
    }

    private static int L(int i9, int i10, int i11) {
        int minBufferSize = AudioTrack.getMinBufferSize(i9, i10, i11);
        com.google.android.exoplayer2.util.a.f(minBufferSize != -2);
        return minBufferSize;
    }

    private static int M(int i9, ByteBuffer byteBuffer) {
        switch (i9) {
            case 5:
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.b.d(byteBuffer);
            case 7:
            case 8:
                return y.e(byteBuffer);
            case 9:
                int m10 = b0.m(l0.F(byteBuffer, byteBuffer.position()));
                if (m10 != -1) {
                    return m10;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i9);
            case 14:
                int a10 = com.google.android.exoplayer2.audio.b.a(byteBuffer);
                if (a10 == -1) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.b.h(byteBuffer, a10) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.google.android.exoplayer2.audio.c.c(byteBuffer);
        }
    }

    private h N() {
        h hVar = this.f5399w;
        if (hVar != null) {
            return hVar;
        }
        if (!this.f5386j.isEmpty()) {
            return this.f5386j.getLast();
        }
        return this.f5400x;
    }

    @RequiresApi(29)
    private int O(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        int i9 = l0.f6985a;
        if (i9 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i9 == 30 && l0.f6988d.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long Q() {
        f fVar = this.f5396t;
        if (fVar.f5414c == 0) {
            return this.B / fVar.f5413b;
        }
        return this.C;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long R() {
        f fVar = this.f5396t;
        if (fVar.f5414c == 0) {
            return this.D / fVar.f5415d;
        }
        return this.E;
    }

    private boolean S() throws AudioSink.InitializationException {
        s1 s1Var;
        if (this.f5384h.d()) {
            AudioTrack G = G();
            this.f5397u = G;
            if (V(G)) {
                Z(this.f5397u);
                if (this.f5388l != 3) {
                    AudioTrack audioTrack = this.f5397u;
                    k1 k1Var = this.f5396t.f5412a;
                    audioTrack.setOffloadDelayPadding(k1Var.B, k1Var.C);
                }
            }
            if (l0.f6985a >= 31 && (s1Var = this.f5393q) != null) {
                b.a(this.f5397u, s1Var);
            }
            this.W = this.f5397u.getAudioSessionId();
            t tVar = this.f5385i;
            AudioTrack audioTrack2 = this.f5397u;
            f fVar = this.f5396t;
            tVar.s(audioTrack2, fVar.f5414c == 2, fVar.f5418g, fVar.f5415d, fVar.f5419h);
            d0();
            int i9 = this.X.f5628a;
            if (i9 != 0) {
                this.f5397u.attachAuxEffect(i9);
                this.f5397u.setAuxEffectSendLevel(this.X.f5629b);
            }
            this.H = true;
            return true;
        }
        return false;
    }

    private static boolean T(int i9) {
        return (l0.f6985a >= 24 && i9 == -6) || i9 == -32;
    }

    private boolean U() {
        return this.f5397u != null;
    }

    private static boolean V(AudioTrack audioTrack) {
        return l0.f6985a >= 29 && audioTrack.isOffloadedPlayback();
    }

    private void W() {
        if (this.f5396t.l()) {
            this.f5376a0 = true;
        }
    }

    private void X() {
        if (this.T) {
            return;
        }
        this.T = true;
        this.f5385i.g(R());
        this.f5397u.stop();
        this.A = 0;
    }

    private void Y(long j10) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.K.length;
        int i9 = length;
        while (i9 >= 0) {
            if (i9 > 0) {
                byteBuffer = this.L[i9 - 1];
            } else {
                byteBuffer = this.M;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f5368a;
                }
            }
            if (i9 == length) {
                k0(byteBuffer, j10);
            } else {
                AudioProcessor audioProcessor = this.K[i9];
                if (i9 > this.R) {
                    audioProcessor.b(byteBuffer);
                }
                ByteBuffer a10 = audioProcessor.a();
                this.L[i9] = a10;
                if (a10.hasRemaining()) {
                    i9++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i9--;
        }
    }

    @RequiresApi(29)
    private void Z(AudioTrack audioTrack) {
        if (this.f5389m == null) {
            this.f5389m = new k();
        }
        this.f5389m.a(audioTrack);
    }

    private void a0() {
        this.B = 0L;
        this.C = 0L;
        this.D = 0L;
        this.E = 0L;
        this.f5378b0 = false;
        this.F = 0;
        this.f5400x = new h(K(), P(), 0L, 0L, null);
        this.I = 0L;
        this.f5399w = null;
        this.f5386j.clear();
        this.M = null;
        this.N = 0;
        this.O = null;
        this.T = false;
        this.S = false;
        this.R = -1;
        this.f5402z = null;
        this.A = 0;
        this.f5381e.m();
        I();
    }

    private void b0(k2 k2Var, boolean z10) {
        h N = N();
        if (k2Var.equals(N.f5424a) && z10 == N.f5425b) {
            return;
        }
        h hVar = new h(k2Var, z10, -9223372036854775807L, -9223372036854775807L, null);
        if (U()) {
            this.f5399w = hVar;
        } else {
            this.f5400x = hVar;
        }
    }

    @RequiresApi(23)
    private void c0(k2 k2Var) {
        if (U()) {
            try {
                this.f5397u.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(k2Var.f6154a).setPitch(k2Var.f6155b).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e10) {
                com.google.android.exoplayer2.util.r.j("DefaultAudioSink", "Failed to set playback params", e10);
            }
            k2Var = new k2(this.f5397u.getPlaybackParams().getSpeed(), this.f5397u.getPlaybackParams().getPitch());
            this.f5385i.t(k2Var.f6154a);
        }
        this.f5401y = k2Var;
    }

    private void d0() {
        if (U()) {
            if (l0.f6985a >= 21) {
                e0(this.f5397u, this.J);
            } else {
                f0(this.f5397u, this.J);
            }
        }
    }

    @RequiresApi(21)
    private static void e0(AudioTrack audioTrack, float f10) {
        audioTrack.setVolume(f10);
    }

    private static void f0(AudioTrack audioTrack, float f10) {
        audioTrack.setStereoVolume(f10, f10);
    }

    private void g0() {
        AudioProcessor[] audioProcessorArr = this.f5396t.f5420i;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.isActive()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.K = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.L = new ByteBuffer[size];
        I();
    }

    private boolean h0() {
        return (this.Y || !"audio/raw".equals(this.f5396t.f5412a.f6111l) || i0(this.f5396t.f5412a.A)) ? false : true;
    }

    private boolean i0(int i9) {
        return this.f5379c && l0.n0(i9);
    }

    private boolean j0(k1 k1Var, com.google.android.exoplayer2.audio.e eVar) {
        int d10;
        int D;
        int O;
        if (l0.f6985a < 29 || this.f5388l == 0 || (d10 = com.google.android.exoplayer2.util.v.d((String) com.google.android.exoplayer2.util.a.e(k1Var.f6111l), k1Var.f6108i)) == 0 || (D = l0.D(k1Var.f6124y)) == 0 || (O = O(J(k1Var.f6125z, D, d10), eVar.b().f5496a)) == 0) {
            return false;
        }
        if (O == 1) {
            return ((k1Var.B != 0 || k1Var.C != 0) && (this.f5388l == 1)) ? false : true;
        } else if (O == 2) {
            return true;
        } else {
            throw new IllegalStateException();
        }
    }

    private void k0(ByteBuffer byteBuffer, long j10) throws AudioSink.WriteException {
        int l02;
        AudioSink.a aVar;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.O;
            if (byteBuffer2 != null) {
                com.google.android.exoplayer2.util.a.a(byteBuffer2 == byteBuffer);
            } else {
                this.O = byteBuffer;
                if (l0.f6985a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.P;
                    if (bArr == null || bArr.length < remaining) {
                        this.P = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.P, 0, remaining);
                    byteBuffer.position(position);
                    this.Q = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (l0.f6985a < 21) {
                int c10 = this.f5385i.c(this.D);
                if (c10 > 0) {
                    l02 = this.f5397u.write(this.P, this.Q, Math.min(remaining2, c10));
                    if (l02 > 0) {
                        this.Q += l02;
                        byteBuffer.position(byteBuffer.position() + l02);
                    }
                } else {
                    l02 = 0;
                }
            } else if (this.Y) {
                com.google.android.exoplayer2.util.a.f(j10 != -9223372036854775807L);
                l02 = m0(this.f5397u, byteBuffer, remaining2, j10);
            } else {
                l02 = l0(this.f5397u, byteBuffer, remaining2);
            }
            this.Z = SystemClock.elapsedRealtime();
            if (l02 < 0) {
                boolean T = T(l02);
                if (T) {
                    W();
                }
                AudioSink.WriteException writeException = new AudioSink.WriteException(l02, this.f5396t.f5412a, T);
                AudioSink.a aVar2 = this.f5394r;
                if (aVar2 != null) {
                    aVar2.b(writeException);
                }
                if (!writeException.isRecoverable) {
                    this.f5391o.b(writeException);
                    return;
                }
                throw writeException;
            }
            this.f5391o.a();
            if (V(this.f5397u)) {
                if (this.E > 0) {
                    this.f5378b0 = false;
                }
                if (this.U && (aVar = this.f5394r) != null && l02 < remaining2 && !this.f5378b0) {
                    aVar.d();
                }
            }
            int i9 = this.f5396t.f5414c;
            if (i9 == 0) {
                this.D += l02;
            }
            if (l02 == remaining2) {
                if (i9 != 0) {
                    com.google.android.exoplayer2.util.a.f(byteBuffer == this.M);
                    this.E += this.F * this.N;
                }
                this.O = null;
            }
        }
    }

    @RequiresApi(21)
    private static int l0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i9) {
        return audioTrack.write(byteBuffer, i9, 1);
    }

    @RequiresApi(21)
    private int m0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i9, long j10) {
        if (l0.f6985a >= 26) {
            return audioTrack.write(byteBuffer, i9, 1, j10 * 1000);
        }
        if (this.f5402z == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.f5402z = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.f5402z.putInt(1431633921);
        }
        if (this.A == 0) {
            this.f5402z.putInt(4, i9);
            this.f5402z.putLong(8, j10 * 1000);
            this.f5402z.position(0);
            this.A = i9;
        }
        int remaining = this.f5402z.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.f5402z, remaining, 1);
            if (write < 0) {
                this.A = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int l02 = l0(audioTrack, byteBuffer, i9);
        if (l02 < 0) {
            this.A = 0;
            return l02;
        }
        this.A -= l02;
        return l02;
    }

    public boolean P() {
        return N().f5425b;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean a(k1 k1Var) {
        return k(k1Var) != 0;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public k2 b() {
        if (this.f5387k) {
            return this.f5401y;
        }
        return K();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean c() {
        return !U() || (this.S && !e());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void d(k2 k2Var) {
        k2 k2Var2 = new k2(l0.o(k2Var.f6154a, 0.1f, 8.0f), l0.o(k2Var.f6155b, 0.1f, 8.0f));
        if (this.f5387k && l0.f6985a >= 23) {
            c0(k2Var2);
        } else {
            b0(k2Var2, P());
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean e() {
        return U() && this.f5385i.h(R());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void f(int i9) {
        if (this.W != i9) {
            this.W = i9;
            this.V = i9 != 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (U()) {
            a0();
            if (this.f5385i.i()) {
                this.f5397u.pause();
            }
            if (V(this.f5397u)) {
                ((k) com.google.android.exoplayer2.util.a.e(this.f5389m)).b(this.f5397u);
            }
            AudioTrack audioTrack = this.f5397u;
            this.f5397u = null;
            if (l0.f6985a < 21 && !this.V) {
                this.W = 0;
            }
            f fVar = this.f5395s;
            if (fVar != null) {
                this.f5396t = fVar;
                this.f5395s = null;
            }
            this.f5385i.q();
            this.f5384h.c();
            new a("ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.f5391o.a();
        this.f5390n.a();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void g() {
        if (this.Y) {
            this.Y = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void h(com.google.android.exoplayer2.audio.e eVar) {
        if (this.f5398v.equals(eVar)) {
            return;
        }
        this.f5398v = eVar;
        if (this.Y) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean i(ByteBuffer byteBuffer, long j10, int i9) throws AudioSink.InitializationException, AudioSink.WriteException {
        ByteBuffer byteBuffer2 = this.M;
        com.google.android.exoplayer2.util.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f5395s != null) {
            if (!H()) {
                return false;
            }
            if (!this.f5395s.b(this.f5396t)) {
                X();
                if (e()) {
                    return false;
                }
                flush();
            } else {
                this.f5396t = this.f5395s;
                this.f5395s = null;
                if (V(this.f5397u) && this.f5388l != 3) {
                    if (this.f5397u.getPlayState() == 3) {
                        this.f5397u.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.f5397u;
                    k1 k1Var = this.f5396t.f5412a;
                    audioTrack.setOffloadDelayPadding(k1Var.B, k1Var.C);
                    this.f5378b0 = true;
                }
            }
            C(j10);
        }
        if (!U()) {
            try {
                if (!S()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e10) {
                if (!e10.isRecoverable) {
                    this.f5390n.b(e10);
                    return false;
                }
                throw e10;
            }
        }
        this.f5390n.a();
        if (this.H) {
            this.I = Math.max(0L, j10);
            this.G = false;
            this.H = false;
            if (this.f5387k && l0.f6985a >= 23) {
                c0(this.f5401y);
            }
            C(j10);
            if (this.U) {
                play();
            }
        }
        if (this.f5385i.k(R())) {
            if (this.M == null) {
                com.google.android.exoplayer2.util.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
                if (!byteBuffer.hasRemaining()) {
                    return true;
                }
                f fVar = this.f5396t;
                if (fVar.f5414c != 0 && this.F == 0) {
                    int M = M(fVar.f5418g, byteBuffer);
                    this.F = M;
                    if (M == 0) {
                        return true;
                    }
                }
                if (this.f5399w != null) {
                    if (!H()) {
                        return false;
                    }
                    C(j10);
                    this.f5399w = null;
                }
                long k10 = this.I + this.f5396t.k(Q() - this.f5381e.l());
                if (!this.G && Math.abs(k10 - j10) > 200000) {
                    this.f5394r.b(new AudioSink.UnexpectedDiscontinuityException(j10, k10));
                    this.G = true;
                }
                if (this.G) {
                    if (!H()) {
                        return false;
                    }
                    long j11 = j10 - k10;
                    this.I += j11;
                    this.G = false;
                    C(j10);
                    AudioSink.a aVar = this.f5394r;
                    if (aVar != null && j11 != 0) {
                        aVar.f();
                    }
                }
                if (this.f5396t.f5414c == 0) {
                    this.B += byteBuffer.remaining();
                } else {
                    this.C += this.F * i9;
                }
                this.M = byteBuffer;
                this.N = i9;
            }
            Y(j10);
            if (!this.M.hasRemaining()) {
                this.M = null;
                this.N = 0;
                return true;
            } else if (this.f5385i.j(R())) {
                com.google.android.exoplayer2.util.r.i("DefaultAudioSink", "Resetting stalled audio track");
                flush();
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void j(AudioSink.a aVar) {
        this.f5394r = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int k(k1 k1Var) {
        if (!"audio/raw".equals(k1Var.f6111l)) {
            return ((this.f5376a0 || !j0(k1Var, this.f5398v)) && !this.f5375a.h(k1Var)) ? 0 : 2;
        } else if (!l0.o0(k1Var.A)) {
            com.google.android.exoplayer2.util.r.i("DefaultAudioSink", "Invalid PCM encoding: " + k1Var.A);
            return 0;
        } else {
            int i9 = k1Var.A;
            return (i9 == 2 || (this.f5379c && i9 == 4)) ? 2 : 1;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void l() {
        if (l0.f6985a < 25) {
            flush();
            return;
        }
        this.f5391o.a();
        this.f5390n.a();
        if (U()) {
            a0();
            if (this.f5385i.i()) {
                this.f5397u.pause();
            }
            this.f5397u.flush();
            this.f5385i.q();
            t tVar = this.f5385i;
            AudioTrack audioTrack = this.f5397u;
            f fVar = this.f5396t;
            tVar.s(audioTrack, fVar.f5414c == 2, fVar.f5418g, fVar.f5415d, fVar.f5419h);
            this.H = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void m(u uVar) {
        if (this.X.equals(uVar)) {
            return;
        }
        int i9 = uVar.f5628a;
        float f10 = uVar.f5629b;
        AudioTrack audioTrack = this.f5397u;
        if (audioTrack != null) {
            if (this.X.f5628a != i9) {
                audioTrack.attachAuxEffect(i9);
            }
            if (i9 != 0) {
                this.f5397u.setAuxEffectSendLevel(f10);
            }
        }
        this.X = uVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void n() throws AudioSink.WriteException {
        if (!this.S && U() && H()) {
            X();
            this.S = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void o(@Nullable s1 s1Var) {
        this.f5393q = s1Var;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long p(boolean z10) {
        if (!U() || this.H) {
            return Long.MIN_VALUE;
        }
        return E(D(Math.min(this.f5385i.d(z10), this.f5396t.h(R()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.U = false;
        if (U() && this.f5385i.p()) {
            this.f5397u.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void play() {
        this.U = true;
        if (U()) {
            this.f5385i.u();
            this.f5397u.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void q() {
        this.G = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void r() {
        com.google.android.exoplayer2.util.a.f(l0.f6985a >= 21);
        com.google.android.exoplayer2.util.a.f(this.V);
        if (this.Y) {
            return;
        }
        this.Y = true;
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        flush();
        for (AudioProcessor audioProcessor : this.f5382f) {
            audioProcessor.reset();
        }
        for (AudioProcessor audioProcessor2 : this.f5383g) {
            audioProcessor2.reset();
        }
        this.U = false;
        this.f5376a0 = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void s(k1 k1Var, int i9, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessor[] audioProcessorArr;
        int i10;
        int intValue;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int a10;
        AudioProcessor[] audioProcessorArr2;
        int[] iArr2;
        if ("audio/raw".equals(k1Var.f6111l)) {
            com.google.android.exoplayer2.util.a.a(l0.o0(k1Var.A));
            i12 = l0.Y(k1Var.A, k1Var.f6124y);
            if (i0(k1Var.A)) {
                audioProcessorArr2 = this.f5383g;
            } else {
                audioProcessorArr2 = this.f5382f;
            }
            this.f5381e.n(k1Var.B, k1Var.C);
            if (l0.f6985a < 21 && k1Var.f6124y == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i16 = 0; i16 < 6; i16++) {
                    iArr2[i16] = i16;
                }
            } else {
                iArr2 = iArr;
            }
            this.f5380d.l(iArr2);
            AudioProcessor.a aVar = new AudioProcessor.a(k1Var.f6125z, k1Var.f6124y, k1Var.A);
            for (AudioProcessor audioProcessor : audioProcessorArr2) {
                try {
                    AudioProcessor.a d10 = audioProcessor.d(aVar);
                    if (audioProcessor.isActive()) {
                        aVar = d10;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e10) {
                    throw new AudioSink.ConfigurationException(e10, k1Var);
                }
            }
            int i17 = aVar.f5372c;
            int i18 = aVar.f5370a;
            int D = l0.D(aVar.f5371b);
            audioProcessorArr = audioProcessorArr2;
            i14 = l0.Y(i17, aVar.f5371b);
            i11 = i17;
            i10 = i18;
            intValue = D;
            i13 = 0;
        } else {
            AudioProcessor[] audioProcessorArr3 = new AudioProcessor[0];
            int i19 = k1Var.f6125z;
            if (j0(k1Var, this.f5398v)) {
                audioProcessorArr = audioProcessorArr3;
                i10 = i19;
                i11 = com.google.android.exoplayer2.util.v.d((String) com.google.android.exoplayer2.util.a.e(k1Var.f6111l), k1Var.f6108i);
                intValue = l0.D(k1Var.f6124y);
                i12 = -1;
                i13 = 1;
            } else {
                Pair<Integer, Integer> f10 = this.f5375a.f(k1Var);
                if (f10 != null) {
                    int intValue2 = ((Integer) f10.first).intValue();
                    audioProcessorArr = audioProcessorArr3;
                    i10 = i19;
                    intValue = ((Integer) f10.second).intValue();
                    i11 = intValue2;
                    i12 = -1;
                    i13 = 2;
                } else {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + k1Var, k1Var);
                }
            }
            i14 = -1;
        }
        if (i9 != 0) {
            a10 = i9;
            i15 = i11;
        } else {
            i15 = i11;
            a10 = this.f5392p.a(L(i10, intValue, i11), i11, i13, i14, i10, this.f5387k ? 8.0d : 1.0d);
        }
        if (i15 == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i13 + ") for: " + k1Var, k1Var);
        } else if (intValue != 0) {
            this.f5376a0 = false;
            f fVar = new f(k1Var, i12, i13, i14, i10, intValue, i15, a10, audioProcessorArr);
            if (U()) {
                this.f5395s = fVar;
            } else {
                this.f5396t = fVar;
            }
        } else {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i13 + ") for: " + k1Var, k1Var);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float f10) {
        if (this.J != f10) {
            this.J = f10;
            d0();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void t(boolean z10) {
        b0(K(), z10);
    }

    private DefaultAudioSink(e eVar) {
        this.f5375a = eVar.f5406a;
        c cVar = eVar.f5407b;
        this.f5377b = cVar;
        int i9 = l0.f6985a;
        this.f5379c = i9 >= 21 && eVar.f5408c;
        this.f5387k = i9 >= 23 && eVar.f5409d;
        this.f5388l = i9 >= 29 ? eVar.f5410e : 0;
        this.f5392p = eVar.f5411f;
        com.google.android.exoplayer2.util.g gVar = new com.google.android.exoplayer2.util.g(com.google.android.exoplayer2.util.d.f6951a);
        this.f5384h = gVar;
        gVar.e();
        this.f5385i = new t(new j(this, null));
        w wVar = new w();
        this.f5380d = wVar;
        h0 h0Var = new h0();
        this.f5381e = h0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new d0(), wVar, h0Var);
        Collections.addAll(arrayList, cVar.b());
        this.f5382f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f5383g = new AudioProcessor[]{new z()};
        this.J = 1.0f;
        this.f5398v = com.google.android.exoplayer2.audio.e.f5488g;
        this.W = 0;
        this.X = new u(0, 0.0f);
        k2 k2Var = k2.f6152d;
        this.f5400x = new h(k2Var, false, 0L, 0L, null);
        this.f5401y = k2Var;
        this.R = -1;
        this.K = new AudioProcessor[0];
        this.L = new ByteBuffer[0];
        this.f5386j = new ArrayDeque<>();
        this.f5390n = new i<>(100L);
        this.f5391o = new i<>(100L);
    }
}
