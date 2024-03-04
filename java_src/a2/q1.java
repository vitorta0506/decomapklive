package a2;

import a2.c;
import a2.r1;
import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.UnsupportedDrmException;
import com.google.android.exoplayer2.i3;
import com.google.android.exoplayer2.k2;
import com.google.android.exoplayer2.l2;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.s1;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidContentTypeException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.x1;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.e9;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import v2.q;
@RequiresApi(31)
/* loaded from: classes.dex */
public final class q1 implements c, r1.a {
    private boolean A;

    /* renamed from: a  reason: collision with root package name */
    private final Context f508a;

    /* renamed from: b  reason: collision with root package name */
    private final r1 f509b;

    /* renamed from: c  reason: collision with root package name */
    private final PlaybackSession f510c;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f516i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private PlaybackMetrics.Builder f517j;

    /* renamed from: k  reason: collision with root package name */
    private int f518k;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private PlaybackException f521n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private b f522o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private b f523p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private b f524q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private com.google.android.exoplayer2.k1 f525r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private com.google.android.exoplayer2.k1 f526s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private com.google.android.exoplayer2.k1 f527t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f528u;

    /* renamed from: v  reason: collision with root package name */
    private int f529v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f530w;

    /* renamed from: x  reason: collision with root package name */
    private int f531x;

    /* renamed from: y  reason: collision with root package name */
    private int f532y;

    /* renamed from: z  reason: collision with root package name */
    private int f533z;

    /* renamed from: e  reason: collision with root package name */
    private final i3.d f512e = new i3.d();

    /* renamed from: f  reason: collision with root package name */
    private final i3.b f513f = new i3.b();

    /* renamed from: h  reason: collision with root package name */
    private final HashMap<String, Long> f515h = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, Long> f514g = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final long f511d = SystemClock.elapsedRealtime();

    /* renamed from: l  reason: collision with root package name */
    private int f519l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f520m = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f534a;

        /* renamed from: b  reason: collision with root package name */
        public final int f535b;

        public a(int i9, int i10) {
            this.f534a = i9;
            this.f535b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.k1 f536a;

        /* renamed from: b  reason: collision with root package name */
        public final int f537b;

        /* renamed from: c  reason: collision with root package name */
        public final String f538c;

        public b(com.google.android.exoplayer2.k1 k1Var, int i9, String str) {
            this.f536a = k1Var;
            this.f537b = i9;
            this.f538c = str;
        }
    }

    private q1(Context context, PlaybackSession playbackSession) {
        this.f508a = context.getApplicationContext();
        this.f510c = playbackSession;
        p1 p1Var = new p1();
        this.f509b = p1Var;
        p1Var.e(this);
    }

