package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.r;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.l;
import com.google.android.exoplayer2.u2;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public class a0 extends MediaCodecRenderer implements com.google.android.exoplayer2.util.t {

    /* renamed from: k5  reason: collision with root package name */
    private final Context f5442k5;

    /* renamed from: l5  reason: collision with root package name */
    private final r.a f5443l5;

    /* renamed from: m5  reason: collision with root package name */
    private final AudioSink f5444m5;

    /* renamed from: n5  reason: collision with root package name */
    private int f5445n5;

    /* renamed from: o5  reason: collision with root package name */
    private boolean f5446o5;
    @Nullable

    /* renamed from: p5  reason: collision with root package name */
    private k1 f5447p5;

    /* renamed from: q5  reason: collision with root package name */
    private long f5448q5;

    /* renamed from: r5  reason: collision with root package name */
    private boolean f5449r5;

    /* renamed from: s5  reason: collision with root package name */
    private boolean f5450s5;

    /* renamed from: t5  reason: collision with root package name */
    private boolean f5451t5;

    /* renamed from: u5  reason: collision with root package name */
    private boolean f5452u5;
    @Nullable

    /* renamed from: v5  reason: collision with root package name */
    private u2.a f5453v5;

    /* loaded from: classes.dex */
    private final class b implements AudioSink.a {
        private b() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void a(boolean z10) {
            a0.this.f5443l5.C(z10);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void b(Exception exc) {
            com.google.android.exoplayer2.util.r.d("MediaCodecAudioRenderer", "Audio sink error", exc);
            a0.this.f5443l5.l(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void c(long j10) {
            a0.this.f5443l5.B(j10);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void d() {
            if (a0.this.f5453v5 != null) {
                a0.this.f5453v5.a();
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void e(int i9, long j10, long j11) {
            a0.this.f5443l5.D(i9, j10, j11);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void f() {
            a0.this.v1();
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.a
        public void g() {
            if (a0.this.f5453v5 != null) {
                a0.this.f5453v5.b();
            }
        }
    }

    public a0(Context context, l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, boolean z10, @Nullable Handler handler, @Nullable r rVar, AudioSink audioSink) {
        super(1, bVar, oVar, z10, 44100.0f);
        this.f5442k5 = context.getApplicationContext();
        this.f5444m5 = audioSink;
        this.f5443l5 = new r.a(handler, rVar);
        audioSink.j(new b());
    }

    private static boolean p1(String str) {
        if (l0.f6985a < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(l0.f6987c)) {
            String str2 = l0.f6986b;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean q1() {
        if (l0.f6985a == 23) {
            String str = l0.f6988d;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int r1(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var) {
        int i9;
        if (!"OMX.google.raw.decoder".equals(mVar.f6295a) || (i9 = l0.f6985a) >= 24 || (i9 == 23 && l0.r0(this.f5442k5))) {
            return k1Var.f6112m;
        }
        return -1;
    }

    private static List<com.google.android.exoplayer2.mediacodec.m> t1(com.google.android.exoplayer2.mediacodec.o oVar, k1 k1Var, boolean z10, AudioSink audioSink) throws MediaCodecUtil.DecoderQueryException {
        com.google.android.exoplayer2.mediacodec.m v10;
        String str = k1Var.f6111l;
        if (str == null) {
            return ImmutableList.of();
        }
        if (audioSink.a(k1Var) && (v10 = MediaCodecUtil.v()) != null) {
            return ImmutableList.of(v10);
        }
        List<com.google.android.exoplayer2.mediacodec.m> a10 = oVar.a(str, z10, false);
        String m10 = MediaCodecUtil.m(k1Var);
        if (m10 == null) {
            return ImmutableList.copyOf((Collection) a10);
        }
        return ImmutableList.builder().h(a10).h(oVar.a(m10, z10, false)).j();
    }

    private void w1() {
        long p10 = this.f5444m5.p(c());
        if (p10 != Long.MIN_VALUE) {
            if (!this.f5450s5) {
                p10 = Math.max(this.f5448q5, p10);
            }
            this.f5448q5 = p10;
            this.f5450s5 = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void F() {
        this.f5451t5 = true;
        try {
            this.f5444m5.flush();
            try {
                super.F();
            } finally {
            }
        } catch (Throwable th2) {
            try {
                super.F();
                throw th2;
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void G(boolean z10, boolean z11) throws ExoPlaybackException {
        super.G(z10, z11);
        this.f5443l5.p(this.f6209f5);
        if (z().f7299a) {
            this.f5444m5.r();
        } else {
            this.f5444m5.g();
        }
        this.f5444m5.o(C());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void H(long j10, boolean z10) throws ExoPlaybackException {
        super.H(j10, z10);
        if (this.f5452u5) {
            this.f5444m5.l();
        } else {
            this.f5444m5.flush();
        }
        this.f5448q5 = j10;
        this.f5449r5 = true;
        this.f5450s5 = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void H0(Exception exc) {
        com.google.android.exoplayer2.util.r.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.f5443l5.k(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void I() {
        try {
            super.I();
        } finally {
            if (this.f5451t5) {
                this.f5451t5 = false;
                this.f5444m5.reset();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void I0(String str, l.a aVar, long j10, long j11) {
        this.f5443l5.m(str, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void J() {
        super.J();
        this.f5444m5.play();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void J0(String str) {
        this.f5443l5.n(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void K() {
        w1();
        this.f5444m5.pause();
        super.K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @Nullable
    public b2.g K0(l1 l1Var) throws ExoPlaybackException {
        b2.g K0 = super.K0(l1Var);
        this.f5443l5.q(l1Var.f6166b, K0);
        return K0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void L0(k1 k1Var, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
        int W;
        int i9;
        k1 k1Var2 = this.f5447p5;
        int[] iArr = null;
        if (k1Var2 != null) {
            k1Var = k1Var2;
        } else if (n0() != null) {
            if ("audio/raw".equals(k1Var.f6111l)) {
                W = k1Var.A;
            } else if (l0.f6985a >= 24 && mediaFormat.containsKey("pcm-encoding")) {
                W = mediaFormat.getInteger("pcm-encoding");
            } else {
                W = mediaFormat.containsKey("v-bits-per-sample") ? l0.W(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            }
            k1 E = new k1.b().e0("audio/raw").Y(W).N(k1Var.B).O(k1Var.C).H(mediaFormat.getInteger("channel-count")).f0(mediaFormat.getInteger("sample-rate")).E();
            if (this.f5446o5 && E.f6124y == 6 && (i9 = k1Var.f6124y) < 6) {
                iArr = new int[i9];
                for (int i10 = 0; i10 < k1Var.f6124y; i10++) {
                    iArr[i10] = i10;
                }
            }
            k1Var = E;
        }
        try {
            this.f5444m5.s(k1Var, 0, iArr);
        } catch (AudioSink.ConfigurationException e10) {
            throw x(e10, e10.format, 5001);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void N0() {
        super.N0();
        this.f5444m5.q();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void O0(DecoderInputBuffer decoderInputBuffer) {
        if (!this.f5449r5 || decoderInputBuffer.j()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.f5710e - this.f5448q5) > 500000) {
            this.f5448q5 = decoderInputBuffer.f5710e;
        }
        this.f5449r5 = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean Q0(long j10, long j11, @Nullable com.google.android.exoplayer2.mediacodec.l lVar, @Nullable ByteBuffer byteBuffer, int i9, int i10, int i11, long j12, boolean z10, boolean z11, k1 k1Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.e(byteBuffer);
        if (this.f5447p5 != null && (i10 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.e(lVar)).releaseOutputBuffer(i9, false);
            return true;
        } else if (z10) {
            if (lVar != null) {
                lVar.releaseOutputBuffer(i9, false);
            }
            this.f6209f5.f1126f += i11;
            this.f5444m5.q();
            return true;
        } else {
            try {
                if (this.f5444m5.i(byteBuffer, j12, i11)) {
                    if (lVar != null) {
                        lVar.releaseOutputBuffer(i9, false);
                    }
                    this.f6209f5.f1125e += i11;
                    return true;
                }
                return false;
            } catch (AudioSink.InitializationException e10) {
                throw y(e10, e10.format, e10.isRecoverable, 5001);
            } catch (AudioSink.WriteException e11) {
                throw y(e11, k1Var, e11.isRecoverable, 5002);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected b2.g R(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var, k1 k1Var2) {
        b2.g e10 = mVar.e(k1Var, k1Var2);
        int i9 = e10.f1139e;
        if (r1(mVar, k1Var2) > this.f5445n5) {
            i9 |= 64;
        }
        int i10 = i9;
        return new b2.g(mVar.f6295a, k1Var, k1Var2, i10 != 0 ? 0 : e10.f1138d, i10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void V0() throws ExoPlaybackException {
        try {
            this.f5444m5.n();
        } catch (AudioSink.WriteException e10) {
            throw y(e10, e10.format, e10.isRecoverable, 5002);
        }
    }

    @Override // com.google.android.exoplayer2.util.t
    public k2 b() {
        return this.f5444m5.b();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.u2
    public boolean c() {
        return super.c() && this.f5444m5.c();
    }

    @Override // com.google.android.exoplayer2.util.t
    public void d(k2 k2Var) {
        this.f5444m5.d(k2Var);
    }

    @Override // com.google.android.exoplayer2.u2, com.google.android.exoplayer2.w2
    public String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean h1(k1 k1Var) {
        return this.f5444m5.a(k1Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int i1(com.google.android.exoplayer2.mediacodec.o oVar, k1 k1Var) throws MediaCodecUtil.DecoderQueryException {
        boolean z10;
        if (!com.google.android.exoplayer2.util.v.l(k1Var.f6111l)) {
            return v2.a(0);
        }
        int i9 = l0.f6985a >= 21 ? 32 : 0;
        boolean z11 = true;
        boolean z12 = k1Var.E != 0;
        boolean j12 = MediaCodecRenderer.j1(k1Var);
        int i10 = 8;
        if (j12 && this.f5444m5.a(k1Var) && (!z12 || MediaCodecUtil.v() != null)) {
            return v2.b(4, 8, i9);
        }
        if ("audio/raw".equals(k1Var.f6111l) && !this.f5444m5.a(k1Var)) {
            return v2.a(1);
        }
        if (!this.f5444m5.a(l0.X(2, k1Var.f6124y, k1Var.f6125z))) {
            return v2.a(1);
        }
        List<com.google.android.exoplayer2.mediacodec.m> t12 = t1(oVar, k1Var, false, this.f5444m5);
        if (t12.isEmpty()) {
            return v2.a(1);
        }
        if (!j12) {
            return v2.a(2);
        }
        com.google.android.exoplayer2.mediacodec.m mVar = t12.get(0);
        boolean m10 = mVar.m(k1Var);
        if (!m10) {
            for (int i11 = 1; i11 < t12.size(); i11++) {
                com.google.android.exoplayer2.mediacodec.m mVar2 = t12.get(i11);
                if (mVar2.m(k1Var)) {
                    mVar = mVar2;
                    z10 = false;
                    break;
                }
            }
        }
        z11 = m10;
        z10 = true;
        int i12 = z11 ? 4 : 3;
        if (z11 && mVar.p(k1Var)) {
            i10 = 16;
        }
        return v2.c(i12, i10, i9, mVar.f6302h ? 64 : 0, z10 ? 128 : 0);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.u2
    public boolean isReady() {
        return this.f5444m5.e() || super.isReady();
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.p2.b
    public void k(int i9, @Nullable Object obj) throws ExoPlaybackException {
        if (i9 == 2) {
            this.f5444m5.setVolume(((Float) obj).floatValue());
        } else if (i9 == 3) {
            this.f5444m5.h((e) obj);
        } else if (i9 != 6) {
            switch (i9) {
                case 9:
                    this.f5444m5.t(((Boolean) obj).booleanValue());
                    return;
                case 10:
                    this.f5444m5.f(((Integer) obj).intValue());
                    return;
                case 11:
                    this.f5453v5 = (u2.a) obj;
                    return;
                default:
                    super.k(i9, obj);
                    return;
            }
        } else {
            this.f5444m5.m((u) obj);
        }
    }

    @Override // com.google.android.exoplayer2.util.t
    public long p() {
        if (getState() == 2) {
            w1();
        }
        return this.f5448q5;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float q0(float f10, k1 k1Var, k1[] k1VarArr) {
        int i9 = -1;
        for (k1 k1Var2 : k1VarArr) {
            int i10 = k1Var2.f6125z;
            if (i10 != -1) {
                i9 = Math.max(i9, i10);
            }
        }
        if (i9 == -1) {
            return -1.0f;
        }
        return f10 * i9;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<com.google.android.exoplayer2.mediacodec.m> s0(com.google.android.exoplayer2.mediacodec.o oVar, k1 k1Var, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.u(t1(oVar, k1Var, z10, this.f5444m5), k1Var);
    }

    protected int s1(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var, k1[] k1VarArr) {
        int r12 = r1(mVar, k1Var);
        if (k1VarArr.length == 1) {
            return r12;
        }
        for (k1 k1Var2 : k1VarArr) {
            if (mVar.e(k1Var, k1Var2).f1138d != 0) {
                r12 = Math.max(r12, r1(mVar, k1Var2));
            }
        }
        return r12;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected l.a u0(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var, @Nullable MediaCrypto mediaCrypto, float f10) {
        this.f5445n5 = s1(mVar, k1Var, D());
        this.f5446o5 = p1(mVar.f6295a);
        MediaFormat u12 = u1(k1Var, mVar.f6297c, this.f5445n5, f10);
        this.f5447p5 = "audio/raw".equals(mVar.f6296b) && !"audio/raw".equals(k1Var.f6111l) ? k1Var : null;
        return l.a.a(mVar, u12, k1Var, mediaCrypto);
    }

    protected MediaFormat u1(k1 k1Var, String str, int i9, float f10) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", k1Var.f6124y);
        mediaFormat.setInteger("sample-rate", k1Var.f6125z);
        com.google.android.exoplayer2.util.u.e(mediaFormat, k1Var.f6113n);
        com.google.android.exoplayer2.util.u.d(mediaFormat, "max-input-size", i9);
        int i10 = l0.f6985a;
        if (i10 >= 23) {
            mediaFormat.setInteger(RemoteMessageConst.Notification.PRIORITY, 0);
            if (f10 != -1.0f && !q1()) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (i10 <= 28 && "audio/ac4".equals(k1Var.f6111l)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i10 >= 24 && this.f5444m5.k(l0.X(4, k1Var.f6124y, k1Var.f6125z)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i10 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        return mediaFormat;
    }

    @CallSuper
    protected void v1() {
        this.f5450s5 = true;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.u2
    @Nullable
    public com.google.android.exoplayer2.util.t w() {
        return this;
    }
}
