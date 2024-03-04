package com.tencent.thumbplayer.adapter.a.a;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.media.TimedText;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.imsdk.BaseConstants;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.thumbplayer.adapter.a.a.a;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public class e implements com.tencent.thumbplayer.adapter.a.b {
    private c.l A;
    private c.m B;
    private volatile MediaPlayer C;
    private com.tencent.thumbplayer.a.c E;
    private Object F;
    private a J;
    private volatile EnumC0338e Q;
    private volatile EnumC0338e R;

    /* renamed from: a  reason: collision with root package name */
    private com.tencent.thumbplayer.e.a f33514a;

    /* renamed from: af  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.a.a.a f33520af;

    /* renamed from: b  reason: collision with root package name */
    private Context f33524b;

    /* renamed from: f  reason: collision with root package name */
    private String f33528f;

    /* renamed from: g  reason: collision with root package name */
    private FileDescriptor f33529g;

    /* renamed from: h  reason: collision with root package name */
    private AssetFileDescriptor f33530h;

    /* renamed from: l  reason: collision with root package name */
    private Map<String, String> f33534l;

    /* renamed from: u  reason: collision with root package name */
    private c.i f33543u;

    /* renamed from: v  reason: collision with root package name */
    private c.InterfaceC0340c f33544v;

    /* renamed from: w  reason: collision with root package name */
    private c.h f33545w;

    /* renamed from: x  reason: collision with root package name */
    private c.f f33546x;

    /* renamed from: y  reason: collision with root package name */
    private c.j f33547y;

    /* renamed from: z  reason: collision with root package name */
    private c.p f33548z;

    /* renamed from: c  reason: collision with root package name */
    private boolean f33525c = false;

    /* renamed from: d  reason: collision with root package name */
    private long f33526d = 0;

    /* renamed from: e  reason: collision with root package name */
    private long f33527e = 0;

    /* renamed from: i  reason: collision with root package name */
    private boolean f33531i = false;

    /* renamed from: j  reason: collision with root package name */
    private float f33532j = 1.0f;

    /* renamed from: k  reason: collision with root package name */
    private float f33533k = 1.0f;

    /* renamed from: m  reason: collision with root package name */
    private int f33535m = 0;

    /* renamed from: n  reason: collision with root package name */
    private long f33536n = -1;

    /* renamed from: o  reason: collision with root package name */
    private boolean f33537o = false;

    /* renamed from: p  reason: collision with root package name */
    private long f33538p = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f33539q = -1;

    /* renamed from: r  reason: collision with root package name */
    private int f33540r = -1;

    /* renamed from: s  reason: collision with root package name */
    private TPAudioAttributes f33541s = null;

    /* renamed from: t  reason: collision with root package name */
    private boolean f33542t = true;
    private Future<?> G = null;
    private final Object H = new Object();
    private long I = 25000;
    private final Object K = new Object();
    private int L = 3;
    private int M = 30;
    private final Object N = new Object();
    private Future<?> O = null;
    private boolean P = false;
    private boolean S = false;
    private long T = 0;
    private long U = -1;
    private int V = 0;
    private int W = 0;
    private volatile boolean X = false;
    private int Y = 0;
    private int Z = -1;

    /* renamed from: aa  reason: collision with root package name */
    private int f33515aa = 0;

    /* renamed from: ab  reason: collision with root package name */
    private int f33516ab = -1;

    /* renamed from: ac  reason: collision with root package name */
    private int f33517ac = -1;

    /* renamed from: ad  reason: collision with root package name */
    private List<b> f33518ad = new ArrayList();

    /* renamed from: ae  reason: collision with root package name */
    private List<b> f33519ae = new ArrayList();

    /* renamed from: ag  reason: collision with root package name */
    private long f33521ag = 0;

    /* renamed from: ah  reason: collision with root package name */
    private f f33522ah = null;

    /* renamed from: ai  reason: collision with root package name */
    private MediaPlayer.OnTimedTextListener f33523ai = new MediaPlayer.OnTimedTextListener() { // from class: com.tencent.thumbplayer.adapter.a.a.e.8
        @Override // android.media.MediaPlayer.OnTimedTextListener
        public void onTimedText(MediaPlayer mediaPlayer, TimedText timedText) {
            if (e.this.A != null) {
                TPSubtitleData tPSubtitleData = new TPSubtitleData();
                tPSubtitleData.subtitleData = timedText != null ? timedText.getText() : "";
                tPSubtitleData.trackIndex = e.this.Z;
                tPSubtitleData.startPositionMs = e.this.n();
                e.this.A.a(tPSubtitleData);
            }
        }
    };
    private d D = new d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f33558a;

        /* renamed from: b  reason: collision with root package name */
        Future<?> f33559b;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public TPTrackInfo f33560a;

        /* renamed from: b  reason: collision with root package name */
        public String f33561b;

        /* renamed from: c  reason: collision with root package name */
        public List<TPOptionalParam> f33562c;

        /* renamed from: d  reason: collision with root package name */
        public Map<String, String> f33563d;

        private b() {
            this.f33561b = "";
        }
    }

    /* loaded from: classes4.dex */
    static class c implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private Handler f33564a;

        c(Handler handler) {
            this.f33564a = handler;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            try {
                this.f33564a.handleMessage(message);
                return true;
            } catch (Exception e10) {
                TPLogUtil.e("TPSystemMediaPlayer", "mediaPlayerExceptionHook, HookCallback, " + Log.getStackTraceString(e10));
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class d implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
        private d() {
        }

        private int a(int i9) {
            return e.this.f33540r > 0 ? e.this.f33540r : i9;
        }

        private int b(int i9) {
            return e.this.f33539q > 0 ? e.this.f33539q : i9;
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i9) {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (e.this.f33537o) {
                e.this.f33514a.d("onCompletion, unknown err.");
                return;
            }
            e.this.f33514a.c("onCompletion.");
            e.this.R = EnumC0338e.COMPLETE;
            e.this.C();
            c.InterfaceC0340c interfaceC0340c = e.this.f33544v;
            if (interfaceC0340c != null) {
                interfaceC0340c.b();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
            if (r12 == 100) goto L21;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
        @Override // android.media.MediaPlayer.OnErrorListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onError(android.media.MediaPlayer r11, int r12, int r13) {
            /*
                r10 = this;
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0338e.COMPLETE
                r1 = 1
                if (r11 == r0) goto L99
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0338e.STOPPED
                if (r11 == r0) goto L99
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0338e.RELEASE
                if (r11 == r0) goto L99
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0338e.IDLE
                if (r11 == r0) goto L99
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r11 = com.tencent.thumbplayer.adapter.a.a.e.e(r11)
                com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0338e.ERROR
                if (r11 != r0) goto L34
                goto L99
            L34:
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.e.a r11 = com.tencent.thumbplayer.adapter.a.a.e.c(r11)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                java.lang.String r3 = "onError, what: "
                r2.<init>(r3)
                r2.append(r12)
                java.lang.String r3 = ", extra: "
                r2.append(r3)
                r2.append(r13)
                java.lang.String r2 = r2.toString()
                r11.c(r2)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.h(r11)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.q(r11)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.a(r11, r0)
                r11 = -1010(0xfffffffffffffc0e, float:NaN)
                r0 = 2001(0x7d1, float:2.804E-42)
                r2 = 2000(0x7d0, float:2.803E-42)
                if (r13 == r11) goto L7f
                r11 = -1007(0xfffffffffffffc11, float:NaN)
                if (r13 == r11) goto L7f
                r11 = -110(0xffffffffffffff92, float:NaN)
                if (r13 == r11) goto L7c
                switch(r13) {
                    case -1005: goto L7c;
                    case -1004: goto L7c;
                    case -1003: goto L7c;
                    default: goto L75;
                }
            L75:
                if (r12 == r1) goto L7f
                r11 = 100
                if (r12 == r11) goto L7c
                goto L7f
            L7c:
                r4 = 2001(0x7d1, float:2.804E-42)
                goto L81
            L7f:
                r4 = 2000(0x7d0, float:2.803E-42)
            L81:
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e.g(r11)
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.c$f r3 = com.tencent.thumbplayer.adapter.a.a.e.i(r11)
                if (r3 == 0) goto L98
                int r5 = com.tencent.thumbplayer.adapter.a.a.e.d(r12)
                long r6 = (long) r13
                r8 = 0
                r3.a(r4, r5, r6, r8)
            L98:
                return r1
            L99:
                com.tencent.thumbplayer.adapter.a.a.e r11 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.e.a r11 = com.tencent.thumbplayer.adapter.a.a.e.c(r11)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                java.lang.String r2 = "onError, illegal state:"
                r0.<init>(r2)
                com.tencent.thumbplayer.adapter.a.a.e r2 = com.tencent.thumbplayer.adapter.a.a.e.this
                com.tencent.thumbplayer.adapter.a.a.e$e r2 = com.tencent.thumbplayer.adapter.a.a.e.e(r2)
                r0.append(r2)
                java.lang.String r2 = ", what:"
                r0.append(r2)
                r0.append(r12)
                java.lang.String r12 = ", extra:"
                r0.append(r12)
                r0.append(r13)
                java.lang.String r12 = r0.toString()
                r11.c(r12)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.d.onError(android.media.MediaPlayer, int, int):boolean");
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i9, int i10) {
            int i11;
            com.tencent.thumbplayer.e.a aVar = e.this.f33514a;
            aVar.c("mediaplayer, onInfo. what:" + i9 + ", extra:" + i10);
            if (i9 != 3) {
                if (i9 == 801) {
                    e.this.P = true;
                } else if (i9 == 701) {
                    i11 = 200;
                } else if (i9 == 702) {
                    i11 = 201;
                }
                i11 = -1;
            } else {
                i11 = 106;
            }
            if (i11 != -1) {
                if (200 == i11 || 201 == i11) {
                    if (!e.this.G()) {
                        e eVar = e.this;
                        if (200 == i11) {
                            eVar.X = true;
                            e.this.E();
                        } else {
                            eVar.X = false;
                            e.this.F();
                        }
                        if (e.this.f33545w != null) {
                            e.this.f33545w.a(i11, 0L, 0L, null);
                        }
                    }
                } else if (e.this.f33545w != null) {
                    e.this.f33545w.a(106, 0L, 0L, null);
                }
            }
            if (i11 == 106) {
                int a10 = a(mediaPlayer.getVideoWidth());
                int b10 = b(mediaPlayer.getVideoHeight());
                if ((b10 != e.this.W || a10 != e.this.V) && b10 > 0 && a10 > 0) {
                    e.this.W = b10;
                    e.this.V = a10;
                    if (e.this.f33548z != null) {
                        e.this.f33548z.a(e.this.V, e.this.W);
                    }
                }
            }
            return true;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            if (e.this.Q != EnumC0338e.PREPARING) {
                e.this.f33514a.c("onPrepared() is called in a wrong situation, mState = " + e.this.Q);
                return;
            }
            e.this.R = EnumC0338e.PREPARED;
            long duration = e.this.C.getDuration();
            if (duration <= 0) {
                e.this.P = true;
            }
            e.this.f33514a.c("onPrepared() , mStartPositionMs=" + e.this.f33535m + ", duration:" + duration + ", mIsLive:" + e.this.f33537o);
            e.this.A();
            e.this.w();
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            if (e.this.C == null) {
                return;
            }
            e.this.f33514a.c("onSeekComplete().");
            EnumC0338e enumC0338e = e.this.Q;
            EnumC0338e enumC0338e2 = EnumC0338e.STARTED;
            if (enumC0338e == enumC0338e2 && e.this.R == EnumC0338e.COMPLETE) {
                e.this.Q = enumC0338e2;
                e.this.R = enumC0338e2;
                e.this.C.start();
            }
            if (EnumC0338e.PREPARED == e.this.Q || e.this.f33547y == null) {
                return;
            }
            e.this.f33547y.c();
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i9, int i10) {
            if (i9 == 0 || i10 == 0) {
                com.tencent.thumbplayer.e.a aVar = e.this.f33514a;
                aVar.e("onVideoSizeChanged() size error, width:" + i9 + " height:" + i10);
                return;
            }
            int a10 = a(i9);
            int b10 = b(i10);
            try {
                if ((a10 != e.this.V || b10 != e.this.W) && b10 > 0 && a10 > 0) {
                    e.this.f33548z.a(a10, b10);
                }
            } catch (Exception e10) {
                e.this.f33514a.d(e10.toString());
            }
            e.this.V = a10;
            e.this.W = b10;
            com.tencent.thumbplayer.e.a aVar2 = e.this.f33514a;
            aVar2.c("onVideoSizeChanged(), width:" + a10 + " height:" + b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.thumbplayer.adapter.a.a.e$e  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0338e {
        IDLE,
        INITIALIZED,
        PREPARING,
        PREPARED,
        STARTED,
        PAUSED,
        STOPPED,
        COMPLETE,
        ERROR,
        RELEASE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        int f33577a;

        /* renamed from: b  reason: collision with root package name */
        long f33578b;

        /* renamed from: c  reason: collision with root package name */
        long f33579c;

        /* renamed from: d  reason: collision with root package name */
        int f33580d;

        /* renamed from: e  reason: collision with root package name */
        int f33581e;

        /* renamed from: f  reason: collision with root package name */
        int f33582f;

        /* renamed from: g  reason: collision with root package name */
        String f33583g;

        /* renamed from: h  reason: collision with root package name */
        EnumC0338e f33584h;

        private f() {
        }
    }

    public e(Context context, com.tencent.thumbplayer.e.b bVar) {
        this.f33514a = new com.tencent.thumbplayer.e.a(bVar, "TPSystemMediaPlayer");
        this.f33524b = context;
        b bVar2 = new b();
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        bVar2.f33560a = tPTrackInfo;
        tPTrackInfo.isSelected = true;
        tPTrackInfo.name = "audio_1";
        this.f33518ad.add(bVar2);
        b();
        com.tencent.thumbplayer.adapter.a.a.c cVar = new com.tencent.thumbplayer.adapter.a.a.c();
        this.f33520af = cVar;
        cVar.a(new a.InterfaceC0337a() { // from class: com.tencent.thumbplayer.adapter.a.a.e.1
            @Override // com.tencent.thumbplayer.adapter.a.a.a.InterfaceC0337a
            public void a(a.e eVar) {
                TPSubtitleData tPSubtitleData = new TPSubtitleData();
                tPSubtitleData.subtitleData = eVar.f33477a;
                c.l lVar = e.this.A;
                if (lVar != null) {
                    lVar.a(tPSubtitleData);
                }
            }

            @Override // com.tencent.thumbplayer.adapter.a.a.a.InterfaceC0337a
            public void a(TPSubtitleFrame tPSubtitleFrame) {
                TPSubtitleFrameBuffer a10 = com.tencent.thumbplayer.adapter.a.b.c.a(tPSubtitleFrame);
                c.m mVar = e.this.B;
                if (mVar != null) {
                    mVar.a(a10);
                }
            }

            @Override // com.tencent.thumbplayer.adapter.a.a.a.InterfaceC0337a
            public void a(String str) {
                e.this.f33514a.c("onSubtitleNote, ".concat(String.valueOf(str)));
                c.h hVar = e.this.f33545w;
                if (hVar != null) {
                    hVar.a(506, 0L, 0L, str);
                }
            }
        });
        this.f33520af.a(new a.d() { // from class: com.tencent.thumbplayer.adapter.a.a.e.2
            @Override // com.tencent.thumbplayer.adapter.a.a.a.d
            public long a() {
                if (e.this.Q == EnumC0338e.PAUSED || e.this.Q == EnumC0338e.STARTED) {
                    return e.this.n();
                }
                return -1L;
            }
        });
        this.f33520af.a(new a.c() { // from class: com.tencent.thumbplayer.adapter.a.a.e.3
            @Override // com.tencent.thumbplayer.adapter.a.a.a.c
            public void a(int i9, long j10) {
                if (e.this.f33545w != null) {
                    e.this.f33545w.a(4, 2000L, e.g(i9), Long.valueOf(j10));
                }
            }

            @Override // com.tencent.thumbplayer.adapter.a.a.a.c
            public void a(long j10) {
                if (e.this.Q == EnumC0338e.STARTED) {
                    e.this.f33520af.b();
                }
                if (e.this.f33545w != null) {
                    e.this.f33545w.a(4, 1000L, 0L, Long.valueOf(j10));
                }
            }
        });
        this.f33520af.a(new a.b() { // from class: com.tencent.thumbplayer.adapter.a.a.e.4
            @Override // com.tencent.thumbplayer.adapter.a.a.a.b
            public void a(int i9, int i10) {
                if (e.this.f33545w != null) {
                    e.this.f33545w.a(254, i9, i10, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A() {
        synchronized (this.H) {
            Future<?> future = this.G;
            if (future != null) {
                future.cancel(true);
                this.G = null;
            }
        }
    }

    private void B() {
        synchronized (this.K) {
            if (!G()) {
                this.f33514a.c("startCheckBufferingTimer, forbidden check buffer by position");
                return;
            }
            if (this.J == null) {
                final a aVar = new a();
                this.J = aVar;
                aVar.f33558a = false;
                aVar.f33559b = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.e.6
                    @Override // java.lang.Runnable
                    public void run() {
                        while (!aVar.f33558a) {
                            e.this.D();
                            try {
                                Thread.sleep(400L);
                            } catch (InterruptedException e10) {
                                e10.printStackTrace();
                            }
                        }
                    }
                }, 0L, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void C() {
        synchronized (this.K) {
            a aVar = this.J;
            if (aVar != null) {
                aVar.f33558a = true;
                Future<?> future = aVar.f33559b;
                if (future != null) {
                    future.cancel(true);
                }
                this.J.f33559b = null;
                this.J = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        long n9 = n();
        long j10 = this.U;
        this.U = n9;
        if (this.Q != EnumC0338e.STARTED) {
            if (this.Q == EnumC0338e.PAUSED && this.X) {
                this.f33514a.c("checkBuffingEvent, pause state and send end buffering");
                this.X = false;
                this.Y = 0;
                c.h hVar = this.f33545w;
                if (hVar != null) {
                    hVar.a(201, 0L, 0L, null);
                    return;
                }
                return;
            }
            return;
        }
        if (this.f33525c) {
            long j11 = this.f33527e;
            if (j11 > 0 && n9 >= j11 && !this.P) {
                this.f33514a.c("checkBuffingEvent, loopback skip end, curPosition:" + n9 + ", mLoopStartPositionMs:" + this.f33526d);
                this.C.seekTo((int) this.f33526d);
            }
        } else if (this.f33536n > 0 && n9 >= m() - this.f33536n) {
            this.f33514a.c("checkBuffingEvent, skip end, mBaseDuration: " + this.T + ", curPosition:" + n9 + ", mSkipEndMilsec:" + this.f33536n);
            this.Q = EnumC0338e.COMPLETE;
            e();
            C();
            c.InterfaceC0340c interfaceC0340c = this.f33544v;
            if (interfaceC0340c != null) {
                interfaceC0340c.b();
                return;
            }
            return;
        }
        int i9 = (n9 > j10 ? 1 : (n9 == j10 ? 0 : -1));
        if (i9 != 0) {
            this.f33521ag++;
        }
        if (i9 != 0 || n9 <= 0) {
            if (this.X) {
                this.f33514a.c("checkBuffingEvent, position change, send end buffering");
                c.h hVar2 = this.f33545w;
                if (hVar2 != null) {
                    hVar2.a(201, n9, this.T, Long.valueOf(this.f33521ag));
                }
            }
            this.X = false;
            this.Y = 0;
            return;
        }
        int i10 = this.Y + 1;
        this.Y = i10;
        if (i10 >= this.L && !this.X) {
            this.X = true;
            this.f33514a.c("checkBuffingEvent, position no change,send start buffering");
            c.h hVar3 = this.f33545w;
            if (hVar3 != null) {
                hVar3.a(200, n9, this.T, Long.valueOf(this.f33521ag));
            }
        }
        if (this.Y >= this.M) {
            this.f33514a.e("checkBuffingEvent post error");
            this.Q = EnumC0338e.ERROR;
            e();
            this.X = false;
            C();
            c.f fVar = this.f33546x;
            if (fVar != null) {
                fVar.a(2001, g((int) ITXVCubePlayer.MEDIA_ERROR_TIMED_OUT), 0L, 0L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        synchronized (this.N) {
            if (this.O == null) {
                this.O = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.e.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (e.this.Q == EnumC0338e.PAUSED || !e.this.X) {
                            return;
                        }
                        e.this.f33514a.e("startCheckBufferTimeOutByInfo, buffer last too long");
                        e.this.Q = EnumC0338e.ERROR;
                        e.this.e();
                        e.this.X = false;
                        e.this.F();
                        c.f fVar = e.this.f33546x;
                        if (fVar != null) {
                            fVar.a(2001, e.g((int) ITXVCubePlayer.MEDIA_ERROR_TIMED_OUT), 0L, 0L);
                        }
                    }
                }, this.M * 400, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void F() {
        synchronized (this.N) {
            Future<?> future = this.O;
            if (future != null) {
                future.cancel(true);
                this.O = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G() {
        if (this.f33537o) {
            return false;
        }
        return this.f33542t;
    }

    private MediaPlayer a() {
        com.tencent.thumbplayer.adapter.a.a.b bVar = new com.tencent.thumbplayer.adapter.a.a.b();
        bVar.setOnPreparedListener(this.D);
        bVar.setOnCompletionListener(this.D);
        bVar.setOnErrorListener(this.D);
        bVar.setOnInfoListener(this.D);
        bVar.setOnBufferingUpdateListener(this.D);
        bVar.setOnSeekCompleteListener(this.D);
        bVar.setOnVideoSizeChangedListener(this.D);
        bVar.setOnTimedTextListener(this.f33523ai);
        return bVar;
    }

    private void a(MediaPlayer mediaPlayer) {
        try {
            Field declaredField = MediaPlayer.class.getDeclaredField("mEventHandler");
            declaredField.setAccessible(true);
            Handler handler = (Handler) declaredField.get(mediaPlayer);
            Field declaredField2 = Handler.class.getDeclaredField("mCallback");
            declaredField2.setAccessible(true);
            if (((Handler.Callback) declaredField2.get(handler)) == null) {
                declaredField2.set(handler, new c(handler));
            }
        } catch (Exception e10) {
            com.tencent.thumbplayer.e.a aVar = this.f33514a;
            aVar.e("mediaPlayerExceptionHook, " + Log.getStackTraceString(e10));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (r6 == 3) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.media.MediaPlayer r4, int r5, @com.tencent.thumbplayer.api.TPCommonEnum.TPSeekMode int r6) {
        /*
            r3 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 >= r1) goto L22
            com.tencent.thumbplayer.e.a r6 = r3.f33514a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "os ver is too low, current sdk int:"
            r1.<init>(r2)
            r1.append(r0)
            java.lang.String r0 = ", is less than 26, use seekTo(int positionMs) instead"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r6.c(r0)
            r4.seekTo(r5)
            return
        L22:
            r0 = 2
            r1 = 1
            r2 = 0
            if (r6 != r1) goto L29
        L27:
            r0 = 0
            goto L30
        L29:
            if (r6 != r0) goto L2d
            r0 = 1
            goto L30
        L2d:
            r1 = 3
            if (r6 != r1) goto L27
        L30:
            long r1 = (long) r5
            r4.seekTo(r1, r0)     // Catch: java.lang.Exception -> L35
            return
        L35:
            r6 = move-exception
            com.tencent.thumbplayer.e.a r0 = r3.f33514a
            r0.a(r6)
            com.tencent.thumbplayer.adapter.a.a.e$e r6 = r3.R     // Catch: java.lang.Exception -> L49
            com.tencent.thumbplayer.adapter.a.a.e$e r0 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0338e.COMPLETE     // Catch: java.lang.Exception -> L49
            if (r6 != r0) goto L45
            com.tencent.thumbplayer.adapter.a.a.e$e r6 = com.tencent.thumbplayer.adapter.a.a.e.EnumC0338e.STARTED     // Catch: java.lang.Exception -> L49
            r3.Q = r6     // Catch: java.lang.Exception -> L49
        L45:
            r4.seekTo(r5)     // Catch: java.lang.Exception -> L49
            return
        L49:
            r4 = move-exception
            com.tencent.thumbplayer.e.a r5 = r3.f33514a
            r5.a(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.a(android.media.MediaPlayer, int, int):void");
    }

    private synchronized void a(f fVar) {
        int i9;
        String str = fVar.f33583g;
        fVar.f33579c = n();
        fVar.f33584h = this.Q;
        fVar.f33581e = this.f33517ac;
        fVar.f33582f = this.Z;
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("playerResetStart, pos:" + fVar.f33579c + ", state:" + fVar.f33584h);
        this.S = true;
        v();
        this.R = EnumC0338e.IDLE;
        if (this.f33529g != null) {
            this.C.setDataSource(this.f33529g);
        } else {
            AssetFileDescriptor assetFileDescriptor = this.f33530h;
            if (assetFileDescriptor != null) {
                b(assetFileDescriptor);
            } else {
                e(fVar.f33580d);
                Map<String, String> map = this.f33534l;
                if (map == null || map.isEmpty()) {
                    this.C.setDataSource(str);
                } else {
                    this.C.setDataSource(this.f33524b, Uri.parse(str), this.f33534l);
                }
            }
        }
        this.R = EnumC0338e.INITIALIZED;
        Object obj = this.F;
        if (obj == null) {
            this.C.setDisplay(null);
        } else if (obj instanceof SurfaceHolder) {
            this.C.setDisplay((SurfaceHolder) this.F);
        } else if (obj instanceof Surface) {
            this.C.setSurface((Surface) this.F);
        }
        f fVar2 = this.f33522ah;
        if (fVar2 != null && (i9 = fVar2.f33577a) != fVar.f33577a) {
            c.h hVar = this.f33545w;
            int i10 = i9 == 1 ? 3 : 4;
            if (hVar != null) {
                hVar.a(i10, fVar2.f33578b, 0L, null);
            }
            fVar.f33584h = fVar2.f33584h;
            fVar.f33579c = fVar2.f33579c;
        }
        this.f33522ah = fVar;
        EnumC0338e enumC0338e = fVar.f33584h;
        if (enumC0338e == EnumC0338e.PREPARING || enumC0338e == EnumC0338e.PREPARED || enumC0338e == EnumC0338e.STARTED || enumC0338e == EnumC0338e.PAUSED) {
            g();
        }
    }

    private void a(TPAudioAttributes tPAudioAttributes) {
        if (tPAudioAttributes == null) {
            return;
        }
        int i9 = Build.VERSION.SDK_INT;
        this.C.setAudioAttributes(this.f33541s.toAndroidMediaAudioAttributes());
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("set audio attributes into MediaPlayer, API:" + i9 + ">=21, " + this.f33541s.toString());
    }

    private boolean a(EnumC0338e enumC0338e) {
        return enumC0338e == EnumC0338e.PREPARED || enumC0338e == EnumC0338e.STARTED || enumC0338e == EnumC0338e.PAUSED;
    }

    private void b() {
        this.C = a();
        EnumC0338e enumC0338e = EnumC0338e.IDLE;
        this.Q = enumC0338e;
        this.R = enumC0338e;
    }

    private void b(AssetFileDescriptor assetFileDescriptor) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.C.setDataSource(assetFileDescriptor);
        } else {
            this.C.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    private boolean b(EnumC0338e enumC0338e) {
        return enumC0338e != EnumC0338e.RELEASE;
    }

    private void c() {
        if (a(this.R)) {
            this.R = EnumC0338e.STOPPED;
            this.f33514a.c("MediaPlayer stop.");
            this.C.stop();
        }
    }

    private void d() {
        if (b(this.R)) {
            this.R = EnumC0338e.RELEASE;
            this.f33514a.c("MediaPlayer release.");
            this.C.release();
        }
    }

    private void d(int i9, long j10) {
        f fVar = new f();
        fVar.f33578b = j10;
        fVar.f33580d = i9;
        fVar.f33577a = 2;
        fVar.f33583g = this.f33528f;
        a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        y();
        c();
        d();
    }

    private void e(int i9) {
        if (i9 <= 0) {
            return;
        }
        b bVar = this.f33518ad.get(i9);
        c.h hVar = this.f33545w;
        if (hVar != null) {
            TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = new TPPlayerMsg.TPAudioTrackInfo();
            tPAudioTrackInfo.audioTrackUrl = bVar.f33561b;
            tPAudioTrackInfo.paramData = bVar.f33562c;
            com.tencent.thumbplayer.e.a aVar = this.f33514a;
            aVar.c("handleDataSource, audioTrack url:" + tPAudioTrackInfo.audioTrackUrl);
            hVar.a(1011, 0L, 0L, tPAudioTrackInfo);
        }
    }

    private void e(int i9, long j10) {
        this.f33520af.e();
        b bVar = this.f33519ae.get(i9);
        this.f33520af.a(bVar.f33561b, bVar.f33563d, j10);
        this.f33520af.a();
    }

    private int f(int i9) {
        if (2 == i9) {
            return 2;
        }
        if (1 == i9) {
            return 1;
        }
        return 4 == i9 ? 3 : 0;
    }

    private void f(int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("deselectSubTrack, trackIndex:" + i9 + ", opaque:" + j10);
        this.f33520af.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(int i9) {
        long j10 = i9;
        long j11 = i9 < 0 ? 10000000 - j10 : 10000000 + j10;
        if (j11 >= 2147483647L) {
            j11 = 2147483647L;
        }
        return (int) j11;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void v() {
        /*
            r6 = this;
            r6.A()
            r6.C()
            r6.F()
            r6.e()
            com.tencent.thumbplayer.adapter.a.a.b r0 = new com.tencent.thumbplayer.adapter.a.a.b
            r0.<init>()
            r6.C = r0
            android.media.MediaPlayer r0 = r6.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r6.D
            r0.setOnPreparedListener(r1)
            android.media.MediaPlayer r0 = r6.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r6.D
            r0.setOnCompletionListener(r1)
            android.media.MediaPlayer r0 = r6.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r6.D
            r0.setOnErrorListener(r1)
            android.media.MediaPlayer r0 = r6.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r6.D
            r0.setOnInfoListener(r1)
            android.media.MediaPlayer r0 = r6.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r6.D
            r0.setOnBufferingUpdateListener(r1)
            android.media.MediaPlayer r0 = r6.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r6.D
            r0.setOnSeekCompleteListener(r1)
            android.media.MediaPlayer r0 = r6.C
            com.tencent.thumbplayer.adapter.a.a.e$d r1 = r6.D
            r0.setOnVideoSizeChangedListener(r1)
            android.media.MediaPlayer r0 = r6.C
            android.media.MediaPlayer$OnTimedTextListener r1 = r6.f33523ai
            r0.setOnTimedTextListener(r1)
            boolean r0 = r6.f33531i
            if (r0 == 0) goto L56
            android.media.MediaPlayer r0 = r6.C
            r1 = 0
        L52:
            r0.setVolume(r1, r1)
            goto L63
        L56:
            float r0 = r6.f33532j
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L63
            android.media.MediaPlayer r0 = r6.C
            float r1 = r6.f33532j
            goto L52
        L63:
            float r0 = r6.f33533k
            double r1 = (double) r0
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L6f
            r6.b(r0)
        L6f:
            boolean r0 = r6.f33525c
            if (r0 == 0) goto L7a
            android.media.MediaPlayer r0 = r6.C
            boolean r1 = r6.f33525c
            r0.setLooping(r1)
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.v():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void w() {
        f fVar = this.f33522ah;
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("playerResetEnd, actionInfo:" + fVar + ", mSuspend:" + this.S);
        if (fVar == null || !this.S) {
            if (this.f33535m > 0 && !this.P) {
                com.tencent.thumbplayer.e.a aVar2 = this.f33514a;
                aVar2.c("onPrepared(), and seekto:" + this.f33535m);
                try {
                    this.C.seekTo(this.f33535m);
                } catch (Exception e10) {
                    this.f33514a.a(e10);
                }
            }
            this.Q = EnumC0338e.PREPARED;
            c.i iVar = this.f33543u;
            if (iVar != null) {
                iVar.a();
            }
            return;
        }
        c.h hVar = this.f33545w;
        int i9 = fVar.f33577a == 1 ? 3 : 4;
        if (hVar != null) {
            hVar.a(i9, 1000L, 0L, Long.valueOf(fVar.f33578b));
        }
        if (fVar.f33581e > 0) {
            this.C.selectTrack(fVar.f33581e);
        }
        if (fVar.f33582f > 0) {
            this.C.selectTrack(fVar.f33582f);
        }
        if (fVar.f33579c > 0 && !this.P) {
            com.tencent.thumbplayer.e.a aVar3 = this.f33514a;
            aVar3.c("playerResetEnd, onPrepared(), and seek to:" + fVar.f33579c);
            try {
                this.C.seekTo((int) fVar.f33579c);
            } catch (Exception e11) {
                this.f33514a.a(e11);
            }
        }
        com.tencent.thumbplayer.e.a aVar4 = this.f33514a;
        aVar4.c("playerResetEnd, restore state:" + fVar.f33584h);
        EnumC0338e enumC0338e = fVar.f33584h;
        if (enumC0338e != EnumC0338e.IDLE && enumC0338e != EnumC0338e.INITIALIZED && enumC0338e != EnumC0338e.PREPARING) {
            if (enumC0338e != EnumC0338e.PREPARED && enumC0338e != EnumC0338e.PAUSED) {
                EnumC0338e enumC0338e2 = EnumC0338e.STARTED;
                if (enumC0338e == enumC0338e2) {
                    this.f33514a.c("playerResetEnd,  MediaPlayer.start().");
                    this.C.start();
                    this.Q = fVar.f33584h;
                    this.R = enumC0338e2;
                    B();
                } else {
                    com.tencent.thumbplayer.e.a aVar5 = this.f33514a;
                    aVar5.e("illegal state, state:" + fVar.f33584h);
                    this.Q = EnumC0338e.ERROR;
                    e();
                    c.f fVar2 = this.f33546x;
                    if (fVar2 != null) {
                        fVar2.a(2000, g((int) BaseConstants.ERR_SVR_SSO_A2_DOWN_INVALID), 0L, 0L);
                    }
                }
                this.S = false;
                this.f33522ah = null;
                return;
            }
            this.Q = enumC0338e;
            this.S = false;
            this.f33522ah = null;
            return;
        }
        this.Q = EnumC0338e.PREPARED;
        c.i iVar2 = this.f33543u;
        if (iVar2 != null) {
            iVar2.a();
        }
        this.S = false;
        this.f33522ah = null;
        return;
    }

    private void x() {
        a(this.f33541s);
    }

    private void y() {
        this.C.setOnPreparedListener(null);
        this.C.setOnCompletionListener(null);
        this.C.setOnErrorListener(null);
        this.C.setOnInfoListener(null);
        this.C.setOnBufferingUpdateListener(null);
        this.C.setOnSeekCompleteListener(null);
        this.C.setOnVideoSizeChangedListener(null);
    }

    private void z() {
        this.f33514a.c("startCheckPrepareTimeoutTimer");
        synchronized (this.H) {
            if (this.G == null) {
                this.G = o.a().e().schedule(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.a.e.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (e.this.Q == EnumC0338e.PREPARING) {
                            e.this.f33514a.e("startCheckPrepareTimeoutTimer, post error");
                            e.this.Q = EnumC0338e.ERROR;
                            e.this.e();
                            e.this.A();
                            c.f fVar = e.this.f33546x;
                            if (fVar != null) {
                                fVar.a(2001, e.g((int) ITXVCubePlayer.MEDIA_ERROR_TIMED_OUT), 0L, 0L);
                            }
                        }
                    }
                }, this.I, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f10) {
        this.f33514a.c("setAudioGainRatio, : ".concat(String.valueOf(f10)));
        this.f33532j = f10;
        try {
            if (this.C != null) {
                MediaPlayer mediaPlayer = this.C;
                float f11 = this.f33532j;
                mediaPlayer.setVolume(f11, f11);
            }
        } catch (IllegalStateException e10) {
            com.tencent.thumbplayer.e.a aVar = this.f33514a;
            aVar.c("setAudioGainRatio ex : " + e10.toString());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9) {
        this.f33514a.c("seekTo, position: ".concat(String.valueOf(i9)));
        if (this.P) {
            this.f33514a.c("current media is not seekable, ignore");
        } else if (!this.S) {
            if (this.R == EnumC0338e.COMPLETE) {
                this.Q = EnumC0338e.STARTED;
            }
            this.C.seekTo(i9);
        } else {
            f fVar = this.f33522ah;
            if (fVar != null) {
                fVar.f33579c = i9;
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, @TPCommonEnum.TPSeekMode int i10) {
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("seekTo, position: " + i9 + ", mode: " + i10);
        if (this.P) {
            this.f33514a.c("current media is not seekable, ignore");
        } else if (!this.S) {
            a(this.C, i9, i10);
        } else {
            f fVar = this.f33522ah;
            if (fVar != null) {
                fVar.f33579c = i9;
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("selectTrack, trackID:" + i9 + ", opaque:" + j10);
        int size = this.f33518ad.size();
        int size2 = this.f33519ae.size();
        this.f33518ad.size();
        c.h hVar = this.f33545w;
        if (i9 >= 0 && i9 < size) {
            try {
                d(i9, j10);
                this.f33518ad.get(this.f33515aa).f33560a.isSelected = false;
                this.f33518ad.get(i9).f33560a.isSelected = true;
                this.f33515aa = i9;
            } catch (Exception e10) {
                this.f33514a.a(e10);
                if (hVar != null) {
                    hVar.a(4, 2000L, g((int) BaseConstants.ERR_SVR_SSO_VCODE), Long.valueOf(j10));
                }
            }
        } else if (i9 >= size && i9 < size + size2) {
            int i10 = i9 - size;
            try {
                e(i10, j10);
            } catch (Exception e11) {
                this.f33514a.a(e11);
                if (hVar != null) {
                    hVar.a(4, 2000L, g((int) BaseConstants.ERR_SVR_SSO_VCODE), Long.valueOf(j10));
                }
            }
            int i11 = this.f33516ab;
            if (i11 >= 0 && i11 < size2) {
                this.f33519ae.get(i11).f33560a.isSelected = false;
            }
            this.f33519ae.get(i10).f33560a.isSelected = true;
            this.f33516ab = i9;
        } else {
            int i12 = i9 - (size + size2);
            if (this.Q != EnumC0338e.PREPARED && this.Q != EnumC0338e.STARTED && this.Q != EnumC0338e.PAUSED) {
                com.tencent.thumbplayer.e.a aVar2 = this.f33514a;
                aVar2.e("selectTrack, illegal state:" + this.Q);
                return;
            }
            MediaPlayer.TrackInfo[] trackInfoArr = null;
            try {
                trackInfoArr = this.C.getTrackInfo();
            } catch (Exception unused) {
                this.f33514a.e("getTrackInfo, android getTrackInfo crash");
            }
            if (trackInfoArr == null || trackInfoArr.length <= i12) {
                if (hVar != null) {
                    hVar.a(4, 2000L, g(-10002), Long.valueOf(j10));
                    return;
                }
                return;
            }
            MediaPlayer.TrackInfo trackInfo = trackInfoArr[i12];
            if (trackInfo.getTrackType() == 2) {
                this.f33517ac = i12;
            } else if (trackInfo.getTrackType() != 4) {
                if (hVar != null) {
                    hVar.a(4, 2000L, g((int) BaseConstants.ERR_SVR_SSO_A2_UP_INVALID), Long.valueOf(j10));
                    return;
                }
                return;
            } else {
                this.Z = i12;
            }
            this.C.selectTrack(i12);
            if (hVar != null) {
                hVar.a(4, 1000L, 0L, Long.valueOf(j10));
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor == null) {
            this.f33514a.c("setDataSource afd is null ");
            throw new IllegalArgumentException("afd is null");
        }
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("setDataSource afd， afd: " + assetFileDescriptor.toString());
        this.f33530h = assetFileDescriptor;
        b(assetFileDescriptor);
        this.E = new com.tencent.thumbplayer.a.c(assetFileDescriptor);
        EnumC0338e enumC0338e = EnumC0338e.INITIALIZED;
        this.Q = enumC0338e;
        this.R = enumC0338e;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            this.f33514a.c("setDataSource pfd is null ");
            throw new IllegalArgumentException("pfd is null");
        }
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("setDataSource pfd， pfd: " + parcelFileDescriptor.toString());
        this.f33529g = parcelFileDescriptor.getFileDescriptor();
        this.C.setDataSource(parcelFileDescriptor.getFileDescriptor());
        this.E = new com.tencent.thumbplayer.a.c(parcelFileDescriptor.getFileDescriptor());
        EnumC0338e enumC0338e = EnumC0338e.INITIALIZED;
        this.Q = enumC0338e;
        this.R = enumC0338e;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        this.f33514a.c("setSurface, surface: ".concat(String.valueOf(surface)));
        this.F = surface;
        this.C.setSurface(surface);
        this.f33514a.c("setSurface over, surface: ".concat(String.valueOf(surface)));
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        this.f33514a.c("setSurfaceHolder, sh: ".concat(String.valueOf(surfaceHolder)));
        this.F = surfaceHolder;
        this.C.setDisplay(surfaceHolder);
        this.f33514a.c("setSurfaceHolder over, sh: ".concat(String.valueOf(surfaceHolder)));
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        throw new IllegalStateException("system Mediaplayer cannot support audio postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.InterfaceC0340c interfaceC0340c) {
        this.f33544v = interfaceC0340c;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.f33546x = fVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.f33545w = hVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.f33543u = iVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.f33547y = jVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.A = lVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
        this.B = mVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        throw new IllegalStateException("system Mediaplayer cannot support video postprocess frame out");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.f33548z = pVar;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        if (this.E == null) {
            tPCaptureCallBack.onCaptureVideoFailed(TPGeneralError.UNMATCHED_STATE);
            return;
        }
        TPImageGeneratorParams tPImageGeneratorParams = new TPImageGeneratorParams();
        tPImageGeneratorParams.width = tPCaptureParams.width;
        tPImageGeneratorParams.height = tPCaptureParams.height;
        tPImageGeneratorParams.format = tPCaptureParams.format;
        tPImageGeneratorParams.requestedTimeMsToleranceBefore = tPCaptureParams.requestedTimeMsToleranceBefore;
        tPImageGeneratorParams.requestedTimeMsToleranceAfter = tPCaptureParams.requestedTimeMsToleranceAfter;
        this.E.a(n(), tPImageGeneratorParams, tPCaptureCallBack);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        int key = tPOptionalParam.getKey();
        if (key == 1) {
            this.f33538p = tPOptionalParam.getParamLong().value;
        } else if (key == 2) {
            this.f33540r = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.e.a aVar = this.f33514a;
            aVar.c("setPlayerOptionalParam, video width:" + this.f33540r);
        } else if (key == 3) {
            this.f33539q = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.e.a aVar2 = this.f33514a;
            aVar2.c("setPlayerOptionalParam, video height:" + this.f33539q);
        } else if (key == 4) {
            this.f33537o = tPOptionalParam.getParamBoolean().value;
            this.P = true;
            com.tencent.thumbplayer.e.a aVar3 = this.f33514a;
            aVar3.c("setPlayerOptionalParam, is live:" + this.f33537o);
        } else if (key == 5) {
            this.f33542t = tPOptionalParam.getParamBoolean().value;
        } else if (key == 7) {
            this.L = (int) (tPOptionalParam.getParamLong().value / 400);
            com.tencent.thumbplayer.e.a aVar4 = this.f33514a;
            aVar4.c("setPlayerOptionalParam, on buffer timeout:" + tPOptionalParam.getParamLong().value + "(ms)");
        } else if (key == 100) {
            this.f33535m = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.e.a aVar5 = this.f33514a;
            aVar5.c("setPlayerOptionalParam, start position:" + this.f33535m);
        } else if (key == 107) {
            this.M = (int) ((tPOptionalParam.getParamLong().value + 400) / 400);
            com.tencent.thumbplayer.e.a aVar6 = this.f33514a;
            aVar6.c("setPlayerOptionalParam, buffer timeout:" + tPOptionalParam.getParamLong().value + "(ms)");
        } else if (key == 128) {
            this.I = tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.e.a aVar7 = this.f33514a;
            aVar7.c("setPlayerOptionalParam, prepare timeout:" + this.I + "(ms)");
        } else if (key == 414) {
            this.f33541s = (TPAudioAttributes) tPOptionalParam.getParamObject().objectValue;
            com.tencent.thumbplayer.e.a aVar8 = this.f33514a;
            aVar8.c("setPlayerOptionalParam, " + this.f33541s.toString());
        } else if (key == 450) {
            int i9 = (int) tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.adapter.a.a.a aVar9 = this.f33520af;
            if (aVar9 != null) {
                aVar9.a(i9);
            }
            TPLogUtil.i("TPSystemMediaPlayer", "setPlayerOptionalParam, subtitle type:" + tPOptionalParam.getParamLong().value);
        } else if (key == 500) {
            this.f33536n = tPOptionalParam.getParamLong().value;
            com.tencent.thumbplayer.e.a aVar10 = this.f33514a;
            aVar10.c("setPlayerOptionalParam, skip end position:" + this.f33536n);
        } else if (key != 507) {
        } else {
            TPSubtitleRenderModel tPSubtitleRenderModel = (TPSubtitleRenderModel) tPOptionalParam.getParamObject().objectValue;
            com.tencent.thumbplayer.adapter.a.a.a aVar11 = this.f33520af;
            if (aVar11 != null) {
                aVar11.a(tPSubtitleRenderModel);
            }
            TPLogUtil.i("TPSystemMediaPlayer", "setPlayerOptionalParam, subtitle render model");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        throw new IllegalArgumentException("setDataSource by asset, android mediaplayer not support");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(com.tencent.thumbplayer.e.b bVar) {
        this.f33514a.a(new com.tencent.thumbplayer.e.b(bVar, "TPSystemMediaPlayer"));
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
        this.f33514a.c("setAudioNormalizeVolumeParams not supported.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
        this.f33514a.c("switchDefinition, defUrl: ".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            this.f33514a.c("switchDefinition, defUrl is null");
            return;
        }
        this.f33528f = str;
        f fVar = new f();
        fVar.f33578b = j10;
        fVar.f33580d = this.f33515aa;
        fVar.f33577a = 1;
        fVar.f33583g = str;
        try {
            a(fVar);
        } catch (Exception unused) {
            throw new IllegalStateException("playerResetStart");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
        this.f33514a.c("setDataSource httpHeader, url: ".concat(String.valueOf(str)));
        this.f33528f = str;
        this.f33534l = map;
        this.C.setDataSource(this.f33524b, Uri.parse(str), this.f33534l);
        this.E = new com.tencent.thumbplayer.a.c(str);
        EnumC0338e enumC0338e = EnumC0338e.INITIALIZED;
        this.Q = enumC0338e;
        this.R = enumC0338e;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
        this.f33514a.c("switchDefinition, defUrl: ".concat(String.valueOf(str)));
        if (TextUtils.isEmpty(str)) {
            this.f33514a.c("switchDefinition, defUrl is null");
            return;
        }
        this.f33528f = str;
        f fVar = new f();
        fVar.f33578b = j10;
        fVar.f33580d = this.f33515aa;
        fVar.f33577a = 1;
        fVar.f33583g = str;
        try {
            a(fVar);
        } catch (Exception unused) {
            throw new IllegalStateException("playerResetStart");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str3)) {
            this.f33514a.e("addSubtitleSource, illegal argument.");
            return;
        }
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = str3;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.trackType = 3;
        b bVar = new b();
        bVar.f33560a = tPTrackInfo;
        bVar.f33561b = str;
        bVar.f33563d = map;
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("addSubtitleSource, name:" + tPTrackInfo.name + ", url:" + str3);
        this.f33519ae.add(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            this.f33514a.e("addAudioTrackSource, illegal argument.");
            return;
        }
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = str2;
        tPTrackInfo.isExclusive = true;
        tPTrackInfo.isInternal = false;
        tPTrackInfo.isSelected = false;
        tPTrackInfo.trackType = 2;
        b bVar = new b();
        bVar.f33560a = tPTrackInfo;
        bVar.f33561b = str;
        bVar.f33563d = map;
        bVar.f33562c = list;
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("addAudioTrackSource, name:" + tPTrackInfo.name + ", url:" + str2);
        this.f33518ad.add(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10) {
        this.f33514a.c("setOutputMute, : ".concat(String.valueOf(z10)));
        this.f33531i = z10;
        try {
            if (z10) {
                this.C.setVolume(0.0f, 0.0f);
                this.f33514a.c("setOutputMute, true");
                return;
            }
            MediaPlayer mediaPlayer = this.C;
            float f10 = this.f33532j;
            mediaPlayer.setVolume(f10, f10);
            com.tencent.thumbplayer.e.a aVar = this.f33514a;
            aVar.c("setOutputMute, false, mAudioGain: " + this.f33532j);
        } catch (Exception e10) {
            com.tencent.thumbplayer.e.a aVar2 = this.f33514a;
            aVar2.c("setOutputMute, Exception: " + e10.toString());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10, long j10, long j11) {
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("setLoopback, : " + z10 + ", loopStart: " + j10 + ", loopEnd: " + j11);
        if (j10 >= 0) {
            long j12 = this.T;
            if (j10 <= j12 && j11 <= j12) {
                this.f33525c = z10;
                this.f33526d = j10;
                this.f33527e = j11;
                this.C.setLooping(z10);
                return;
            }
        }
        throw new IllegalArgumentException("position error, must more than 0 and less than duration");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i9) {
        return -1L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f10) {
        this.f33514a.c("setPlaySpeedRatio, : ".concat(String.valueOf(f10)));
        int i9 = Build.VERSION.SDK_INT;
        if (i9 < 23) {
            com.tencent.thumbplayer.e.a aVar = this.f33514a;
            aVar.c("os version is too low: " + i9);
            return;
        }
        this.f33533k = f10;
        this.f33514a.c("setPlaySpeedRatio play speed:".concat(String.valueOf(f10)));
        try {
            PlaybackParams playbackParams = this.C.getPlaybackParams();
            if (playbackParams.getSpeed() != f10) {
                playbackParams.setSpeed(f10);
                this.C.setPlaybackParams(playbackParams);
            }
        } catch (Exception e10) {
            this.f33514a.a(e10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i9, long j10) {
        this.f33514a.c("deselectTrack, trackID ".concat(String.valueOf(i9)));
        int size = this.f33518ad.size();
        int size2 = this.f33519ae.size();
        if (i9 < size || i9 >= size2 + size) {
            this.C.deselectTrack(i9);
            return;
        }
        int i10 = i9 - size;
        try {
            f(i10, j10);
        } catch (Exception e10) {
            this.f33514a.a(e10);
        }
        this.f33519ae.get(i10).f33560a.isSelected = false;
        this.f33516ab = -1;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z10) {
        this.f33514a.c("setLoopback, : ".concat(String.valueOf(z10)));
        this.f33525c = z10;
        this.C.setLooping(z10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPDynamicStatisticParams c(boolean z10) {
        return null;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i9) {
        return null;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i9, long j10) {
        this.f33514a.e("selectProgram, android mediaplayer not support");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        if (this.R == EnumC0338e.COMPLETE) {
            this.f33514a.d("call prepare() on mMediaPlayerState==COMPLETE");
            return;
        }
        x();
        this.f33514a.c("prepare ");
        EnumC0338e enumC0338e = EnumC0338e.PREPARING;
        this.Q = enumC0338e;
        this.R = enumC0338e;
        this.C.prepare();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        x();
        this.f33514a.c("prepareAsync ");
        EnumC0338e enumC0338e = EnumC0338e.PREPARING;
        this.Q = enumC0338e;
        this.R = enumC0338e;
        this.C.prepareAsync();
        z();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        com.tencent.thumbplayer.e.a aVar;
        String str;
        this.f33514a.c("start ");
        if (this.S) {
            f fVar = this.f33522ah;
            if (fVar != null) {
                fVar.f33584h = EnumC0338e.STARTED;
            }
            aVar = this.f33514a;
            str = "system player is busy.";
        } else if (this.Q == EnumC0338e.PREPARED || this.Q == EnumC0338e.PAUSED) {
            com.tencent.thumbplayer.adapter.a.a.a aVar2 = this.f33520af;
            if (aVar2 != null) {
                aVar2.b();
            }
            this.C.start();
            EnumC0338e enumC0338e = EnumC0338e.STARTED;
            this.Q = enumC0338e;
            this.R = enumC0338e;
            float f10 = this.f33533k;
            if (f10 != 1.0d) {
                b(f10);
            }
            B();
            return;
        } else {
            aVar = this.f33514a;
            str = "start(), illegal state, state:" + this.Q;
        }
        aVar.d(str);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void i() {
        this.f33514a.c("pause ");
        if (this.S) {
            f fVar = this.f33522ah;
            if (fVar != null) {
                fVar.f33584h = EnumC0338e.PAUSED;
            }
            this.f33514a.d("system player is busy.");
            return;
        }
        com.tencent.thumbplayer.adapter.a.a.a aVar = this.f33520af;
        if (aVar != null) {
            aVar.c();
        }
        this.C.pause();
        EnumC0338e enumC0338e = EnumC0338e.PAUSED;
        this.Q = enumC0338e;
        this.R = enumC0338e;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void j() {
        this.f33514a.c("stop ");
        A();
        C();
        F();
        this.Q = EnumC0338e.STOPPED;
        c();
        this.f33515aa = 0;
        this.f33516ab = -1;
        this.f33522ah = null;
        this.Z = -1;
        this.f33517ac = -1;
        this.f33520af.d();
        this.f33521ag = 0L;
        this.f33514a.c("stop over.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void k() {
        this.f33514a.c("reset ");
        EnumC0338e enumC0338e = EnumC0338e.IDLE;
        this.Q = enumC0338e;
        this.R = enumC0338e;
        this.f33520af.e();
        this.C.reset();
        this.f33535m = 0;
        this.f33536n = -1L;
        this.f33537o = false;
        this.f33538p = -1L;
        this.f33539q = -1;
        this.f33540r = -1;
        this.f33541s = null;
        A();
        C();
        F();
        this.f33514a.c("reset over.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public synchronized void l() {
        this.f33514a.c("release ");
        this.f33520af.f();
        A();
        C();
        F();
        this.Q = EnumC0338e.RELEASE;
        e();
        this.f33543u = null;
        this.f33544v = null;
        this.f33545w = null;
        this.f33546x = null;
        this.f33547y = null;
        this.f33548z = null;
        this.A = null;
        this.F = null;
        this.f33514a.c("release over.");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        if (this.f33537o) {
            return 0L;
        }
        if (this.S) {
            return this.T;
        }
        if (this.Q == EnumC0338e.PREPARED || this.Q == EnumC0338e.STARTED || this.Q == EnumC0338e.PAUSED) {
            if (this.T <= 0) {
                this.T = this.C.getDuration();
            }
            long j10 = this.f33538p;
            if (j10 > 0) {
                long j11 = this.T;
                if (j11 <= 0) {
                    this.T = j10;
                } else {
                    long j12 = this.f33538p;
                    if ((Math.abs(j10 - j11) * 100) / j12 > 1) {
                        this.T = j12;
                    }
                }
            }
            return this.T;
        }
        return -1L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        int i9;
        if (this.f33537o) {
            return 0L;
        }
        if (this.S || this.Q == EnumC0338e.ERROR) {
            long j10 = this.U;
            if (j10 != -1) {
                return j10;
            }
        } else if (this.Q != EnumC0338e.IDLE && this.Q != EnumC0338e.INITIALIZED && this.Q != EnumC0338e.PREPARING && this.Q != EnumC0338e.STOPPED && this.Q != EnumC0338e.PREPARED) {
            i9 = this.C.getCurrentPosition();
            return i9;
        }
        i9 = this.f33535m;
        return i9;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        return 0L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("getVideoWidth, width:" + this.V);
        return this.V;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        com.tencent.thumbplayer.e.a aVar = this.f33514a;
        aVar.c("getVideoHeight, height:" + this.W);
        return this.W;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f A[LOOP:0: B:27:0x0059->B:29:0x005f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0079 A[LOOP:1: B:31:0x0073->B:33:0x0079, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0090 A[LOOP:2: B:39:0x008e->B:40:0x0090, LOOP_END] */
    @Override // com.tencent.thumbplayer.adapter.a.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.thumbplayer.api.TPTrackInfo[] r() {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.adapter.a.a.e.r():com.tencent.thumbplayer.api.TPTrackInfo[]");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        return new TPProgramInfo[0];
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        return -1L;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPGeneralPlayFlowParams u() {
        return null;
    }
}
