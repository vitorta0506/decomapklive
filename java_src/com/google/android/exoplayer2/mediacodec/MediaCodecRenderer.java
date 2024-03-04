package com.google.android.exoplayer2.mediacodec;

import a2.s1;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.CallSuper;
import androidx.annotation.CheckResult;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.d0;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.mediacodec.l;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.j0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.w;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
/* loaded from: classes.dex */
public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.f {

    /* renamed from: j5  reason: collision with root package name */
    private static final byte[] f6201j5 = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private final long[] A;
    @Nullable
    private k1 B;
    private boolean B3;
    @Nullable
    private k1 C;
    private boolean C4;
    @Nullable
    private DrmSession D;
    private boolean D4;
    @Nullable
    private DrmSession E;
    private boolean E4;
    @Nullable
    private MediaCrypto F;
    private boolean F4;
    private boolean G;
    private boolean G4;
    private long H;
    @Nullable
    private i H4;
    private float I;
    private long I4;
    private float J;
    private int J4;
    @Nullable
    private l K;
    private int K4;
    @Nullable
    private k1 L;
    @Nullable
    private ByteBuffer L4;
    @Nullable
    private MediaFormat M;
    private boolean M4;
    private boolean N;
    private boolean N4;
    private float O;
    private boolean O4;
    @Nullable
    private ArrayDeque<m> P;
    private boolean P4;
    @Nullable
    private DecoderInitializationException Q;
    private boolean Q4;
    @Nullable
    private m R;
    private boolean R4;
    private int S4;
    private int T4;
    private int U4;
    private boolean V1;
    private boolean V2;
    private boolean V3;
    private boolean V4;
    private boolean W4;
    private boolean X4;
    private long Y4;
    private long Z4;

    /* renamed from: a1  reason: collision with root package name */
    private int f6202a1;

    /* renamed from: a2  reason: collision with root package name */
    private boolean f6203a2;

    /* renamed from: a5  reason: collision with root package name */
    private boolean f6204a5;

    /* renamed from: b5  reason: collision with root package name */
    private boolean f6205b5;

    /* renamed from: c5  reason: collision with root package name */
    private boolean f6206c5;

    /* renamed from: d5  reason: collision with root package name */
    private boolean f6207d5;
    @Nullable

    /* renamed from: e5  reason: collision with root package name */
    private ExoPlaybackException f6208e5;

    /* renamed from: f5  reason: collision with root package name */
    protected b2.e f6209f5;

    /* renamed from: g5  reason: collision with root package name */
    private long f6210g5;

    /* renamed from: h5  reason: collision with root package name */
    private long f6211h5;

    /* renamed from: i5  reason: collision with root package name */
    private int f6212i5;

    /* renamed from: n  reason: collision with root package name */
    private final l.b f6213n;

    /* renamed from: o  reason: collision with root package name */
    private final o f6214o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f6215p;

    /* renamed from: q  reason: collision with root package name */
    private final float f6216q;

    /* renamed from: r  reason: collision with root package name */
    private final DecoderInputBuffer f6217r;

    /* renamed from: s  reason: collision with root package name */
    private final DecoderInputBuffer f6218s;

    /* renamed from: t  reason: collision with root package name */
    private final DecoderInputBuffer f6219t;

    /* renamed from: u  reason: collision with root package name */
    private final h f6220u;

    /* renamed from: v  reason: collision with root package name */
    private final h0<k1> f6221v;

    /* renamed from: w  reason: collision with root package name */
    private final ArrayList<Long> f6222w;

    /* renamed from: x  reason: collision with root package name */
    private final MediaCodec.BufferInfo f6223x;

    /* renamed from: y  reason: collision with root package name */
    private final long[] f6224y;

    /* renamed from: z  reason: collision with root package name */
    private final long[] f6225z;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static final class a {
        @DoNotInline
        public static void a(l.a aVar, s1 s1Var) {
            LogSessionId a10 = s1Var.a();
            if (a10.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            aVar.f6290b.setString("log-session-id", a10.getStringId());
        }
    }

    public MediaCodecRenderer(int i9, l.b bVar, o oVar, boolean z10, float f10) {
        super(i9);
        this.f6213n = bVar;
        this.f6214o = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.f6215p = z10;
        this.f6216q = f10;
        this.f6217r = DecoderInputBuffer.t();
        this.f6218s = new DecoderInputBuffer(0);
        this.f6219t = new DecoderInputBuffer(2);
        h hVar = new h();
        this.f6220u = hVar;
        this.f6221v = new h0<>();
        this.f6222w = new ArrayList<>();
        this.f6223x = new MediaCodec.BufferInfo();
        this.I = 1.0f;
        this.J = 1.0f;
        this.H = -9223372036854775807L;
        this.f6224y = new long[10];
        this.f6225z = new long[10];
        this.A = new long[10];
        this.f6210g5 = -9223372036854775807L;
        this.f6211h5 = -9223372036854775807L;
        hVar.q(0);
        hVar.f5708c.order(ByteOrder.nativeOrder());
        this.O = -1.0f;
        this.f6202a1 = 0;
        this.S4 = 0;
        this.J4 = -1;
        this.K4 = -1;
        this.I4 = -9223372036854775807L;
        this.Y4 = -9223372036854775807L;
        this.Z4 = -9223372036854775807L;
        this.T4 = 0;
        this.U4 = 0;
    }

    private void A0(m mVar, MediaCrypto mediaCrypto) throws Exception {
        String str = mVar.f6295a;
        int i9 = l0.f6985a;
        float q02 = i9 < 23 ? -1.0f : q0(this.J, this.B, D());
        float f10 = q02 > this.f6216q ? q02 : -1.0f;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        l.a u02 = u0(mVar, this.B, mediaCrypto, f10);
        if (i9 >= 31) {
            a.a(u02, C());
        }
        try {
            j0.a("createCodec:" + str);
            this.K = this.f6213n.a(u02);
            j0.c();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.R = mVar;
            this.O = f10;
            this.L = this.B;
            this.f6202a1 = S(str);
            this.V1 = T(str, this.L);
            this.f6203a2 = Y(str);
            this.V2 = a0(str);
            this.B3 = V(str);
            this.V3 = W(str);
            this.C4 = U(str);
            this.D4 = Z(str, this.L);
            this.G4 = X(mVar) || p0();
            if (this.K.f()) {
                this.R4 = true;
                this.S4 = 1;
                this.E4 = this.f6202a1 != 0;
            }
            if ("c2.android.mp3.decoder".equals(mVar.f6295a)) {
                this.H4 = new i();
            }
            if (getState() == 2) {
                this.I4 = SystemClock.elapsedRealtime() + 1000;
            }
            this.f6209f5.f1121a++;
            I0(str, u02, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Throwable th2) {
            j0.c();
            throw th2;
        }
    }

    private boolean B0(long j10) {
        int size = this.f6222w.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (this.f6222w.get(i9).longValue() == j10) {
                this.f6222w.remove(i9);
                return true;
            }
        }
        return false;
    }

    private static boolean C0(IllegalStateException illegalStateException) {
        if (l0.f6985a < 21 || !D0(illegalStateException)) {
            StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
            return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
        }
        return true;
    }

    @RequiresApi(21)
    private static boolean D0(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }

    @RequiresApi(21)
    private static boolean E0(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0049 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void G0(android.media.MediaCrypto r8, boolean r9) throws com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        /*
            r7 = this;
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.m> r0 = r7.P
            r1 = 0
            if (r0 != 0) goto L39
            java.util.List r0 = r7.m0(r9)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            java.util.ArrayDeque r2 = new java.util.ArrayDeque     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r2.<init>()     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r7.P = r2     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            boolean r3 = r7.f6215p     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            if (r3 == 0) goto L18
            r2.addAll(r0)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            goto L2a
        L18:
            boolean r2 = r0.isEmpty()     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            if (r2 != 0) goto L2a
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.m> r2 = r7.P     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r3 = 0
            java.lang.Object r0 = r0.get(r3)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            com.google.android.exoplayer2.mediacodec.m r0 = (com.google.android.exoplayer2.mediacodec.m) r0     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            r2.add(r0)     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
        L2a:
            r7.Q = r1     // Catch: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException -> L2d
            goto L39
        L2d:
            r8 = move-exception
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r0 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.k1 r1 = r7.B
            r2 = -49998(0xffffffffffff3cb2, float:NaN)
            r0.<init>(r1, r8, r9, r2)
            throw r0
        L39:
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.m> r0 = r7.P
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lb4
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.m> r0 = r7.P
            java.lang.Object r0 = r0.peekFirst()
            com.google.android.exoplayer2.mediacodec.m r0 = (com.google.android.exoplayer2.mediacodec.m) r0
        L49:
            com.google.android.exoplayer2.mediacodec.l r2 = r7.K
            if (r2 != 0) goto Lb1
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.m> r2 = r7.P
            java.lang.Object r2 = r2.peekFirst()
            com.google.android.exoplayer2.mediacodec.m r2 = (com.google.android.exoplayer2.mediacodec.m) r2
            boolean r3 = r7.f1(r2)
            if (r3 != 0) goto L5c
            return
        L5c:
            r7.A0(r2, r8)     // Catch: java.lang.Exception -> L60
            goto L49
        L60:
            r3 = move-exception
            java.lang.String r4 = "MediaCodecRenderer"
            if (r2 != r0) goto L73
            java.lang.String r3 = "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."
            com.google.android.exoplayer2.util.r.i(r4, r3)     // Catch: java.lang.Exception -> L74
            r5 = 50
            java.lang.Thread.sleep(r5)     // Catch: java.lang.Exception -> L74
            r7.A0(r2, r8)     // Catch: java.lang.Exception -> L74
            goto L49
        L73:
            throw r3     // Catch: java.lang.Exception -> L74
        L74:
            r3 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to initialize decoder: "
            r5.append(r6)
            r5.append(r2)
            java.lang.String r5 = r5.toString()
            com.google.android.exoplayer2.util.r.j(r4, r5, r3)
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.m> r4 = r7.P
            r4.removeFirst()
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r4 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.k1 r5 = r7.B
            r4.<init>(r5, r3, r9, r2)
            r7.H0(r4)
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r2 = r7.Q
            if (r2 != 0) goto L9f
            r7.Q = r4
            goto La5
        L9f:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r2 = com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.access$000(r2, r4)
            r7.Q = r2
        La5:
            java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.m> r2 = r7.P
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto Lae
            goto L49
        Lae:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r8 = r7.Q
            throw r8
        Lb1:
            r7.P = r1
            return
        Lb4:
            com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException r8 = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException
            com.google.android.exoplayer2.k1 r0 = r7.B
            r2 = -49999(0xffffffffffff3cb1, float:NaN)
            r8.<init>(r0, r1, r9, r2)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.G0(android.media.MediaCrypto, boolean):void");
    }

    private void P() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.f(!this.f6204a5);
        l1 A = A();
        this.f6219t.f();
        do {
            this.f6219t.f();
            int M = M(A, this.f6219t, 0);
            if (M == -5) {
                K0(A);
                return;
            } else if (M != -4) {
                if (M != -3) {
                    throw new IllegalStateException();
                }
                return;
            } else if (this.f6219t.k()) {
                this.f6204a5 = true;
                return;
            } else {
                if (this.f6206c5) {
                    k1 k1Var = (k1) com.google.android.exoplayer2.util.a.e(this.B);
                    this.C = k1Var;
                    L0(k1Var, null);
                    this.f6206c5 = false;
                }
                this.f6219t.r();
            }
        } while (this.f6220u.v(this.f6219t));
        this.P4 = true;
    }

    private void P0() throws ExoPlaybackException {
        int i9 = this.U4;
        if (i9 == 1) {
            j0();
        } else if (i9 == 2) {
            j0();
            l1();
        } else if (i9 != 3) {
            this.f6205b5 = true;
            V0();
        } else {
            T0();
        }
    }

    private boolean Q(long j10, long j11) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.f(!this.f6205b5);
        if (this.f6220u.A()) {
            h hVar = this.f6220u;
            if (!Q0(j10, j11, null, hVar.f5708c, this.K4, 0, hVar.z(), this.f6220u.x(), this.f6220u.j(), this.f6220u.k(), this.C)) {
                return false;
            }
            M0(this.f6220u.y());
            this.f6220u.f();
        }
        if (this.f6204a5) {
            this.f6205b5 = true;
            return false;
        }
        if (this.P4) {
            com.google.android.exoplayer2.util.a.f(this.f6220u.v(this.f6219t));
            this.P4 = false;
        }
        if (this.Q4) {
            if (this.f6220u.A()) {
                return true;
            }
            c0();
            this.Q4 = false;
            F0();
            if (!this.O4) {
                return false;
            }
        }
        P();
        if (this.f6220u.A()) {
            this.f6220u.r();
        }
        return this.f6220u.A() || this.f6204a5 || this.Q4;
    }

    private void R0() {
        this.X4 = true;
        MediaFormat a10 = this.K.a();
        if (this.f6202a1 != 0 && a10.getInteger("width") == 32 && a10.getInteger("height") == 32) {
            this.F4 = true;
            return;
        }
        if (this.D4) {
            a10.setInteger("channel-count", 1);
        }
        this.M = a10;
        this.N = true;
    }

    private int S(String str) {
        int i9 = l0.f6985a;
        if (i9 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
            String str2 = l0.f6988d;
            if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                return 2;
            }
        }
        if (i9 < 24) {
            if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
                String str3 = l0.f6986b;
                return ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) ? 1 : 0;
            }
            return 0;
        }
        return 0;
    }

    private boolean S0(int i9) throws ExoPlaybackException {
        l1 A = A();
        this.f6217r.f();
        int M = M(A, this.f6217r, i9 | 4);
        if (M == -5) {
            K0(A);
            return true;
        } else if (M == -4 && this.f6217r.k()) {
            this.f6204a5 = true;
            P0();
            return false;
        } else {
            return false;
        }
    }

    private static boolean T(String str, k1 k1Var) {
        return l0.f6985a < 21 && k1Var.f6113n.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    private void T0() throws ExoPlaybackException {
        U0();
        F0();
    }

    private static boolean U(String str) {
        if (l0.f6985a < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(l0.f6987c)) {
            String str2 = l0.f6986b;
            if (str2.startsWith("baffin") || str2.startsWith("grand") || str2.startsWith("fortuna") || str2.startsWith("gprimelte") || str2.startsWith("j2y18lte") || str2.startsWith("ms01")) {
                return true;
            }
        }
        return false;
    }

    private static boolean V(String str) {
        int i9 = l0.f6985a;
        if (i9 > 23 || !"OMX.google.vorbis.decoder".equals(str)) {
            if (i9 <= 19) {
                String str2 = l0.f6986b;
                if (("hb2000".equals(str2) || "stvm8".equals(str2)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))) {
                }
            }
            return false;
        }
        return true;
    }

    private static boolean W(String str) {
        return l0.f6985a == 21 && "OMX.google.aac.decoder".equals(str);
    }

    private static boolean X(m mVar) {
        String str = mVar.f6295a;
        int i9 = l0.f6985a;
        return (i9 <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (i9 <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((i9 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(l0.f6987c) && "AFTS".equals(l0.f6988d) && mVar.f6301g));
    }

    private static boolean Y(String str) {
        int i9 = l0.f6985a;
        return i9 < 18 || (i9 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (i9 == 19 && l0.f6988d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    private void Y0() {
        this.J4 = -1;
        this.f6218s.f5708c = null;
    }

    private static boolean Z(String str, k1 k1Var) {
        return l0.f6985a <= 18 && k1Var.f6124y == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    private void Z0() {
        this.K4 = -1;
        this.L4 = null;
    }

    private static boolean a0(String str) {
        return l0.f6985a == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void a1(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.a(this.D, drmSession);
        this.D = drmSession;
    }

    private void c0() {
        this.Q4 = false;
        this.f6220u.f();
        this.f6219t.f();
        this.P4 = false;
        this.O4 = false;
    }

    private boolean d0() {
        if (this.V4) {
            this.T4 = 1;
            if (!this.f6203a2 && !this.B3) {
                this.U4 = 1;
            } else {
                this.U4 = 3;
                return false;
            }
        }
        return true;
    }

    private void d1(@Nullable DrmSession drmSession) {
        com.google.android.exoplayer2.drm.k.a(this.E, drmSession);
        this.E = drmSession;
    }

    private void e0() throws ExoPlaybackException {
        if (this.V4) {
            this.T4 = 1;
            this.U4 = 3;
            return;
        }
        T0();
    }

    private boolean e1(long j10) {
        return this.H == -9223372036854775807L || SystemClock.elapsedRealtime() - j10 < this.H;
    }

    private boolean f0() throws ExoPlaybackException {
        if (this.V4) {
            this.T4 = 1;
            if (!this.f6203a2 && !this.B3) {
                this.U4 = 2;
            } else {
                this.U4 = 3;
                return false;
            }
        } else {
            l1();
        }
        return true;
    }

    private boolean g0(long j10, long j11) throws ExoPlaybackException {
        boolean z10;
        boolean Q0;
        int j12;
        if (!y0()) {
            if (this.V3 && this.W4) {
                try {
                    j12 = this.K.j(this.f6223x);
                } catch (IllegalStateException unused) {
                    P0();
                    if (this.f6205b5) {
                        U0();
                    }
                    return false;
                }
            } else {
                j12 = this.K.j(this.f6223x);
            }
            if (j12 < 0) {
                if (j12 == -2) {
                    R0();
                    return true;
                }
                if (this.G4 && (this.f6204a5 || this.T4 == 2)) {
                    P0();
                }
                return false;
            } else if (this.F4) {
                this.F4 = false;
                this.K.releaseOutputBuffer(j12, false);
                return true;
            } else {
                MediaCodec.BufferInfo bufferInfo = this.f6223x;
                if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                    P0();
                    return false;
                }
                this.K4 = j12;
                ByteBuffer l10 = this.K.l(j12);
                this.L4 = l10;
                if (l10 != null) {
                    l10.position(this.f6223x.offset);
                    ByteBuffer byteBuffer = this.L4;
                    MediaCodec.BufferInfo bufferInfo2 = this.f6223x;
                    byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                }
                if (this.C4) {
                    MediaCodec.BufferInfo bufferInfo3 = this.f6223x;
                    if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                        long j13 = this.Y4;
                        if (j13 != -9223372036854775807L) {
                            bufferInfo3.presentationTimeUs = j13;
                        }
                    }
                }
                this.M4 = B0(this.f6223x.presentationTimeUs);
                long j14 = this.Z4;
                long j15 = this.f6223x.presentationTimeUs;
                this.N4 = j14 == j15;
                m1(j15);
            }
        }
        if (this.V3 && this.W4) {
            try {
                l lVar = this.K;
                ByteBuffer byteBuffer2 = this.L4;
                int i9 = this.K4;
                MediaCodec.BufferInfo bufferInfo4 = this.f6223x;
                z10 = false;
                try {
                    Q0 = Q0(j10, j11, lVar, byteBuffer2, i9, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.M4, this.N4, this.C);
                } catch (IllegalStateException unused2) {
                    P0();
                    if (this.f6205b5) {
                        U0();
                    }
                    return z10;
                }
            } catch (IllegalStateException unused3) {
                z10 = false;
            }
        } else {
            z10 = false;
            l lVar2 = this.K;
            ByteBuffer byteBuffer3 = this.L4;
            int i10 = this.K4;
            MediaCodec.BufferInfo bufferInfo5 = this.f6223x;
            Q0 = Q0(j10, j11, lVar2, byteBuffer3, i10, bufferInfo5.flags, 1, bufferInfo5.presentationTimeUs, this.M4, this.N4, this.C);
        }
        if (Q0) {
            M0(this.f6223x.presentationTimeUs);
            boolean z11 = (this.f6223x.flags & 4) != 0;
            Z0();
            if (!z11) {
                return true;
            }
            P0();
        }
        return z10;
    }

    private boolean h0(m mVar, k1 k1Var, @Nullable DrmSession drmSession, @Nullable DrmSession drmSession2) throws ExoPlaybackException {
        d0 t02;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || l0.f6985a < 23) {
            return true;
        }
        UUID uuid = com.google.android.exoplayer2.i.f6000e;
        if (uuid.equals(drmSession.c()) || uuid.equals(drmSession2.c()) || (t02 = t0(drmSession2)) == null) {
            return true;
        }
        return !mVar.f6301g && (t02.f5801c ? false : drmSession2.h(k1Var.f6111l));
    }

    private boolean i0() throws ExoPlaybackException {
        int i9;
        if (this.K == null || (i9 = this.T4) == 2 || this.f6204a5) {
            return false;
        }
        if (i9 == 0 && g1()) {
            e0();
        }
        if (this.J4 < 0) {
            int i10 = this.K.i();
            this.J4 = i10;
            if (i10 < 0) {
                return false;
            }
            this.f6218s.f5708c = this.K.d(i10);
            this.f6218s.f();
        }
        if (this.T4 == 1) {
            if (!this.G4) {
                this.W4 = true;
                this.K.e(this.J4, 0, 0, 0L, 4);
                Y0();
            }
            this.T4 = 2;
            return false;
        } else if (this.E4) {
            this.E4 = false;
            ByteBuffer byteBuffer = this.f6218s.f5708c;
            byte[] bArr = f6201j5;
            byteBuffer.put(bArr);
            this.K.e(this.J4, 0, bArr.length, 0L, 0);
            Y0();
            this.V4 = true;
            return true;
        } else {
            if (this.S4 == 1) {
                for (int i11 = 0; i11 < this.L.f6113n.size(); i11++) {
                    this.f6218s.f5708c.put(this.L.f6113n.get(i11));
                }
                this.S4 = 2;
            }
            int position = this.f6218s.f5708c.position();
            l1 A = A();
            try {
                int M = M(A, this.f6218s, 0);
                if (g()) {
                    this.Z4 = this.Y4;
                }
                if (M == -3) {
                    return false;
                }
                if (M == -5) {
                    if (this.S4 == 2) {
                        this.f6218s.f();
                        this.S4 = 1;
                    }
                    K0(A);
                    return true;
                } else if (this.f6218s.k()) {
                    if (this.S4 == 2) {
                        this.f6218s.f();
                        this.S4 = 1;
                    }
                    this.f6204a5 = true;
                    if (!this.V4) {
                        P0();
                        return false;
                    }
                    try {
                        if (!this.G4) {
                            this.W4 = true;
                            this.K.e(this.J4, 0, 0, 0L, 4);
                            Y0();
                        }
                        return false;
                    } catch (MediaCodec.CryptoException e10) {
                        throw x(e10, this.B, l0.P(e10.getErrorCode()));
                    }
                } else if (!this.V4 && !this.f6218s.m()) {
                    this.f6218s.f();
                    if (this.S4 == 2) {
                        this.S4 = 1;
                    }
                    return true;
                } else {
                    boolean s10 = this.f6218s.s();
                    if (s10) {
                        this.f6218s.f5707b.b(position);
                    }
                    if (this.V1 && !s10) {
                        w.b(this.f6218s.f5708c);
                        if (this.f6218s.f5708c.position() == 0) {
                            return true;
                        }
                        this.V1 = false;
                    }
                    DecoderInputBuffer decoderInputBuffer = this.f6218s;
                    long j10 = decoderInputBuffer.f5710e;
                    i iVar = this.H4;
                    if (iVar != null) {
                        j10 = iVar.d(this.B, decoderInputBuffer);
                        this.Y4 = Math.max(this.Y4, this.H4.b(this.B));
                    }
                    long j11 = j10;
                    if (this.f6218s.j()) {
                        this.f6222w.add(Long.valueOf(j11));
                    }
                    if (this.f6206c5) {
                        this.f6221v.a(j11, this.B);
                        this.f6206c5 = false;
                    }
                    this.Y4 = Math.max(this.Y4, j11);
                    this.f6218s.r();
                    if (this.f6218s.i()) {
                        x0(this.f6218s);
                    }
                    O0(this.f6218s);
                    try {
                        if (s10) {
                            this.K.k(this.J4, 0, this.f6218s.f5707b, j11, 0);
                        } else {
                            this.K.e(this.J4, 0, this.f6218s.f5708c.limit(), j11, 0);
                        }
                        Y0();
                        this.V4 = true;
                        this.S4 = 0;
                        this.f6209f5.f1123c++;
                        return true;
                    } catch (MediaCodec.CryptoException e11) {
                        throw x(e11, this.B, l0.P(e11.getErrorCode()));
                    }
                }
            } catch (DecoderInputBuffer.InsufficientCapacityException e12) {
                H0(e12);
                S0(0);
                j0();
                return true;
            }
        }
    }

    private void j0() {
        try {
            this.K.flush();
        } finally {
            W0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean j1(k1 k1Var) {
        int i9 = k1Var.E;
        return i9 == 0 || i9 == 2;
    }

    private boolean k1(k1 k1Var) throws ExoPlaybackException {
        if (l0.f6985a >= 23 && this.K != null && this.U4 != 3 && getState() != 0) {
            float q02 = q0(this.J, k1Var, D());
            float f10 = this.O;
            if (f10 == q02) {
                return true;
            }
            if (q02 == -1.0f) {
                e0();
                return false;
            } else if (f10 == -1.0f && q02 <= this.f6216q) {
                return true;
            } else {
                Bundle bundle = new Bundle();
                bundle.putFloat("operating-rate", q02);
                this.K.g(bundle);
                this.O = q02;
            }
        }
        return true;
    }

    @RequiresApi(23)
    private void l1() throws ExoPlaybackException {
        try {
            this.F.setMediaDrmSession(t0(this.E).f5800b);
            a1(this.E);
            this.T4 = 0;
            this.U4 = 0;
        } catch (MediaCryptoException e10) {
            throw x(e10, this.B, 6006);
        }
    }

    private List<m> m0(boolean z10) throws MediaCodecUtil.DecoderQueryException {
        List<m> s02 = s0(this.f6214o, this.B, z10);
        if (s02.isEmpty() && z10) {
            s02 = s0(this.f6214o, this.B, false);
            if (!s02.isEmpty()) {
                com.google.android.exoplayer2.util.r.i("MediaCodecRenderer", "Drm session requires secure decoder for " + this.B.f6111l + ", but no secure decoder available. Trying to proceed with " + s02 + ".");
            }
        }
        return s02;
    }

    @Nullable
    private d0 t0(DrmSession drmSession) throws ExoPlaybackException {
        b2.b f10 = drmSession.f();
        if (f10 != null && !(f10 instanceof d0)) {
            throw x(new IllegalArgumentException("Expecting FrameworkCryptoConfig but found: " + f10), this.B, 6001);
        }
        return (d0) f10;
    }

    private boolean y0() {
        return this.K4 >= 0;
    }

    private void z0(k1 k1Var) {
        c0();
        String str = k1Var.f6111l;
        if (!"audio/mp4a-latm".equals(str) && !"audio/mpeg".equals(str) && !"audio/opus".equals(str)) {
            this.f6220u.B(1);
        } else {
            this.f6220u.B(32);
        }
        this.O4 = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void F() {
        this.B = null;
        this.f6210g5 = -9223372036854775807L;
        this.f6211h5 = -9223372036854775807L;
        this.f6212i5 = 0;
        l0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void F0() throws ExoPlaybackException {
        k1 k1Var;
        if (this.K != null || this.O4 || (k1Var = this.B) == null) {
            return;
        }
        if (this.E == null && h1(k1Var)) {
            z0(this.B);
            return;
        }
        a1(this.E);
        String str = this.B.f6111l;
        DrmSession drmSession = this.D;
        if (drmSession != null) {
            if (this.F == null) {
                d0 t02 = t0(drmSession);
                if (t02 == null) {
                    if (this.D.e() == null) {
                        return;
                    }
                } else {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(t02.f5799a, t02.f5800b);
                        this.F = mediaCrypto;
                        this.G = !t02.f5801c && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e10) {
                        throw x(e10, this.B, 6006);
                    }
                }
            }
            if (d0.f5798d) {
                int state = this.D.getState();
                if (state == 1) {
                    DrmSession.DrmSessionException drmSessionException = (DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(this.D.e());
                    throw x(drmSessionException, this.B, drmSessionException.errorCode);
                } else if (state != 4) {
                    return;
                }
            }
        }
        try {
            G0(this.F, this.G);
        } catch (DecoderInitializationException e11) {
            throw x(e11, this.B, PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void G(boolean z10, boolean z11) throws ExoPlaybackException {
        this.f6209f5 = new b2.e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void H(long j10, boolean z10) throws ExoPlaybackException {
        this.f6204a5 = false;
        this.f6205b5 = false;
        this.f6207d5 = false;
        if (this.O4) {
            this.f6220u.f();
            this.f6219t.f();
            this.P4 = false;
        } else {
            k0();
        }
        if (this.f6221v.l() > 0) {
            this.f6206c5 = true;
        }
        this.f6221v.c();
        int i9 = this.f6212i5;
        if (i9 != 0) {
            this.f6211h5 = this.f6225z[i9 - 1];
            this.f6210g5 = this.f6224y[i9 - 1];
            this.f6212i5 = 0;
        }
    }

    protected abstract void H0(Exception exc);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void I() {
        try {
            c0();
            U0();
        } finally {
            d1(null);
        }
    }

    protected abstract void I0(String str, l.a aVar, long j10, long j11);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void J() {
    }

    protected abstract void J0(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.f
    public void K() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
        if (f0() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b2, code lost:
        if (f0() == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00cf, code lost:
        r7 = 2;
     */
    @androidx.annotation.Nullable
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b2.g K0(com.google.android.exoplayer2.l1 r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.K0(com.google.android.exoplayer2.l1):b2.g");
    }

    @Override // com.google.android.exoplayer2.f
    protected void L(k1[] k1VarArr, long j10, long j11) throws ExoPlaybackException {
        if (this.f6211h5 == -9223372036854775807L) {
            com.google.android.exoplayer2.util.a.f(this.f6210g5 == -9223372036854775807L);
            this.f6210g5 = j10;
            this.f6211h5 = j11;
            return;
        }
        int i9 = this.f6212i5;
        if (i9 == this.f6225z.length) {
            com.google.android.exoplayer2.util.r.i("MediaCodecRenderer", "Too many stream changes, so dropping offset: " + this.f6225z[this.f6212i5 - 1]);
        } else {
            this.f6212i5 = i9 + 1;
        }
        long[] jArr = this.f6224y;
        int i10 = this.f6212i5;
        jArr[i10 - 1] = j10;
        this.f6225z[i10 - 1] = j11;
        this.A[i10 - 1] = this.Y4;
    }

    protected abstract void L0(k1 k1Var, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException;

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void M0(long j10) {
        while (true) {
            int i9 = this.f6212i5;
            if (i9 == 0 || j10 < this.A[0]) {
                return;
            }
            long[] jArr = this.f6224y;
            this.f6210g5 = jArr[0];
            this.f6211h5 = this.f6225z[0];
            int i10 = i9 - 1;
            this.f6212i5 = i10;
            System.arraycopy(jArr, 1, jArr, 0, i10);
            long[] jArr2 = this.f6225z;
            System.arraycopy(jArr2, 1, jArr2, 0, this.f6212i5);
            long[] jArr3 = this.A;
            System.arraycopy(jArr3, 1, jArr3, 0, this.f6212i5);
            N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void N0() {
    }

    protected abstract void O0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException;

    protected abstract boolean Q0(long j10, long j11, @Nullable l lVar, @Nullable ByteBuffer byteBuffer, int i9, int i10, int i11, long j12, boolean z10, boolean z11, k1 k1Var) throws ExoPlaybackException;

    protected abstract b2.g R(m mVar, k1 k1Var, k1 k1Var2);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.drm.DrmSession, android.media.MediaCrypto] */
    public void U0() {
        try {
            l lVar = this.K;
            if (lVar != null) {
                lVar.release();
                this.f6209f5.f1122b++;
                J0(this.R.f6295a);
            }
            this.K = null;
            try {
                MediaCrypto mediaCrypto = this.F;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
            }
        } catch (Throwable th2) {
            this.K = null;
            try {
                MediaCrypto mediaCrypto2 = this.F;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th2;
            } finally {
            }
        }
    }

    protected void V0() throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void W0() {
        Y0();
        Z0();
        this.I4 = -9223372036854775807L;
        this.W4 = false;
        this.V4 = false;
        this.E4 = false;
        this.F4 = false;
        this.M4 = false;
        this.N4 = false;
        this.f6222w.clear();
        this.Y4 = -9223372036854775807L;
        this.Z4 = -9223372036854775807L;
        i iVar = this.H4;
        if (iVar != null) {
            iVar.c();
        }
        this.T4 = 0;
        this.U4 = 0;
        this.S4 = this.R4 ? 1 : 0;
    }

    @CallSuper
    protected void X0() {
        W0();
        this.f6208e5 = null;
        this.H4 = null;
        this.P = null;
        this.R = null;
        this.L = null;
        this.M = null;
        this.N = false;
        this.X4 = false;
        this.O = -1.0f;
        this.f6202a1 = 0;
        this.V1 = false;
        this.f6203a2 = false;
        this.V2 = false;
        this.B3 = false;
        this.V3 = false;
        this.C4 = false;
        this.D4 = false;
        this.G4 = false;
        this.R4 = false;
        this.S4 = 0;
        this.G = false;
    }

    @Override // com.google.android.exoplayer2.w2
    public final int a(k1 k1Var) throws ExoPlaybackException {
        try {
            return i1(this.f6214o, k1Var);
        } catch (MediaCodecUtil.DecoderQueryException e10) {
            throw x(e10, k1Var, PlaybackException.ERROR_CODE_DECODER_QUERY_FAILED);
        }
    }

    protected MediaCodecDecoderException b0(Throwable th2, @Nullable m mVar) {
        return new MediaCodecDecoderException(th2, mVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b1() {
        this.f6207d5 = true;
    }

    @Override // com.google.android.exoplayer2.u2
    public boolean c() {
        return this.f6205b5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c1(ExoPlaybackException exoPlaybackException) {
        this.f6208e5 = exoPlaybackException;
    }

    protected boolean f1(m mVar) {
        return true;
    }

    protected boolean g1() {
        return false;
    }

    protected boolean h1(k1 k1Var) {
        return false;
    }

    protected abstract int i1(o oVar, k1 k1Var) throws MediaCodecUtil.DecoderQueryException;

    @Override // com.google.android.exoplayer2.u2
    public boolean isReady() {
        return this.B != null && (E() || y0() || (this.I4 != -9223372036854775807L && SystemClock.elapsedRealtime() < this.I4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean k0() throws ExoPlaybackException {
        boolean l02 = l0();
        if (l02) {
            F0();
        }
        return l02;
    }

    protected boolean l0() {
        if (this.K == null) {
            return false;
        }
        int i9 = this.U4;
        if (i9 != 3 && !this.f6203a2 && ((!this.V2 || this.X4) && (!this.B3 || !this.W4))) {
            if (i9 == 2) {
                int i10 = l0.f6985a;
                com.google.android.exoplayer2.util.a.f(i10 >= 23);
                if (i10 >= 23) {
                    try {
                        l1();
                    } catch (ExoPlaybackException e10) {
                        com.google.android.exoplayer2.util.r.j("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e10);
                        U0();
                        return true;
                    }
                }
            }
            j0();
            return false;
        }
        U0();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void m1(long j10) throws ExoPlaybackException {
        boolean z10;
        k1 j11 = this.f6221v.j(j10);
        if (j11 == null && this.N) {
            j11 = this.f6221v.i();
        }
        if (j11 != null) {
            this.C = j11;
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 || (this.N && this.C != null)) {
            L0(this.C, this.M);
            this.N = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final l n0() {
        return this.K;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final m o0() {
        return this.R;
    }

    protected boolean p0() {
        return false;
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.u2
    public void q(float f10, float f11) throws ExoPlaybackException {
        this.I = f10;
        this.J = f11;
        k1(this.L);
    }

    protected abstract float q0(float f10, k1 k1Var, k1[] k1VarArr);

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.w2
    public final int r() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final MediaFormat r0() {
        return this.M;
    }

    @Override // com.google.android.exoplayer2.u2
    public void s(long j10, long j11) throws ExoPlaybackException {
        boolean z10 = false;
        if (this.f6207d5) {
            this.f6207d5 = false;
            P0();
        }
        ExoPlaybackException exoPlaybackException = this.f6208e5;
        if (exoPlaybackException == null) {
            try {
                if (this.f6205b5) {
                    V0();
                    return;
                } else if (this.B != null || S0(2)) {
                    F0();
                    if (this.O4) {
                        j0.a("bypassRender");
                        while (Q(j10, j11)) {
                        }
                        j0.c();
                    } else if (this.K != null) {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        j0.a("drainAndFeed");
                        while (g0(j10, j11) && e1(elapsedRealtime)) {
                        }
                        while (i0() && e1(elapsedRealtime)) {
                        }
                        j0.c();
                    } else {
                        this.f6209f5.f1124d += O(j10);
                        S0(1);
                    }
                    this.f6209f5.c();
                    return;
                } else {
                    return;
                }
            } catch (IllegalStateException e10) {
                if (C0(e10)) {
                    H0(e10);
                    if (l0.f6985a >= 21 && E0(e10)) {
                        z10 = true;
                    }
                    if (z10) {
                        U0();
                    }
                    throw y(b0(e10, o0()), this.B, z10, PlaybackException.ERROR_CODE_DECODING_FAILED);
                }
                throw e10;
            }
        }
        this.f6208e5 = null;
        throw exoPlaybackException;
    }

    protected abstract List<m> s0(o oVar, k1 k1Var, boolean z10) throws MediaCodecUtil.DecoderQueryException;

    protected abstract l.a u0(m mVar, k1 k1Var, @Nullable MediaCrypto mediaCrypto, float f10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final long v0() {
        return this.f6211h5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float w0() {
        return this.I;
    }

    protected void x0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
    }

    /* loaded from: classes.dex */
    public static class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        @Nullable
        public final m codecInfo;
        @Nullable
        public final String diagnosticInfo;
        @Nullable
        public final DecoderInitializationException fallbackDecoderInitializationException;
        public final String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(k1 k1Var, @Nullable Throwable th2, boolean z10, int i9) {
            this("Decoder init failed: [" + i9 + "], " + k1Var, th2, k1Var.f6111l, z10, null, buildCustomDiagnosticInfo(i9), null);
        }

        private static String buildCustomDiagnosticInfo(int i9) {
            String str = i9 < 0 ? "neg_" : "";
            return "com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_" + str + Math.abs(i9);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public DecoderInitializationException copyWithFallbackException(DecoderInitializationException decoderInitializationException) {
            return new DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        @Nullable
        @RequiresApi(21)
        private static String getDiagnosticInfoV21(@Nullable Throwable th2) {
            if (th2 instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th2).getDiagnosticInfo();
            }
            return null;
        }

        public DecoderInitializationException(k1 k1Var, @Nullable Throwable th2, boolean z10, m mVar) {
            this("Decoder init failed: " + mVar.f6295a + ", " + k1Var, th2, k1Var.f6111l, z10, mVar, l0.f6985a >= 21 ? getDiagnosticInfoV21(th2) : null, null);
        }

        private DecoderInitializationException(String str, @Nullable Throwable th2, String str2, boolean z10, @Nullable m mVar, @Nullable String str3, @Nullable DecoderInitializationException decoderInitializationException) {
            super(str, th2);
            this.mimeType = str2;
            this.secureDecoderRequired = z10;
            this.codecInfo = mVar;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }
    }
}