    private void A0() {
        PlaybackMetrics.Builder builder = this.f517j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.f533z);
            this.f517j.setVideoFramesDropped(this.f531x);
            this.f517j.setVideoFramesPlayed(this.f532y);
            Long l10 = this.f514g.get(this.f516i);
            this.f517j.setNetworkTransferDurationMillis(l10 == null ? 0L : l10.longValue());
            Long l11 = this.f515h.get(this.f516i);
            this.f517j.setNetworkBytesRead(l11 == null ? 0L : l11.longValue());
            this.f517j.setStreamSource((l11 == null || l11.longValue() <= 0) ? 0 : 1);
            this.f510c.reportPlaybackMetrics(this.f517j.build());
        }
        this.f517j = null;
        this.f516i = null;
        this.f533z = 0;
        this.f531x = 0;
        this.f532y = 0;
        this.f525r = null;
        this.f526s = null;
        this.f527t = null;
        this.A = false;
    }

    private static int B0(int i9) {
        switch (com.google.android.exoplayer2.util.l0.P(i9)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    @Nullable
    private static DrmInitData C0(ImmutableList<n3.a> immutableList) {
        DrmInitData drmInitData;
        e9<n3.a> it = immutableList.iterator();
        while (it.hasNext()) {
            n3.a next = it.next();
            for (int i9 = 0; i9 < next.f6356a; i9++) {
                if (next.g(i9) && (drmInitData = next.c(i9).f6114o) != null) {
                    return drmInitData;
                }
            }
        }
        return null;
    }

    private static int D0(DrmInitData drmInitData) {
        for (int i9 = 0; i9 < drmInitData.schemeDataCount; i9++) {
            UUID uuid = drmInitData.c(i9).uuid;
            if (uuid.equals(com.google.android.exoplayer2.i.f5999d)) {
                return 3;
            }
            if (uuid.equals(com.google.android.exoplayer2.i.f6000e)) {
                return 2;
            }
            if (uuid.equals(com.google.android.exoplayer2.i.f5998c)) {
                return 6;
            }
        }
        return 1;
    }

    private static a E0(PlaybackException playbackException, Context context, boolean z10) {
        int i9;
        boolean z11;
        if (playbackException.errorCode == 1001) {
            return new a(20, 0);
        }
        if (playbackException instanceof ExoPlaybackException) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
            z11 = exoPlaybackException.type == 1;
            i9 = exoPlaybackException.rendererFormatSupport;
        } else {
            i9 = 0;
            z11 = false;
        }
        Throwable th2 = (Throwable) com.google.android.exoplayer2.util.a.e(playbackException.getCause());
        if (!(th2 instanceof IOException)) {
            if (z11 && (i9 == 0 || i9 == 1)) {
                return new a(35, 0);
            }
            if (z11 && i9 == 3) {
                return new a(15, 0);
            }
            if (z11 && i9 == 2) {
                return new a(23, 0);
            }
            if (th2 instanceof MediaCodecRenderer.DecoderInitializationException) {
                return new a(13, com.google.android.exoplayer2.util.l0.Q(((MediaCodecRenderer.DecoderInitializationException) th2).diagnosticInfo));
            }
            if (th2 instanceof MediaCodecDecoderException) {
                return new a(14, com.google.android.exoplayer2.util.l0.Q(((MediaCodecDecoderException) th2).diagnosticInfo));
            }
            if (th2 instanceof OutOfMemoryError) {
                return new a(14, 0);
            }
            if (th2 instanceof AudioSink.InitializationException) {
                return new a(17, ((AudioSink.InitializationException) th2).audioTrackState);
            }
            if (th2 instanceof AudioSink.WriteException) {
                return new a(18, ((AudioSink.WriteException) th2).errorCode);
            }
            if (com.google.android.exoplayer2.util.l0.f6985a >= 16 && (th2 instanceof MediaCodec.CryptoException)) {
                int errorCode = ((MediaCodec.CryptoException) th2).getErrorCode();
                return new a(B0(errorCode), errorCode);
            }
            return new a(22, 0);
        } else if (th2 instanceof HttpDataSource$InvalidResponseCodeException) {
            return new a(5, ((HttpDataSource$InvalidResponseCodeException) th2).responseCode);
        } else {
            if (!(th2 instanceof HttpDataSource$InvalidContentTypeException) && !(th2 instanceof ParserException)) {
                if (!(th2 instanceof HttpDataSource$HttpDataSourceException) && !(th2 instanceof UdpDataSource.UdpDataSourceException)) {
                    if (playbackException.errorCode == 1002) {
                        return new a(21, 0);
                    }
                    if (th2 instanceof DrmSession.DrmSessionException) {
                        Throwable th3 = (Throwable) com.google.android.exoplayer2.util.a.e(th2.getCause());
                        int i10 = com.google.android.exoplayer2.util.l0.f6985a;
                        if (i10 >= 21 && (th3 instanceof MediaDrm.MediaDrmStateException)) {
                            int Q = com.google.android.exoplayer2.util.l0.Q(((MediaDrm.MediaDrmStateException) th3).getDiagnosticInfo());
                            return new a(B0(Q), Q);
                        } else if (i10 >= 23 && (th3 instanceof MediaDrmResetException)) {
                            return new a(27, 0);
                        } else {
                            if (i10 >= 18 && (th3 instanceof NotProvisionedException)) {
                                return new a(24, 0);
                            }
                            if (i10 >= 18 && (th3 instanceof DeniedByServerException)) {
                                return new a(29, 0);
                            }
                            if (th3 instanceof UnsupportedDrmException) {
                                return new a(23, 0);
                            }
                            if (th3 instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
                                return new a(28, 0);
                            }
                            return new a(30, 0);
                        }
                    } else if ((th2 instanceof FileDataSource.FileDataSourceException) && (th2.getCause() instanceof FileNotFoundException)) {
                        Throwable cause = ((Throwable) com.google.android.exoplayer2.util.a.e(th2.getCause())).getCause();
                        if (com.google.android.exoplayer2.util.l0.f6985a >= 21 && (cause instanceof ErrnoException) && ((ErrnoException) cause).errno == OsConstants.EACCES) {
                            return new a(32, 0);
                        }
                        return new a(31, 0);
                    } else {
                        return new a(9, 0);
                    }
                } else if (com.google.android.exoplayer2.util.y.d(context).f() == 1) {
                    return new a(3, 0);
                } else {
                    Throwable cause2 = th2.getCause();
                    if (cause2 instanceof UnknownHostException) {
                        return new a(6, 0);
                    }
                    if (cause2 instanceof SocketTimeoutException) {
                        return new a(7, 0);
                    }
                    if ((th2 instanceof HttpDataSource$HttpDataSourceException) && ((HttpDataSource$HttpDataSourceException) th2).type == 1) {
                        return new a(4, 0);
                    }
                    return new a(8, 0);
                }
            }
            return new a(z10 ? 10 : 11, 0);
        }
    }

    private static Pair<String, String> F0(String str) {
        String[] G0 = com.google.android.exoplayer2.util.l0.G0(str, "-");
        return Pair.create(G0[0], G0.length >= 2 ? G0[1] : null);
    }

    private static int H0(Context context) {
        switch (com.google.android.exoplayer2.util.y.d(context).f()) {
            case 0:
                return 0;
            case 1:
                return 9;
            case 2:
                return 2;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
            case 8:
            default:
                return 1;
            case 7:
                return 3;
            case 9:
                return 8;
            case 10:
                return 7;
        }
    }

    private static int I0(com.google.android.exoplayer2.s1 s1Var) {
        s1.h hVar = s1Var.f6453b;
        if (hVar == null) {
            return 0;
        }
        int k02 = com.google.android.exoplayer2.util.l0.k0(hVar.f6516a, hVar.f6517b);
        if (k02 != 0) {
            if (k02 != 1) {
                return k02 != 2 ? 1 : 4;
            }
            return 5;
        }
        return 3;
    }

    private static int J0(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                return i9 != 3 ? 1 : 4;
            }
            return 3;
        }
        return 2;
    }

    private void K0(c.b bVar) {
        for (int i9 = 0; i9 < bVar.d(); i9++) {
            int b10 = bVar.b(i9);
            c.a c10 = bVar.c(b10);
            if (b10 == 0) {
                this.f509b.d(c10);
            } else if (b10 == 11) {
                this.f509b.f(c10, this.f518k);
            } else {
                this.f509b.b(c10);
            }
        }
    }

    private void L0(long j10) {
        int H0 = H0(this.f508a);
        if (H0 != this.f520m) {
            this.f520m = H0;
            this.f510c.reportNetworkEvent(new NetworkEvent.Builder().setNetworkType(H0).setTimeSinceCreatedMillis(j10 - this.f511d).build());
        }
    }

    private void M0(long j10) {
        PlaybackException playbackException = this.f521n;
        if (playbackException == null) {
            return;
        }
        a E0 = E0(playbackException, this.f508a, this.f529v == 4);
        this.f510c.reportPlaybackErrorEvent(new PlaybackErrorEvent.Builder().setTimeSinceCreatedMillis(j10 - this.f511d).setErrorCode(E0.f534a).setSubErrorCode(E0.f535b).setException(playbackException).build());
        this.A = true;
        this.f521n = null;
    }

    private void N0(l2 l2Var, c.b bVar, long j10) {
        if (l2Var.getPlaybackState() != 2) {
            this.f528u = false;
        }
        if (l2Var.k() == null) {
            this.f530w = false;
        } else if (bVar.a(10)) {
            this.f530w = true;
        }
        int V0 = V0(l2Var);
        if (this.f519l != V0) {
            this.f519l = V0;
            this.A = true;
            this.f510c.reportPlaybackStateEvent(new PlaybackStateEvent.Builder().setState(this.f519l).setTimeSinceCreatedMillis(j10 - this.f511d).build());
        }
    }

    private void O0(l2 l2Var, c.b bVar, long j10) {
        if (bVar.a(2)) {
            n3 m10 = l2Var.m();
            boolean d10 = m10.d(2);
            boolean d11 = m10.d(1);
            boolean d12 = m10.d(3);
            if (d10 || d11 || d12) {
                if (!d10) {
                    T0(j10, null, 0);
                }
                if (!d11) {
                    P0(j10, null, 0);
                }
                if (!d12) {
                    R0(j10, null, 0);
                }
            }
        }
        if (y0(this.f522o)) {
            b bVar2 = this.f522o;
            com.google.android.exoplayer2.k1 k1Var = bVar2.f536a;
            if (k1Var.f6117r != -1) {
                T0(j10, k1Var, bVar2.f537b);
                this.f522o = null;
            }
        }
        if (y0(this.f523p)) {
            b bVar3 = this.f523p;
            P0(j10, bVar3.f536a, bVar3.f537b);
            this.f523p = null;
        }
        if (y0(this.f524q)) {
            b bVar4 = this.f524q;
            R0(j10, bVar4.f536a, bVar4.f537b);
            this.f524q = null;
        }
    }

    private void P0(long j10, @Nullable com.google.android.exoplayer2.k1 k1Var, int i9) {
        if (com.google.android.exoplayer2.util.l0.c(this.f526s, k1Var)) {
            return;
        }
        int i10 = (this.f526s == null && i9 == 0) ? 1 : i9;
        this.f526s = k1Var;
        U0(0, j10, k1Var, i10);
    }

    private void Q0(l2 l2Var, c.b bVar) {
        DrmInitData C0;
        if (bVar.a(0)) {
            c.a c10 = bVar.c(0);
            if (this.f517j != null) {
                S0(c10.f375b, c10.f377d);
            }
        }
        if (bVar.a(2) && this.f517j != null && (C0 = C0(l2Var.m().b())) != null) {
            ((PlaybackMetrics.Builder) com.google.android.exoplayer2.util.l0.j(this.f517j)).setDrmType(D0(C0));
        }
        if (bVar.a(1011)) {
            this.f533z++;
        }
    }

    private void R0(long j10, @Nullable com.google.android.exoplayer2.k1 k1Var, int i9) {
        if (com.google.android.exoplayer2.util.l0.c(this.f527t, k1Var)) {
            return;
        }
        int i10 = (this.f527t == null && i9 == 0) ? 1 : i9;
        this.f527t = k1Var;
        U0(2, j10, k1Var, i10);
    }

    private void S0(i3 i3Var, @Nullable q.b bVar) {
        int f10;
        PlaybackMetrics.Builder builder = this.f517j;
        if (bVar == null || (f10 = i3Var.f(bVar.f58906a)) == -1) {
            return;
        }
        i3Var.j(f10, this.f513f);
        i3Var.r(this.f513f.f6028c, this.f512e);
        builder.setStreamType(I0(this.f512e.f6043c));
        i3.d dVar = this.f512e;
        if (dVar.f6054n != -9223372036854775807L && !dVar.f6052l && !dVar.f6049i && !dVar.g()) {
            builder.setMediaDurationMillis(this.f512e.f());
        }
        builder.setPlaybackType(this.f512e.g() ? 2 : 1);
        this.A = true;
    }

    private void T0(long j10, @Nullable com.google.android.exoplayer2.k1 k1Var, int i9) {
        if (com.google.android.exoplayer2.util.l0.c(this.f525r, k1Var)) {
            return;
        }
        int i10 = (this.f525r == null && i9 == 0) ? 1 : i9;
        this.f525r = k1Var;
        U0(1, j10, k1Var, i10);
    }

    private void U0(int i9, long j10, @Nullable com.google.android.exoplayer2.k1 k1Var, int i10) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i9).setTimeSinceCreatedMillis(j10 - this.f511d);
        if (k1Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(J0(i10));
            String str = k1Var.f6110k;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = k1Var.f6111l;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = k1Var.f6108i;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i11 = k1Var.f6107h;
            if (i11 != -1) {
                timeSinceCreatedMillis.setBitrate(i11);
            }
            int i12 = k1Var.f6116q;
            if (i12 != -1) {
                timeSinceCreatedMillis.setWidth(i12);
            }
            int i13 = k1Var.f6117r;
            if (i13 != -1) {
                timeSinceCreatedMillis.setHeight(i13);
            }
            int i14 = k1Var.f6124y;
            if (i14 != -1) {
                timeSinceCreatedMillis.setChannelCount(i14);
            }
            int i15 = k1Var.f6125z;
            if (i15 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i15);
            }
            String str4 = k1Var.f6102c;
            if (str4 != null) {
                Pair<String, String> F0 = F0(str4);
                timeSinceCreatedMillis.setLanguage((String) F0.first);
                Object obj = F0.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f10 = k1Var.f6118s;
            if (f10 != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f10);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        this.f510c.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }

    private int V0(l2 l2Var) {
        int playbackState = l2Var.getPlaybackState();
        if (this.f528u) {
            return 5;
        }
        if (this.f530w) {
            return 13;
        }
        if (playbackState == 4) {
            return 11;
        }
        if (playbackState == 2) {
            int i9 = this.f519l;
            if (i9 == 0 || i9 == 2) {
                return 2;
            }
            if (l2Var.A()) {
                return l2Var.s() != 0 ? 10 : 6;
            }
            return 7;
        } else if (playbackState == 3) {
            if (l2Var.A()) {
                return l2Var.s() != 0 ? 9 : 3;
            }
            return 4;
        } else if (playbackState != 1 || this.f519l == 0) {
            return this.f519l;
        } else {
            return 12;
        }
    }

    private boolean y0(@Nullable b bVar) {
        return bVar != null && bVar.f538c.equals(this.f509b.a());
    }

    @Nullable
    public static q1 z0(Context context) {
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        return new q1(context, mediaMetricsManager.createPlaybackSession());
    }

    @Override // a2.c
    public /* synthetic */ void A(c.a aVar, com.google.android.exoplayer2.k1 k1Var) {
        a2.b.j0(this, aVar, k1Var);
    }

    @Override // a2.c
    public /* synthetic */ void B(c.a aVar, Exception exc) {
        a2.b.d0(this, aVar, exc);
    }

    @Override // a2.c
    public /* synthetic */ void C(c.a aVar, int i9) {
        a2.b.N(this, aVar, i9);
    }

    @Override // a2.c
    public /* synthetic */ void D(c.a aVar, Exception exc) {
        a2.b.j(this, aVar, exc);
    }

    @Override // a2.c
    public /* synthetic */ void E(c.a aVar, k2 k2Var) {
        a2.b.M(this, aVar, k2Var);
    }

    @Override // a2.c
    public /* synthetic */ void F(c.a aVar, h3.z zVar) {
        a2.b.b0(this, aVar, zVar);
    }

    @Override // a2.c
    public /* synthetic */ void G(c.a aVar, PlaybackException playbackException) {
        a2.b.P(this, aVar, playbackException);
    }

    public LogSessionId G0() {
        return this.f510c.getSessionId();
    }

    @Override // a2.c
    public void H(c.a aVar, v2.j jVar, v2.m mVar, IOException iOException, boolean z10) {
        this.f529v = mVar.f58895a;
    }

    @Override // a2.c
    public /* synthetic */ void I(c.a aVar, int i9) {
        a2.b.S(this, aVar, i9);
    }

    @Override // a2.c
    public /* synthetic */ void J(c.a aVar, b2.e eVar) {
        a2.b.h0(this, aVar, eVar);
    }

    @Override // a2.r1.a
    public void K(c.a aVar, String str) {
        q.b bVar = aVar.f377d;
        if (bVar == null || !bVar.b()) {
            A0();
            this.f516i = str;
            this.f517j = new PlaybackMetrics.Builder().setPlayerName("ExoPlayerLib").setPlayerVersion("2.18.1");
            S0(aVar.f375b, aVar.f377d);
        }
    }

    @Override // a2.c
    public /* synthetic */ void L(c.a aVar, boolean z10) {
        a2.b.C(this, aVar, z10);
    }

    @Override // a2.c
    public /* synthetic */ void M(c.a aVar, v2.j jVar, v2.m mVar) {
        a2.b.G(this, aVar, jVar, mVar);
    }

    @Override // a2.c
    public /* synthetic */ void N(c.a aVar, n3 n3Var) {
        a2.b.c0(this, aVar, n3Var);
    }

    @Override // a2.c
    public /* synthetic */ void O(c.a aVar, com.google.android.exoplayer2.k1 k1Var, b2.g gVar) {
        a2.b.h(this, aVar, k1Var, gVar);
    }

    @Override // a2.c
    public /* synthetic */ void P(c.a aVar, int i9, boolean z10) {
        a2.b.t(this, aVar, i9, z10);
    }

    @Override // a2.c
    public /* synthetic */ void Q(c.a aVar, com.google.android.exoplayer2.k1 k1Var, b2.g gVar) {
        a2.b.k0(this, aVar, k1Var, gVar);
    }

    @Override // a2.c
    public void R(c.a aVar, b2.e eVar) {
        this.f531x += eVar.f1127g;
        this.f532y += eVar.f1125e;
    }

    @Override // a2.c
    public /* synthetic */ void S(c.a aVar, String str, long j10, long j11) {
        a2.b.c(this, aVar, str, j10, j11);
    }

    @Override // a2.c
    public /* synthetic */ void T(c.a aVar, boolean z10) {
        a2.b.Y(this, aVar, z10);
    }

    @Override // a2.c
    public /* synthetic */ void U(c.a aVar) {
        a2.b.V(this, aVar);
    }

    @Override // a2.c
    public /* synthetic */ void V(c.a aVar, List list) {
        a2.b.m(this, aVar, list);
    }

    @Override // a2.c
    public /* synthetic */ void W(c.a aVar, int i9, com.google.android.exoplayer2.k1 k1Var) {
        a2.b.r(this, aVar, i9, k1Var);
    }

    @Override // a2.c
    public /* synthetic */ void X(c.a aVar) {
        a2.b.A(this, aVar);
    }

    @Override // a2.c
    public void Y(c.a aVar, l2.e eVar, l2.e eVar2, int i9) {
        if (i9 == 1) {
            this.f528u = true;
        }
        this.f518k = i9;
    }

    @Override // a2.c
    public /* synthetic */ void Z(c.a aVar, boolean z10, int i9) {
        a2.b.L(this, aVar, z10, i9);
    }

    @Override // a2.c
    public /* synthetic */ void a(c.a aVar, boolean z10) {
        a2.b.H(this, aVar, z10);
    }

    @Override // a2.c
    public void a0(c.a aVar, v2.m mVar) {
        if (aVar.f377d == null) {
            return;
        }
        b bVar = new b((com.google.android.exoplayer2.k1) com.google.android.exoplayer2.util.a.e(mVar.f58897c), mVar.f58898d, this.f509b.c(aVar.f375b, (q.b) com.google.android.exoplayer2.util.a.e(aVar.f377d)));
        int i9 = mVar.f58896b;
        if (i9 != 0) {
            if (i9 == 1) {
                this.f523p = bVar;
                return;
            } else if (i9 != 2) {
                if (i9 != 3) {
                    return;
                }
                this.f524q = bVar;
                return;
            }
        }
        this.f522o = bVar;
    }

    @Override // a2.c
    public /* synthetic */ void b(c.a aVar, int i9) {
        a2.b.O(this, aVar, i9);
    }

    @Override // a2.c
    public /* synthetic */ void b0(c.a aVar, com.google.android.exoplayer2.s1 s1Var, int i9) {
        a2.b.I(this, aVar, s1Var, i9);
    }

    @Override // a2.c
    public /* synthetic */ void c(c.a aVar, String str) {
        a2.b.g0(this, aVar, str);
    }

    @Override // a2.c
    public /* synthetic */ void c0(c.a aVar, String str, long j10, long j11) {
        a2.b.f0(this, aVar, str, j10, j11);
    }

    @Override // a2.c
    public /* synthetic */ void d(c.a aVar, l2.b bVar) {
        a2.b.l(this, aVar, bVar);
    }

    @Override // a2.c
    public /* synthetic */ void d0(c.a aVar, int i9, String str, long j10) {
        a2.b.q(this, aVar, i9, str, j10);
    }

    @Override // a2.c
    public /* synthetic */ void e(c.a aVar, long j10, int i9) {
        a2.b.i0(this, aVar, j10, i9);
    }

    @Override // a2.c
    public void e0(c.a aVar, int i9, long j10, long j11) {
        q.b bVar = aVar.f377d;
        if (bVar != null) {
            String c10 = this.f509b.c(aVar.f375b, (q.b) com.google.android.exoplayer2.util.a.e(bVar));
            Long l10 = this.f515h.get(c10);
            Long l11 = this.f514g.get(c10);
            this.f515h.put(c10, Long.valueOf((l10 == null ? 0L : l10.longValue()) + j10));
            this.f514g.put(c10, Long.valueOf((l11 != null ? l11.longValue() : 0L) + i9));
        }
    }

    @Override // a2.c
    public /* synthetic */ void f(c.a aVar, int i9) {
        a2.b.y(this, aVar, i9);
    }

    @Override // a2.c
    public /* synthetic */ void f0(c.a aVar, int i9, long j10) {
        a2.b.B(this, aVar, i9, j10);
    }

    @Override // a2.c
    public /* synthetic */ void g(c.a aVar, Exception exc) {
        a2.b.z(this, aVar, exc);
    }

    @Override // a2.c
    public /* synthetic */ void g0(c.a aVar, com.google.android.exoplayer2.k1 k1Var) {
        a2.b.g(this, aVar, k1Var);
    }

    @Override // a2.c
    public /* synthetic */ void h(c.a aVar, int i9, b2.e eVar) {
        a2.b.o(this, aVar, i9, eVar);
    }

    @Override // a2.c
    public /* synthetic */ void h0(c.a aVar) {
        a2.b.W(this, aVar);
    }

    @Override // a2.c
    public /* synthetic */ void i(c.a aVar, String str) {
        a2.b.d(this, aVar, str);
    }

    @Override // a2.r1.a
    public void i0(c.a aVar, String str) {
    }

    @Override // a2.c
    public /* synthetic */ void j(c.a aVar, String str, long j10) {
        a2.b.b(this, aVar, str, j10);
    }

    @Override // a2.c
    public /* synthetic */ void j0(c.a aVar) {
        a2.b.x(this, aVar);
    }

    @Override // a2.c
    public /* synthetic */ void k(c.a aVar, com.google.android.exoplayer2.o oVar) {
        a2.b.s(this, aVar, oVar);
    }

    @Override // a2.c
    public /* synthetic */ void k0(c.a aVar, int i9) {
        a2.b.U(this, aVar, i9);
    }

    @Override // a2.c
    public /* synthetic */ void l(c.a aVar) {
        a2.b.w(this, aVar);
    }

    @Override // a2.r1.a
    public void l0(c.a aVar, String str, boolean z10) {
        q.b bVar = aVar.f377d;
        if ((bVar == null || !bVar.b()) && str.equals(this.f516i)) {
            A0();
        }
        this.f514g.remove(str);
        this.f515h.remove(str);
    }

    @Override // a2.c
    public /* synthetic */ void m(c.a aVar, String str, long j10) {
        a2.b.e0(this, aVar, str, j10);
    }

    @Override // a2.c
    public /* synthetic */ void m0(c.a aVar, v2.j jVar, v2.m mVar) {
        a2.b.E(this, aVar, jVar, mVar);
    }

    @Override // a2.c
    public /* synthetic */ void n(c.a aVar, x1 x1Var) {
        a2.b.J(this, aVar, x1Var);
    }

    @Override // a2.c
    public /* synthetic */ void n0(c.a aVar, Exception exc) {
        a2.b.a(this, aVar, exc);
    }

    @Override // a2.c
    public /* synthetic */ void o(c.a aVar, boolean z10, int i9) {
        a2.b.R(this, aVar, z10, i9);
    }

    @Override // a2.c
    public /* synthetic */ void o0(c.a aVar, int i9, long j10, long j11) {
        a2.b.k(this, aVar, i9, j10, j11);
    }

    @Override // a2.c
    public /* synthetic */ void p(c.a aVar, b2.e eVar) {
        a2.b.f(this, aVar, eVar);
    }

    @Override // a2.c
    public /* synthetic */ void p0(c.a aVar) {
        a2.b.u(this, aVar);
    }

    @Override // a2.c
    public /* synthetic */ void q(c.a aVar, long j10) {
        a2.b.i(this, aVar, j10);
    }

    @Override // a2.r1.a
    public void q0(c.a aVar, String str, String str2) {
    }

    @Override // a2.c
    public /* synthetic */ void r(c.a aVar, v2.j jVar, v2.m mVar) {
        a2.b.F(this, aVar, jVar, mVar);
    }

    @Override // a2.c
    public /* synthetic */ void r0(c.a aVar) {
        a2.b.v(this, aVar);
    }

    @Override // a2.c
    public /* synthetic */ void s(c.a aVar, int i9) {
        a2.b.a0(this, aVar, i9);
    }

    @Override // a2.c
    public /* synthetic */ void s0(c.a aVar, int i9, b2.e eVar) {
        a2.b.p(this, aVar, i9, eVar);
    }

    @Override // a2.c
    public /* synthetic */ void t(c.a aVar, int i9, int i10) {
        a2.b.Z(this, aVar, i9, i10);
    }

    @Override // a2.c
    public void t0(c.a aVar, PlaybackException playbackException) {
        this.f521n = playbackException;
    }

    @Override // a2.c
    public void u(l2 l2Var, c.b bVar) {
        if (bVar.d() == 0) {
            return;
        }
        K0(bVar);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Q0(l2Var, bVar);
        M0(elapsedRealtime);
        O0(l2Var, bVar, elapsedRealtime);
        L0(elapsedRealtime);
        N0(l2Var, bVar, elapsedRealtime);
        if (bVar.a(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_WATERMARK)) {
            this.f509b.g(bVar.c(UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_WATERMARK));
        }
    }

    @Override // a2.c
    public /* synthetic */ void u0(c.a aVar, int i9, int i10, int i11, float f10) {
        a2.b.l0(this, aVar, i9, i10, i11, f10);
    }

    @Override // a2.c
    public /* synthetic */ void v(c.a aVar, x2.e eVar) {
        a2.b.n(this, aVar, eVar);
    }

    @Override // a2.c
    public /* synthetic */ void v0(c.a aVar, boolean z10) {
        a2.b.D(this, aVar, z10);
    }

    @Override // a2.c
    public /* synthetic */ void w(c.a aVar) {
        a2.b.Q(this, aVar);
    }

    @Override // a2.c
    public /* synthetic */ void w0(c.a aVar, Object obj, long j10) {
        a2.b.T(this, aVar, obj, j10);
    }

    @Override // a2.c
    public /* synthetic */ void x(c.a aVar, boolean z10) {
        a2.b.X(this, aVar, z10);
    }

    @Override // a2.c
    public /* synthetic */ void x0(c.a aVar, b2.e eVar) {
        a2.b.e(this, aVar, eVar);
    }

    @Override // a2.c
    public void y(c.a aVar, k3.y yVar) {
        b bVar = this.f522o;
        if (bVar != null) {
            com.google.android.exoplayer2.k1 k1Var = bVar.f536a;
            if (k1Var.f6117r == -1) {
                this.f522o = new b(k1Var.b().j0(yVar.f53631a).Q(yVar.f53632b).E(), bVar.f537b, bVar.f538c);
            }
        }
    }

    @Override // a2.c
    public /* synthetic */ void z(c.a aVar, Metadata metadata) {
        a2.b.K(this, aVar, metadata);
    }
}
