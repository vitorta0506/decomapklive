package k3;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.l;
import com.google.android.exoplayer2.util.j0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import com.google.android.exoplayer2.video.MediaCodecVideoDecoderException;
import com.google.android.exoplayer2.video.PlaceholderSurface;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.ugc.UGCTransitionRules;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import k3.w;
/* loaded from: classes2.dex */
public class g extends MediaCodecRenderer {
    private static final int[] T5 = {1920, 1600, 1440, UGCTransitionRules.DEFAULT_IMAGE_HEIGHT, VKApiCodes.CODE_CALL_REQUIRES_AUTH, 854, 640, 540, 480};
    private static boolean U5;
    private static boolean V5;
    private long A5;
    private long B5;
    private long C5;
    private int D5;
    private int E5;
    private int F5;
    private long G5;
    private long H5;
    private long I5;
    private int J5;
    private int K5;
    private int L5;
    private int M5;
    private float N5;
    @Nullable
    private y O5;
    private boolean P5;
    private int Q5;
    @Nullable
    b R5;
    @Nullable
    private i S5;

    /* renamed from: k5  reason: collision with root package name */
    private final Context f53552k5;

    /* renamed from: l5  reason: collision with root package name */
    private final k f53553l5;

    /* renamed from: m5  reason: collision with root package name */
    private final w.a f53554m5;

    /* renamed from: n5  reason: collision with root package name */
    private final long f53555n5;

    /* renamed from: o5  reason: collision with root package name */
    private final int f53556o5;

    /* renamed from: p5  reason: collision with root package name */
    private final boolean f53557p5;

    /* renamed from: q5  reason: collision with root package name */
    private a f53558q5;

    /* renamed from: r5  reason: collision with root package name */
    private boolean f53559r5;

    /* renamed from: s5  reason: collision with root package name */
    private boolean f53560s5;
    @Nullable

    /* renamed from: t5  reason: collision with root package name */
    private Surface f53561t5;
    @Nullable

    /* renamed from: u5  reason: collision with root package name */
    private PlaceholderSurface f53562u5;

    /* renamed from: v5  reason: collision with root package name */
    private boolean f53563v5;

    /* renamed from: w5  reason: collision with root package name */
    private int f53564w5;

    /* renamed from: x5  reason: collision with root package name */
    private boolean f53565x5;

    /* renamed from: y5  reason: collision with root package name */
    private boolean f53566y5;

    /* renamed from: z5  reason: collision with root package name */
    private boolean f53567z5;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f53568a;

        /* renamed from: b  reason: collision with root package name */
        public final int f53569b;

        /* renamed from: c  reason: collision with root package name */
        public final int f53570c;

        public a(int i9, int i10, int i11) {
            this.f53568a = i9;
            this.f53569b = i10;
            this.f53570c = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes2.dex */
    public final class b implements l.c, Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f53571a;

        public b(com.google.android.exoplayer2.mediacodec.l lVar) {
            Handler v10 = l0.v(this);
            this.f53571a = v10;
            lVar.b(this, v10);
        }

        private void b(long j10) {
            g gVar = g.this;
            if (this != gVar.R5) {
                return;
            }
            if (j10 == Long.MAX_VALUE) {
                gVar.N1();
                return;
            }
            try {
                gVar.M1(j10);
            } catch (ExoPlaybackException e10) {
                g.this.c1(e10);
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.l.c
        public void a(com.google.android.exoplayer2.mediacodec.l lVar, long j10, long j11) {
            if (l0.f6985a < 30) {
                this.f53571a.sendMessageAtFrontOfQueue(Message.obtain(this.f53571a, 0, (int) (j10 >> 32), (int) j10));
                return;
            }
            b(j10);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(l0.M0(message.arg1, message.arg2));
            return true;
        }
    }

    public g(Context context, l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, long j10, boolean z10, @Nullable Handler handler, @Nullable w wVar, int i9) {
        this(context, bVar, oVar, j10, z10, handler, wVar, i9, 30.0f);
    }

    protected static int A1(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var) {
        if (k1Var.f6112m != -1) {
            int size = k1Var.f6113n.size();
            int i9 = 0;
            for (int i10 = 0; i10 < size; i10++) {
                i9 += k1Var.f6113n.get(i10).length;
            }
            return k1Var.f6112m + i9;
        }
        return w1(mVar, k1Var);
    }

    private static boolean C1(long j10) {
        return j10 < -30000;
    }

    private static boolean D1(long j10) {
        return j10 < -500000;
    }

    private void F1() {
        if (this.D5 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.f53554m5.n(this.D5, elapsedRealtime - this.C5);
            this.D5 = 0;
            this.C5 = elapsedRealtime;
        }
    }

    private void H1() {
        int i9 = this.J5;
        if (i9 != 0) {
            this.f53554m5.B(this.I5, i9);
            this.I5 = 0L;
            this.J5 = 0;
        }
    }

    private void I1() {
        int i9 = this.K5;
        if (i9 == -1 && this.L5 == -1) {
            return;
        }
        y yVar = this.O5;
        if (yVar != null && yVar.f53631a == i9 && yVar.f53632b == this.L5 && yVar.f53633c == this.M5 && yVar.f53634d == this.N5) {
            return;
        }
        y yVar2 = new y(this.K5, this.L5, this.M5, this.N5);
        this.O5 = yVar2;
        this.f53554m5.D(yVar2);
    }

    private void J1() {
        if (this.f53563v5) {
            this.f53554m5.A(this.f53561t5);
        }
    }

    private void K1() {
        y yVar = this.O5;
        if (yVar != null) {
            this.f53554m5.D(yVar);
        }
    }

    private void L1(long j10, long j11, k1 k1Var) {
        i iVar = this.S5;
        if (iVar != null) {
            iVar.a(j10, j11, k1Var, r0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N1() {
        b1();
    }

    @RequiresApi(17)
    private void O1() {
        Surface surface = this.f53561t5;
        PlaceholderSurface placeholderSurface = this.f53562u5;
        if (surface == placeholderSurface) {
            this.f53561t5 = null;
        }
        placeholderSurface.release();
        this.f53562u5 = null;
    }

    @RequiresApi(29)
    private static void R1(com.google.android.exoplayer2.mediacodec.l lVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        lVar.g(bundle);
    }

    private void S1() {
        this.B5 = this.f53555n5 > 0 ? SystemClock.elapsedRealtime() + this.f53555n5 : -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [k3.g, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    private void T1(@Nullable Object obj) throws ExoPlaybackException {
        PlaceholderSurface placeholderSurface = obj instanceof Surface ? (Surface) obj : null;
        if (placeholderSurface == null) {
            PlaceholderSurface placeholderSurface2 = this.f53562u5;
            if (placeholderSurface2 != null) {
                placeholderSurface = placeholderSurface2;
            } else {
                com.google.android.exoplayer2.mediacodec.m o02 = o0();
                if (o02 != null && Y1(o02)) {
                    placeholderSurface = PlaceholderSurface.c(this.f53552k5, o02.f6301g);
                    this.f53562u5 = placeholderSurface;
                }
            }
        }
        if (this.f53561t5 != placeholderSurface) {
            this.f53561t5 = placeholderSurface;
            this.f53553l5.m(placeholderSurface);
            this.f53563v5 = false;
            int state = getState();
            com.google.android.exoplayer2.mediacodec.l n02 = n0();
            if (n02 != null) {
                if (l0.f6985a >= 23 && placeholderSurface != null && !this.f53559r5) {
                    U1(n02, placeholderSurface);
                } else {
                    U0();
                    F0();
                }
            }
            if (placeholderSurface != null && placeholderSurface != this.f53562u5) {
                K1();
                p1();
                if (state == 2) {
                    S1();
                    return;
                }
                return;
            }
            q1();
            p1();
        } else if (placeholderSurface == null || placeholderSurface == this.f53562u5) {
        } else {
            K1();
            J1();
        }
    }

    private boolean Y1(com.google.android.exoplayer2.mediacodec.m mVar) {
        return l0.f6985a >= 23 && !this.P5 && !r1(mVar.f6295a) && (!mVar.f6301g || PlaceholderSurface.b(this.f53552k5));
    }

    private void p1() {
        com.google.android.exoplayer2.mediacodec.l n02;
        this.f53565x5 = false;
        if (l0.f6985a < 23 || !this.P5 || (n02 = n0()) == null) {
            return;
        }
        this.R5 = new b(n02);
    }

    private void q1() {
        this.O5 = null;
    }

    @RequiresApi(21)
    private static void s1(MediaFormat mediaFormat, int i9) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i9);
    }

    private static boolean t1() {
        return "NVIDIA".equals(l0.f6987c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x07d0, code lost:
        if (r0.equals("PGN528") == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x083e, code lost:
        if (r0.equals("AFTN") == false) goto L46;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean v1() {
        /*
            Method dump skipped, instructions count: 3064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k3.g.v1():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007b, code lost:
        if (r3.equals(com.tencent.thumbplayer.core.common.TPDecoderType.TP_CODEC_MIMETYPE_AV1) == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int w1(com.google.android.exoplayer2.mediacodec.m r10, com.google.android.exoplayer2.k1 r11) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k3.g.w1(com.google.android.exoplayer2.mediacodec.m, com.google.android.exoplayer2.k1):int");
    }

    @Nullable
    private static Point x1(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var) {
        int[] iArr;
        int i9 = k1Var.f6117r;
        int i10 = k1Var.f6116q;
        boolean z10 = i9 > i10;
        int i11 = z10 ? i9 : i10;
        if (z10) {
            i9 = i10;
        }
        float f10 = i9 / i11;
        for (int i12 : T5) {
            int i13 = (int) (i12 * f10);
            if (i12 <= i11 || i13 <= i9) {
                break;
            }
            if (l0.f6985a >= 21) {
                int i14 = z10 ? i13 : i12;
                if (!z10) {
                    i12 = i13;
                }
                Point b10 = mVar.b(i14, i12);
                if (mVar.u(b10.x, b10.y, k1Var.f6118s)) {
                    return b10;
                }
            } else {
                try {
                    int l10 = l0.l(i12, 16) * 16;
                    int l11 = l0.l(i13, 16) * 16;
                    if (l10 * l11 <= MediaCodecUtil.N()) {
                        int i15 = z10 ? l11 : l10;
                        if (!z10) {
                            l10 = l11;
                        }
                        return new Point(i15, l10);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    private static List<com.google.android.exoplayer2.mediacodec.m> z1(com.google.android.exoplayer2.mediacodec.o oVar, k1 k1Var, boolean z10, boolean z11) throws MediaCodecUtil.DecoderQueryException {
        String str = k1Var.f6111l;
        if (str == null) {
            return ImmutableList.of();
        }
        List<com.google.android.exoplayer2.mediacodec.m> a10 = oVar.a(str, z10, z11);
        String m10 = MediaCodecUtil.m(k1Var);
        if (m10 == null) {
            return ImmutableList.copyOf((Collection) a10);
        }
        return ImmutableList.builder().h(a10).h(oVar.a(m10, z10, z11)).j();
    }

    protected MediaFormat B1(k1 k1Var, String str, a aVar, float f10, boolean z10, int i9) {
        Pair<Integer, Integer> q10;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", k1Var.f6116q);
        mediaFormat.setInteger("height", k1Var.f6117r);
        com.google.android.exoplayer2.util.u.e(mediaFormat, k1Var.f6113n);
        com.google.android.exoplayer2.util.u.c(mediaFormat, "frame-rate", k1Var.f6118s);
        com.google.android.exoplayer2.util.u.d(mediaFormat, "rotation-degrees", k1Var.f6119t);
        com.google.android.exoplayer2.util.u.b(mediaFormat, k1Var.f6123x);
        if (TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION.equals(k1Var.f6111l) && (q10 = MediaCodecUtil.q(k1Var)) != null) {
            com.google.android.exoplayer2.util.u.d(mediaFormat, "profile", ((Integer) q10.first).intValue());
        }
        mediaFormat.setInteger("max-width", aVar.f53568a);
        mediaFormat.setInteger("max-height", aVar.f53569b);
        com.google.android.exoplayer2.util.u.d(mediaFormat, "max-input-size", aVar.f53570c);
        if (l0.f6985a >= 23) {
            mediaFormat.setInteger(RemoteMessageConst.Notification.PRIORITY, 0);
            if (f10 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f10);
            }
        }
        if (z10) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i9 != 0) {
            s1(mediaFormat, i9);
        }
        return mediaFormat;
    }

    protected boolean E1(long j10, boolean z10) throws ExoPlaybackException {
        int O = O(j10);
        if (O == 0) {
            return false;
        }
        if (z10) {
            b2.e eVar = this.f6209f5;
            eVar.f1124d += O;
            eVar.f1126f += this.F5;
        } else {
            this.f6209f5.f1130j++;
            a2(O, this.F5);
        }
        k0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void F() {
        q1();
        p1();
        this.f53563v5 = false;
        this.R5 = null;
        try {
            super.F();
        } finally {
            this.f53554m5.m(this.f6209f5);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void G(boolean z10, boolean z11) throws ExoPlaybackException {
        super.G(z10, z11);
        boolean z12 = z().f7299a;
        com.google.android.exoplayer2.util.a.f((z12 && this.Q5 == 0) ? false : true);
        if (this.P5 != z12) {
            this.P5 = z12;
            U0();
        }
        this.f53554m5.o(this.f6209f5);
        this.f53566y5 = z11;
        this.f53567z5 = false;
    }

    void G1() {
        this.f53567z5 = true;
        if (this.f53565x5) {
            return;
        }
        this.f53565x5 = true;
        this.f53554m5.A(this.f53561t5);
        this.f53563v5 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void H(long j10, boolean z10) throws ExoPlaybackException {
        super.H(j10, z10);
        p1();
        this.f53553l5.j();
        this.G5 = -9223372036854775807L;
        this.A5 = -9223372036854775807L;
        this.E5 = 0;
        if (z10) {
            S1();
        } else {
            this.B5 = -9223372036854775807L;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void H0(Exception exc) {
        com.google.android.exoplayer2.util.r.d("MediaCodecVideoRenderer", "Video codec error", exc);
        this.f53554m5.C(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void I() {
        try {
            super.I();
        } finally {
            if (this.f53562u5 != null) {
                O1();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void I0(String str, l.a aVar, long j10, long j11) {
        this.f53554m5.k(str, j10, j11);
        this.f53559r5 = r1(str);
        this.f53560s5 = ((com.google.android.exoplayer2.mediacodec.m) com.google.android.exoplayer2.util.a.e(o0())).n();
        if (l0.f6985a < 23 || !this.P5) {
            return;
        }
        this.R5 = new b((com.google.android.exoplayer2.mediacodec.l) com.google.android.exoplayer2.util.a.e(n0()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void J() {
        super.J();
        this.D5 = 0;
        this.C5 = SystemClock.elapsedRealtime();
        this.H5 = SystemClock.elapsedRealtime() * 1000;
        this.I5 = 0L;
        this.J5 = 0;
        this.f53553l5.k();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void J0(String str) {
        this.f53554m5.l(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f
    public void K() {
        this.B5 = -9223372036854775807L;
        F1();
        H1();
        this.f53553l5.l();
        super.K();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @Nullable
    public b2.g K0(l1 l1Var) throws ExoPlaybackException {
        b2.g K0 = super.K0(l1Var);
        this.f53554m5.p(l1Var.f6166b, K0);
        return K0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void L0(k1 k1Var, @Nullable MediaFormat mediaFormat) {
        int integer;
        int integer2;
        com.google.android.exoplayer2.mediacodec.l n02 = n0();
        if (n02 != null) {
            n02.c(this.f53564w5);
        }
        if (this.P5) {
            this.K5 = k1Var.f6116q;
            this.L5 = k1Var.f6117r;
        } else {
            com.google.android.exoplayer2.util.a.e(mediaFormat);
            boolean z10 = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            if (z10) {
                integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            this.K5 = integer;
            if (z10) {
                integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            this.L5 = integer2;
        }
        float f10 = k1Var.f6120u;
        this.N5 = f10;
        if (l0.f6985a >= 21) {
            int i9 = k1Var.f6119t;
            if (i9 == 90 || i9 == 270) {
                int i10 = this.K5;
                this.K5 = this.L5;
                this.L5 = i10;
                this.N5 = 1.0f / f10;
            }
        } else {
            this.M5 = k1Var.f6119t;
        }
        this.f53553l5.g(k1Var.f6118s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void M0(long j10) {
        super.M0(j10);
        if (this.P5) {
            return;
        }
        this.F5--;
    }

    protected void M1(long j10) throws ExoPlaybackException {
        m1(j10);
        I1();
        this.f6209f5.f1125e++;
        G1();
        M0(j10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void N0() {
        super.N0();
        p1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void O0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        boolean z10 = this.P5;
        if (!z10) {
            this.F5++;
        }
        if (l0.f6985a >= 23 || !z10) {
            return;
        }
        M1(decoderInputBuffer.f5710e);
    }

    protected void P1(com.google.android.exoplayer2.mediacodec.l lVar, int i9, long j10) {
        I1();
        j0.a("releaseOutputBuffer");
        lVar.releaseOutputBuffer(i9, true);
        j0.c();
        this.H5 = SystemClock.elapsedRealtime() * 1000;
        this.f6209f5.f1125e++;
        this.E5 = 0;
        G1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean Q0(long j10, long j11, @Nullable com.google.android.exoplayer2.mediacodec.l lVar, @Nullable ByteBuffer byteBuffer, int i9, int i10, int i11, long j12, boolean z10, boolean z11, k1 k1Var) throws ExoPlaybackException {
        long j13;
        boolean z12;
        com.google.android.exoplayer2.util.a.e(lVar);
        if (this.A5 == -9223372036854775807L) {
            this.A5 = j10;
        }
        if (j12 != this.G5) {
            this.f53553l5.h(j12);
            this.G5 = j12;
        }
        long v02 = v0();
        long j14 = j12 - v02;
        if (z10 && !z11) {
            Z1(lVar, i9, j14);
            return true;
        }
        double w02 = w0();
        boolean z13 = getState() == 2;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j15 = (long) ((j12 - j10) / w02);
        if (z13) {
            j15 -= elapsedRealtime - j11;
        }
        if (this.f53561t5 == this.f53562u5) {
            if (C1(j15)) {
                Z1(lVar, i9, j14);
                b2(j15);
                return true;
            }
            return false;
        }
        long j16 = elapsedRealtime - this.H5;
        if (this.f53567z5 ? this.f53565x5 : !(z13 || this.f53566y5)) {
            j13 = j16;
            z12 = false;
        } else {
            j13 = j16;
            z12 = true;
        }
        if (this.B5 == -9223372036854775807L && j10 >= v02 && (z12 || (z13 && X1(j15, j13)))) {
            long nanoTime = System.nanoTime();
            L1(j14, nanoTime, k1Var);
            if (l0.f6985a >= 21) {
                Q1(lVar, i9, j14, nanoTime);
            } else {
                P1(lVar, i9, j14);
            }
            b2(j15);
            return true;
        }
        if (z13 && j10 != this.A5) {
            long nanoTime2 = System.nanoTime();
            long b10 = this.f53553l5.b((j15 * 1000) + nanoTime2);
            long j17 = (b10 - nanoTime2) / 1000;
            boolean z14 = this.B5 != -9223372036854775807L;
            if (V1(j17, j11, z11) && E1(j10, z14)) {
                return false;
            }
            if (W1(j17, j11, z11)) {
                if (z14) {
                    Z1(lVar, i9, j14);
                } else {
                    u1(lVar, i9, j14);
                }
                b2(j17);
                return true;
            } else if (l0.f6985a >= 21) {
                if (j17 < 50000) {
                    L1(j14, b10, k1Var);
                    Q1(lVar, i9, j14, b10);
                    b2(j17);
                    return true;
                }
            } else if (j17 < 30000) {
                if (j17 > 11000) {
                    try {
                        Thread.sleep((j17 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                L1(j14, b10, k1Var);
                P1(lVar, i9, j14);
                b2(j17);
                return true;
            }
        }
        return false;
    }

    @RequiresApi(21)
    protected void Q1(com.google.android.exoplayer2.mediacodec.l lVar, int i9, long j10, long j11) {
        I1();
        j0.a("releaseOutputBuffer");
        lVar.h(i9, j11);
        j0.c();
        this.H5 = SystemClock.elapsedRealtime() * 1000;
        this.f6209f5.f1125e++;
        this.E5 = 0;
        G1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected b2.g R(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var, k1 k1Var2) {
        b2.g e10 = mVar.e(k1Var, k1Var2);
        int i9 = e10.f1139e;
        int i10 = k1Var2.f6116q;
        a aVar = this.f53558q5;
        if (i10 > aVar.f53568a || k1Var2.f6117r > aVar.f53569b) {
            i9 |= 256;
        }
        if (A1(mVar, k1Var2) > this.f53558q5.f53570c) {
            i9 |= 64;
        }
        int i11 = i9;
        return new b2.g(mVar.f6295a, k1Var, k1Var2, i11 != 0 ? 0 : e10.f1138d, i11);
    }

    @RequiresApi(23)
    protected void U1(com.google.android.exoplayer2.mediacodec.l lVar, Surface surface) {
        lVar.setOutputSurface(surface);
    }

    protected boolean V1(long j10, long j11, boolean z10) {
        return D1(j10) && !z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @CallSuper
    public void W0() {
        super.W0();
        this.F5 = 0;
    }

    protected boolean W1(long j10, long j11, boolean z10) {
        return C1(j10) && !z10;
    }

    protected boolean X1(long j10, long j11) {
        return C1(j10) && j11 > 100000;
    }

    protected void Z1(com.google.android.exoplayer2.mediacodec.l lVar, int i9, long j10) {
        j0.a("skipVideoBuffer");
        lVar.releaseOutputBuffer(i9, false);
        j0.c();
        this.f6209f5.f1126f++;
    }

    protected void a2(int i9, int i10) {
        b2.e eVar = this.f6209f5;
        eVar.f1128h += i9;
        int i11 = i9 + i10;
        eVar.f1127g += i11;
        this.D5 += i11;
        int i12 = this.E5 + i11;
        this.E5 = i12;
        eVar.f1129i = Math.max(i12, eVar.f1129i);
        int i13 = this.f53556o5;
        if (i13 <= 0 || this.D5 < i13) {
            return;
        }
        F1();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException b0(Throwable th2, @Nullable com.google.android.exoplayer2.mediacodec.m mVar) {
        return new MediaCodecVideoDecoderException(th2, mVar, this.f53561t5);
    }

    protected void b2(long j10) {
        this.f6209f5.a(j10);
        this.I5 += j10;
        this.J5++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean f1(com.google.android.exoplayer2.mediacodec.m mVar) {
        return this.f53561t5 != null || Y1(mVar);
    }

    @Override // com.google.android.exoplayer2.u2, com.google.android.exoplayer2.w2
    public String getName() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int i1(com.google.android.exoplayer2.mediacodec.o oVar, k1 k1Var) throws MediaCodecUtil.DecoderQueryException {
        boolean z10;
        int i9 = 0;
        if (!com.google.android.exoplayer2.util.v.o(k1Var.f6111l)) {
            return v2.a(0);
        }
        boolean z11 = k1Var.f6114o != null;
        List<com.google.android.exoplayer2.mediacodec.m> z12 = z1(oVar, k1Var, z11, false);
        if (z11 && z12.isEmpty()) {
            z12 = z1(oVar, k1Var, false, false);
        }
        if (z12.isEmpty()) {
            return v2.a(1);
        }
        if (!MediaCodecRenderer.j1(k1Var)) {
            return v2.a(2);
        }
        com.google.android.exoplayer2.mediacodec.m mVar = z12.get(0);
        boolean m10 = mVar.m(k1Var);
        if (!m10) {
            for (int i10 = 1; i10 < z12.size(); i10++) {
                com.google.android.exoplayer2.mediacodec.m mVar2 = z12.get(i10);
                if (mVar2.m(k1Var)) {
                    mVar = mVar2;
                    z10 = false;
                    m10 = true;
                    break;
                }
            }
        }
        z10 = true;
        int i11 = m10 ? 4 : 3;
        int i12 = mVar.p(k1Var) ? 16 : 8;
        int i13 = mVar.f6302h ? 64 : 0;
        int i14 = z10 ? 128 : 0;
        if (m10) {
            List<com.google.android.exoplayer2.mediacodec.m> z13 = z1(oVar, k1Var, z11, true);
            if (!z13.isEmpty()) {
                com.google.android.exoplayer2.mediacodec.m mVar3 = MediaCodecUtil.u(z13, k1Var).get(0);
                if (mVar3.m(k1Var) && mVar3.p(k1Var)) {
                    i9 = 32;
                }
            }
        }
        return v2.c(i11, i12, i9, i13, i14);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.u2
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && (this.f53565x5 || (((placeholderSurface = this.f53562u5) != null && this.f53561t5 == placeholderSurface) || n0() == null || this.P5))) {
            this.B5 = -9223372036854775807L;
            return true;
        } else if (this.B5 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.B5) {
                return true;
            }
            this.B5 = -9223372036854775807L;
            return false;
        }
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.p2.b
    public void k(int i9, @Nullable Object obj) throws ExoPlaybackException {
        if (i9 == 1) {
            T1(obj);
        } else if (i9 == 7) {
            this.S5 = (i) obj;
        } else if (i9 == 10) {
            int intValue = ((Integer) obj).intValue();
            if (this.Q5 != intValue) {
                this.Q5 = intValue;
                if (this.P5) {
                    U0();
                }
            }
        } else if (i9 != 4) {
            if (i9 != 5) {
                super.k(i9, obj);
            } else {
                this.f53553l5.o(((Integer) obj).intValue());
            }
        } else {
            this.f53564w5 = ((Integer) obj).intValue();
            com.google.android.exoplayer2.mediacodec.l n02 = n0();
            if (n02 != null) {
                n02.c(this.f53564w5);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean p0() {
        return this.P5 && l0.f6985a < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.f, com.google.android.exoplayer2.u2
    public void q(float f10, float f11) throws ExoPlaybackException {
        super.q(f10, f11);
        this.f53553l5.i(f10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float q0(float f10, k1 k1Var, k1[] k1VarArr) {
        float f11 = -1.0f;
        for (k1 k1Var2 : k1VarArr) {
            float f12 = k1Var2.f6118s;
            if (f12 != -1.0f) {
                f11 = Math.max(f11, f12);
            }
        }
        if (f11 == -1.0f) {
            return -1.0f;
        }
        return f11 * f10;
    }

    protected boolean r1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (g.class) {
            if (!U5) {
                V5 = v1();
                U5 = true;
            }
        }
        return V5;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<com.google.android.exoplayer2.mediacodec.m> s0(com.google.android.exoplayer2.mediacodec.o oVar, k1 k1Var, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.u(z1(oVar, k1Var, z10, this.P5), k1Var);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected l.a u0(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var, @Nullable MediaCrypto mediaCrypto, float f10) {
        PlaceholderSurface placeholderSurface = this.f53562u5;
        if (placeholderSurface != null && placeholderSurface.secure != mVar.f6301g) {
            O1();
        }
        String str = mVar.f6297c;
        a y12 = y1(mVar, k1Var, D());
        this.f53558q5 = y12;
        MediaFormat B1 = B1(k1Var, str, y12, f10, this.f53557p5, this.P5 ? this.Q5 : 0);
        if (this.f53561t5 == null) {
            if (Y1(mVar)) {
                if (this.f53562u5 == null) {
                    this.f53562u5 = PlaceholderSurface.c(this.f53552k5, mVar.f6301g);
                }
                this.f53561t5 = this.f53562u5;
            } else {
                throw new IllegalStateException();
            }
        }
        return l.a.b(mVar, B1, k1Var, this.f53561t5, mediaCrypto);
    }

    protected void u1(com.google.android.exoplayer2.mediacodec.l lVar, int i9, long j10) {
        j0.a("dropVideoBuffer");
        lVar.releaseOutputBuffer(i9, false);
        j0.c();
        a2(0, 1);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void x0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (this.f53560s5) {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(decoderInputBuffer.f5711f);
            if (byteBuffer.remaining() >= 7) {
                byte b10 = byteBuffer.get();
                short s10 = byteBuffer.getShort();
                short s11 = byteBuffer.getShort();
                byte b11 = byteBuffer.get();
                byte b12 = byteBuffer.get();
                byteBuffer.position(0);
                if (b10 == -75 && s10 == 60 && s11 == 1 && b11 == 4 && b12 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    R1(n0(), bArr);
                }
            }
        }
    }

    protected a y1(com.google.android.exoplayer2.mediacodec.m mVar, k1 k1Var, k1[] k1VarArr) {
        int w12;
        int i9 = k1Var.f6116q;
        int i10 = k1Var.f6117r;
        int A1 = A1(mVar, k1Var);
        if (k1VarArr.length == 1) {
            if (A1 != -1 && (w12 = w1(mVar, k1Var)) != -1) {
                A1 = Math.min((int) (A1 * 1.5f), w12);
            }
            return new a(i9, i10, A1);
        }
        int length = k1VarArr.length;
        boolean z10 = false;
        for (int i11 = 0; i11 < length; i11++) {
            k1 k1Var2 = k1VarArr[i11];
            if (k1Var.f6123x != null && k1Var2.f6123x == null) {
                k1Var2 = k1Var2.b().J(k1Var.f6123x).E();
            }
            if (mVar.e(k1Var, k1Var2).f1138d != 0) {
                int i12 = k1Var2.f6116q;
                z10 |= i12 == -1 || k1Var2.f6117r == -1;
                i9 = Math.max(i9, i12);
                i10 = Math.max(i10, k1Var2.f6117r);
                A1 = Math.max(A1, A1(mVar, k1Var2));
            }
        }
        if (z10) {
            com.google.android.exoplayer2.util.r.i("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i9 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i10);
            Point x12 = x1(mVar, k1Var);
            if (x12 != null) {
                i9 = Math.max(i9, x12.x);
                i10 = Math.max(i10, x12.y);
                A1 = Math.max(A1, w1(mVar, k1Var.b().j0(i9).Q(i10).E()));
                com.google.android.exoplayer2.util.r.i("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i9 + com.guochao.faceshow.aaspring.modulars.live.common.x.f19108w + i10);
            }
        }
        return new a(i9, i10, A1);
    }

    public g(Context context, l.b bVar, com.google.android.exoplayer2.mediacodec.o oVar, long j10, boolean z10, @Nullable Handler handler, @Nullable w wVar, int i9, float f10) {
        super(2, bVar, oVar, z10, f10);
        this.f53555n5 = j10;
        this.f53556o5 = i9;
        Context applicationContext = context.getApplicationContext();
        this.f53552k5 = applicationContext;
        this.f53553l5 = new k(applicationContext);
        this.f53554m5 = new w.a(handler, wVar);
        this.f53557p5 = t1();
        this.B5 = -9223372036854775807L;
        this.K5 = -1;
        this.L5 = -1;
        this.N5 = -1.0f;
        this.f53564w5 = 1;
        this.Q5 = 0;
        q1();
    }
}
