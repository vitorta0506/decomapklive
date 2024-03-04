package com.tencent.liteav.txcvodplayer;

import android.content.Context;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.FrameLayout;
import androidx.webkit.ProxyConfig;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.d;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcplayer.f;
import com.tencent.liteav.txcvodplayer.renderer.SurfaceRenderView;
import com.tencent.liteav.txcvodplayer.renderer.TextureRenderView;
import com.tencent.liteav.txcvodplayer.renderer.a;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPTrackInfo;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class TXCVodVideoView extends FrameLayout {
    private int A;
    private int B;
    private String C;
    private float D;
    private long E;
    private volatile boolean F;
    private int G;
    private int H;
    private boolean I;
    private int J;
    private int K;
    private boolean L;
    private ITXVCubePlayer.b M;
    private ITXVCubePlayer.d N;
    private ITXVCubePlayer.h O;
    private int P;
    private ITXVCubePlayer.e Q;
    private ITXVCubePlayer.g R;
    private ITXVCubePlayer.l S;
    private ITXVCubePlayer.j T;
    private ITXVCubePlayer.k U;
    private ITXVCubePlayer.f V;
    private ITXVCubePlayer.b W;

    /* renamed from: a  reason: collision with root package name */
    public int f31410a;

    /* renamed from: aa  reason: collision with root package name */
    private int f31411aa;

    /* renamed from: ab  reason: collision with root package name */
    private d f31412ab;

    /* renamed from: ac  reason: collision with root package name */
    private boolean f31413ac;

    /* renamed from: b  reason: collision with root package name */
    public int f31414b;

    /* renamed from: c  reason: collision with root package name */
    public ITXVCubePlayer f31415c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f31416d;

    /* renamed from: e  reason: collision with root package name */
    protected final int f31417e;

    /* renamed from: f  reason: collision with root package name */
    public Object f31418f;

    /* renamed from: g  reason: collision with root package name */
    public List<b> f31419g;

    /* renamed from: h  reason: collision with root package name */
    ITXVCubePlayer.m f31420h;

    /* renamed from: i  reason: collision with root package name */
    ITXVCubePlayer.i f31421i;

    /* renamed from: j  reason: collision with root package name */
    a.InterfaceC0327a f31422j;

    /* renamed from: k  reason: collision with root package name */
    public Handler f31423k;

    /* renamed from: l  reason: collision with root package name */
    private a.b f31424l;

    /* renamed from: m  reason: collision with root package name */
    private int f31425m;

    /* renamed from: n  reason: collision with root package name */
    private int f31426n;

    /* renamed from: o  reason: collision with root package name */
    private int f31427o;

    /* renamed from: p  reason: collision with root package name */
    private int f31428p;

    /* renamed from: q  reason: collision with root package name */
    private int f31429q;

    /* renamed from: r  reason: collision with root package name */
    private int f31430r;

    /* renamed from: s  reason: collision with root package name */
    private long f31431s;

    /* renamed from: t  reason: collision with root package name */
    private long f31432t;

    /* renamed from: u  reason: collision with root package name */
    private int f31433u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f31434v;

    /* renamed from: w  reason: collision with root package name */
    private Context f31435w;

    /* renamed from: x  reason: collision with root package name */
    private e f31436x;

    /* renamed from: y  reason: collision with root package name */
    private Map<String, Object> f31437y;

    /* renamed from: z  reason: collision with root package name */
    private com.tencent.liteav.txcvodplayer.renderer.a f31438z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<TXCVodVideoView> f31454a;

        /* renamed from: b  reason: collision with root package name */
        private final int f31455b;

        /* renamed from: c  reason: collision with root package name */
        private final String f31456c;

        public a(TXCVodVideoView tXCVodVideoView, Looper looper) {
            super(looper);
            this.f31455b = 500;
            this.f31456c = "TXCVodeVideoView_Eventhandler";
            this.f31454a = new WeakReference<>(tXCVodVideoView);
        }

        private void a(TXCVodVideoView tXCVodVideoView, boolean z10) {
            if (tXCVodVideoView == null || tXCVodVideoView.f31412ab == null) {
                return;
            }
            long currentPosition = tXCVodVideoView.getCurrentPosition();
            Bundle bundle = new Bundle();
            long bufferDuration = tXCVodVideoView.getBufferDuration();
            long duration = tXCVodVideoView.getDuration();
            if (z10) {
                currentPosition = duration;
            }
            bundle.putInt("EVT_PLAY_PROGRESS", (int) (currentPosition / 1000));
            bundle.putInt("EVT_PLAY_DURATION", (int) (duration / 1000));
            bundle.putInt(TXVodConstants.EVT_PLAYABLE_DURATION, (int) (bufferDuration / 1000));
            bundle.putInt("EVT_PLAY_PROGRESS_MS", (int) currentPosition);
            bundle.putInt("EVT_PLAY_DURATION_MS", (int) duration);
            bundle.putInt("EVT_PLAYABLE_DURATION_MS", (int) bufferDuration);
            if (tXCVodVideoView.f31415c != null) {
                bundle.putFloat("EVT_PLAYABLE_RATE", tXCVodVideoView.f31415c.getRate());
            }
            tXCVodVideoView.f31412ab.a(2005, bundle);
            if (tXCVodVideoView.f31415c != null) {
                if (tXCVodVideoView.f31436x.f31370l <= 0) {
                    tXCVodVideoView.f31436x.f31370l = 500;
                }
                removeMessages(103);
                if (z10) {
                    return;
                }
                sendEmptyMessageDelayed(103, tXCVodVideoView.f31436x.f31370l);
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            TXCVodVideoView tXCVodVideoView = this.f31454a.get();
            if (tXCVodVideoView == null || tXCVodVideoView.f31412ab == null) {
                return;
            }
            switch (message.what) {
                case 100:
                    if (tXCVodVideoView.f31415c == null) {
                        return;
                    }
                    try {
                        float propertyLong = (float) tXCVodVideoView.f31415c.getPropertyLong(206);
                        long currentPosition = tXCVodVideoView.f31415c.getCurrentPosition();
                        float propertyLong2 = currentPosition > 0 ? (float) ((tXCVodVideoView.f31415c.getPropertyLong(208) * 1000) / currentPosition) : 0.0f;
                        long propertyLong3 = tXCVodVideoView.f31415c.getPropertyLong(302);
                        long propertyLong4 = tXCVodVideoView.f31415c.getPropertyLong(301);
                        long propertyLong5 = tXCVodVideoView.f31415c.getPropertyLong(303);
                        Bundle bundle = new Bundle();
                        bundle.putFloat("fps", propertyLong);
                        bundle.putFloat("dps", propertyLong2);
                        bundle.putLong("cachedBytes", propertyLong3);
                        bundle.putLong("bitRate", propertyLong4);
                        bundle.putLong("tcpSpeed", propertyLong5);
                        tXCVodVideoView.f31412ab.a(bundle);
                        removeMessages(100);
                        sendEmptyMessageDelayed(100, 500L);
                        return;
                    } catch (Exception e10) {
                        LiteavLog.e("TXCVodeVideoView_Eventhandler", "MSG_UPDATE_NET_STATUS exception : " + e10.getMessage());
                        return;
                    }
                case 101:
                    int i9 = message.arg1;
                    if (i9 == 2006) {
                        a(tXCVodVideoView, true);
                    } else if (i9 == 2013) {
                        LiteavLog.i("TXCVodeVideoView_Eventhandler", "TXCVodVideoView handleMessage:MSG_PLAY_EVENT:EVT_VOD_PLAY_PREPARED");
                    }
                    tXCVodVideoView.f31412ab.a(i9, message.getData());
                    return;
                case 102:
                    tXCVodVideoView.c(true);
                    tXCVodVideoView.a(2103, "VOD network reconnected", "reconnect");
                    return;
                case 103:
                    a(tXCVodVideoView, false);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f31457a;

        /* renamed from: b  reason: collision with root package name */
        public String f31458b;

        /* renamed from: c  reason: collision with root package name */
        public String f31459c;

        public b(String str, String str2, String str3) {
            this.f31457a = str;
            this.f31458b = str2;
            this.f31459c = str3;
        }
    }

    public TXCVodVideoView(Context context) {
        super(context);
        this.f31410a = 0;
        this.f31414b = 0;
        this.f31424l = null;
        this.f31415c = null;
        this.f31434v = false;
        this.D = 1.0f;
        this.f31416d = true;
        this.f31417e = 2;
        this.F = false;
        this.G = -1;
        this.H = 100;
        this.I = false;
        this.J = -1000;
        this.K = -1;
        this.f31418f = null;
        this.f31420h = new ITXVCubePlayer.m() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.m
            public final void a(ITXVCubePlayer iTXVCubePlayer, int i9, int i10, String str) {
                boolean z10 = (TXCVodVideoView.this.f31426n != i10 && Math.abs(TXCVodVideoView.this.f31426n - i10) > 16) || (TXCVodVideoView.this.f31425m != i9 && Math.abs(TXCVodVideoView.this.f31425m - i9) > 16);
                TXCVodVideoView.this.f31425m = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.f31426n = iTXVCubePlayer.getVideoHeight();
                TXCVodVideoView.this.A = iTXVCubePlayer.getVideoSarNum();
                TXCVodVideoView.this.B = iTXVCubePlayer.getVideoSarDen();
                long propertyLong = TXCVodVideoView.this.f31415c.getPropertyLong(205);
                LiteavLog.i("TXCVodVideoView", "OnVideoSizeChangedListener width:" + TXCVodVideoView.this.f31425m + ":height:" + TXCVodVideoView.this.f31426n + ":SarNum:" + TXCVodVideoView.this.A + ":SarDen:" + TXCVodVideoView.this.B + ":videoRotationDegree:" + propertyLong);
                if (TXCVodVideoView.this.f31425m != 0 && TXCVodVideoView.this.f31426n != 0) {
                    if (TXCVodVideoView.this.f31438z != null) {
                        TXCVodVideoView.this.f31438z.a(TXCVodVideoView.this.f31425m, TXCVodVideoView.this.f31426n);
                        TXCVodVideoView.this.f31438z.b(TXCVodVideoView.this.A, TXCVodVideoView.this.B);
                    }
                    TXCVodVideoView.this.requestLayout();
                }
                if (!z10) {
                    if (TXCVodVideoView.this.f31434v || str == null) {
                        return;
                    }
                    Message message = new Message();
                    message.what = 101;
                    message.arg1 = 2009;
                    Bundle bundle = new Bundle();
                    String str2 = i9 + "," + i10 + "," + str;
                    bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str2 + ")");
                    bundle.putInt("EVT_PARAM1", TXCVodVideoView.this.f31425m);
                    bundle.putInt("EVT_PARAM2", TXCVodVideoView.this.f31426n);
                    bundle.putString("EVT_PARAM3", str2);
                    bundle.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message.setData(bundle);
                    if (TXCVodVideoView.this.f31423k != null) {
                        TXCVodVideoView.this.f31423k.sendMessage(message);
                        return;
                    }
                    return;
                }
                Message message2 = new Message();
                message2.what = 101;
                message2.arg1 = 2009;
                Bundle bundle2 = new Bundle();
                bundle2.putInt("EVT_PARAM1", TXCVodVideoView.this.f31425m);
                bundle2.putInt("EVT_PARAM2", TXCVodVideoView.this.f31426n);
                if (!TXCVodVideoView.this.f31434v && str != null) {
                    String str3 = i9 + "," + i10 + "," + str;
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str3 + ")");
                    bundle2.putString("EVT_PARAM3", str3);
                } else {
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n);
                }
                bundle2.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                message2.setData(bundle2);
                if (TXCVodVideoView.this.f31423k != null) {
                    TXCVodVideoView.this.f31423k.sendMessage(message2);
                }
            }
        };
        this.f31421i = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                    LiteavLog.i("TXCVodVideoView", "setSurfaceBufferSize succeed");
                }
                if (TXCVodVideoView.this.f31410a == 1) {
                    TXCVodVideoView.this.a(2013, "VOD ready", "prepared");
                    if (!TXCVodVideoView.this.f31436x.f31374p) {
                        TXCVodVideoView.this.f31414b = 4;
                    } else if (TXCVodVideoView.this.f31414b != 4) {
                        TXCVodVideoView.this.f31414b = 3;
                    }
                    TXCVodVideoView.this.f31410a = 2;
                }
                TXCVodVideoView.l(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f31410a == -1) {
                    TXCVodVideoView.this.f31410a = 3;
                    TXCVodVideoView.this.f31414b = 3;
                }
                if (TXCVodVideoView.this.f31423k != null) {
                    TXCVodVideoView.this.f31423k.sendEmptyMessage(100);
                    TXCVodVideoView.this.f31423k.sendEmptyMessage(103);
                }
                TXCVodVideoView.this.f31425m = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.f31426n = iTXVCubePlayer.getVideoHeight();
                if (TXCVodVideoView.this.f31425m != 0 && TXCVodVideoView.this.f31426n != 0 && TXCVodVideoView.this.f31438z != null) {
                    TXCVodVideoView.this.f31438z.a(TXCVodVideoView.this.f31425m, TXCVodVideoView.this.f31426n);
                    TXCVodVideoView.this.f31438z.b(TXCVodVideoView.this.A, TXCVodVideoView.this.B);
                }
                if (TXCVodVideoView.this.f31414b == 3) {
                    TXCVodVideoView.this.a();
                }
            }
        };
        this.N = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
            public final void a() {
                TXCVodVideoView.this.f31410a = 5;
                TXCVodVideoView.this.f31414b = 5;
                TXCVodVideoView.this.a(2006, "Playback completed", "play end");
            }
        };
        this.O = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
            public final boolean a(int i9, int i10, int i11, Object obj) {
                if (i9 == 1006) {
                    if (TextUtils.isEmpty(TXCVodVideoView.this.C) && obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                        try {
                            TXCVodVideoView.this.C = new JSONObject(((TPPlayerMsg.TPDownLoadProgressInfo) obj).extraInfo).optString("cdnip");
                            return true;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return true;
                        }
                    }
                    return true;
                } else if (i9 == 2003) {
                    LiteavLog.i("TXCVodVideoView", "EVT_RENDER_FIRST_I_FRAME");
                    TXCVodVideoView.this.a(i9, "VOD displayed the first frame", "render start");
                    TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                    tXCVodVideoView.setRate(tXCVodVideoView.D);
                    TXCVodVideoView.n(TXCVodVideoView.this);
                    return true;
                } else if (i9 == 2007) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VIDEO_PLAY_LOADING");
                    TXCVodVideoView.this.a(i9, "Buffer started", "loading start");
                    return true;
                } else if (i9 == 2011) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VIDEO_CHANGE_ROTATION: ".concat(String.valueOf(i10)));
                    TXCVodVideoView.this.f31430r = i10;
                    if (TXCVodVideoView.this.f31436x.f31383y && TXCVodVideoView.this.f31430r > 0) {
                        TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                        tXCVodVideoView2.f31429q = tXCVodVideoView2.f31430r;
                        if (TXCVodVideoView.this.f31438z != null) {
                            TXCVodVideoView.this.f31438z.setVideoRotation(TXCVodVideoView.this.f31429q);
                        }
                    }
                    TXCVodVideoView.this.a(2011, "Video angle " + TXCVodVideoView.this.f31430r, "rotation " + TXCVodVideoView.this.f31430r);
                    return true;
                } else if (i9 == 2014) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VOD_PLAY_LOADING_END: eof ".concat(String.valueOf(i10)));
                    TXCVodVideoView.this.a(i9, "Buffer ended", "loading end");
                    if (i10 != 0) {
                        String str = TXCVodVideoView.this.f31436x.f31375q;
                        if (TextUtils.isEmpty(str) && str.endsWith("m3u8")) {
                            return true;
                        }
                    }
                    if (TXCVodVideoView.this.f31414b == 3) {
                        TXCVodVideoView.this.a(2004, "Playback started", "playing");
                        TXCVodVideoView.this.f31410a = 3;
                        TXCVodVideoView.this.f31423k.sendEmptyMessage(100);
                        TXCVodVideoView.this.f31423k.sendEmptyMessage(103);
                        return true;
                    }
                    return true;
                } else if (i9 == 2020) {
                    long j10 = -1;
                    if (obj != null && (obj instanceof Long)) {
                        j10 = ((Long) obj).longValue();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_INDEX, (int) j10);
                    bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_ERROR_CODE, i11);
                    bundle.putString("description", "Select Track Complete");
                    LiteavLog.i("TXCVodVideoView", "VOD_PLAY_EVT_SELECT_TRACK_COMPLETE, trackIndex=" + j10 + " ,errorCode=" + i11);
                    TXCVodVideoView.a(TXCVodVideoView.this, bundle);
                    return true;
                } else if (i9 != 2026) {
                    switch (i9) {
                        case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                            if (obj != null && (obj instanceof String)) {
                                TXCVodVideoView.this.C = (String) obj;
                            }
                            String str2 = "TCP Connect ServerIp:" + TXCVodVideoView.this.C + ",port:" + i10 + ",error:" + i11;
                            LiteavLog.i("TXCVodVideoView", str2);
                            if (i11 == 0) {
                                TXCVodVideoView.this.a(i9, str2, "tcp open");
                                return true;
                            }
                            return true;
                        case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                            TXCVodVideoView.this.a(i9, "Video data received", "first video packet");
                            return true;
                        case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                            String str3 = null;
                            if (obj != null && (obj instanceof String)) {
                                str3 = (String) obj;
                            }
                            String str4 = "dns resolved url:" + str3 + ",error:" + i10;
                            LiteavLog.i("TXCVodVideoView", str4);
                            if (i10 == 0) {
                                TXCVodVideoView.this.a(i9, str4, "dns resolved");
                                return true;
                            }
                            return true;
                        default:
                            return true;
                    }
                } else {
                    LiteavLog.i("TXCVodVideoView", "EVT_AUDIO_JITTER_STATE_FIRST_PLAY");
                    TXCVodVideoView.this.a(i9, "Audio first play", "audio start");
                    return true;
                }
            }
        };
        this.Q = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
            public final boolean a(int i9, int i10) {
                LiteavLog.e("TXCVodVideoView", "onError: " + i9 + "," + i10);
                TXCVodVideoView.this.f31410a = -1;
                TXCVodVideoView.this.f31414b = -1;
                if (i9 != -6101) {
                    if (i9 != -1010 && i9 != -1007 && i9 != -1004 && i9 != 200) {
                        if (TXCVodVideoView.this.E != TXCVodVideoView.this.getCurrentPosition()) {
                            TXCVodVideoView.u(TXCVodVideoView.this);
                        }
                        TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                        tXCVodVideoView.E = tXCVodVideoView.getCurrentPosition();
                        if (TXCVodVideoView.v(TXCVodVideoView.this) < TXCVodVideoView.this.f31436x.f31359a) {
                            if (TXCVodVideoView.this.f31423k != null) {
                                TXCVodVideoView.this.f31423k.sendEmptyMessageDelayed(102, TXCVodVideoView.this.f31436x.f31360b * 1000.0f);
                            }
                        } else {
                            TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                            TXCVodVideoView.this.b();
                        }
                        return true;
                    }
                    if (i10 == -2303) {
                        TXCVodVideoView.this.a(i10, "The file does not exist", "file not exist");
                    } else {
                        TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                    }
                    TXCVodVideoView.this.b();
                    return true;
                }
                if (TXCVodVideoView.this.f31437y != null) {
                    Object obj = TXCVodVideoView.this.f31437y.get("TXC_DRM_SIMPLE_AES_URL");
                    if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                        TXCVodVideoView.this.f31437y.put("TXC_DRM_KEY_URL", null);
                        TXCVodVideoView.this.f31437y.put("TXC_DRM_PROVISION_URL", null);
                        if (!TXCVodVideoView.this.e()) {
                            TXCVodVideoView.this.a(false);
                        }
                        return true;
                    }
                }
                TXCVodVideoView.this.a(-6101, "DRM play failed cause by " + i10 + ".", "DRM play failed cause by " + i10 + ".");
                return true;
            }
        };
        this.R = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
            public final void a() {
                LiteavLog.d("TXCVodVideoView", "onHevcVideoDecoderError");
                TXCVodVideoView.this.a(-2304, "Vod H265 decoding failed", "hevc decode fail");
            }
        };
        this.S = new ITXVCubePlayer.l() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.14
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.l
            public final void a() {
                LiteavLog.d("TXCVodVideoView", "onVideoDecoderError");
                if (TXCVodVideoView.this.f31410a != 4) {
                    TXCVodVideoView.this.a(2106, "VOD decoding failed", "decode fail");
                }
                if (TXCVodVideoView.this.L || !TXCVodVideoView.this.f31436x.f31362d || Math.min(TXCVodVideoView.this.f31426n, TXCVodVideoView.this.f31425m) >= 1080 || !TXCVodVideoView.this.f31436x.f31362d) {
                    return;
                }
                TXCVodVideoView.this.f31436x.f31362d = false;
                TXCVodVideoView.this.c(false);
            }
        };
        this.T = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
            public final void a() {
                LiteavLog.v("TXCVodVideoView", "seek complete");
                TXCVodVideoView.y(TXCVodVideoView.this);
                TXCVodVideoView.this.a(TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, "seek complete", null);
            }
        };
        this.U = new ITXVCubePlayer.k() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
        };
        this.V = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
            public final void a() {
                LiteavLog.e("TXCVodVideoView", "onHLSKeyError");
                TXCVodVideoView.this.a(-2305, "HLS decypt key get failed", "hls key error");
                if (TXCVodVideoView.this.f31415c != null) {
                    try {
                        TXCVodVideoView.this.f31415c.stop();
                    } catch (Exception e10) {
                        LiteavLog.e("TXCVodVideoView", "onHLSKeyError stop Exception: " + e10.getMessage());
                    }
                    TXCVodVideoView.this.f31415c.release();
                    TXCVodVideoView.z(TXCVodVideoView.this);
                }
                TXCVodVideoView.this.f31410a = -1;
                TXCVodVideoView.this.f31414b = -1;
            }
        };
        this.W = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.5
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
                LiteavLog.i("TXCVodVideoView", "onReceiveSubtitleFrameData, subtitleFrameBuffer=".concat(String.valueOf(tPSubtitleFrameBuffer)));
                if (TXCVodVideoView.this.M != null) {
                    TXCVodVideoView.this.M.a(iTXVCubePlayer, tPSubtitleFrameBuffer);
                }
            }
        };
        this.f31422j = new a.InterfaceC0327a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.6
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void a(a.b bVar, int i9, int i10) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceChanged: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceChanged");
                TXCVodVideoView.this.f31427o = i9;
                TXCVodVideoView.this.f31428p = i10;
                boolean z10 = true;
                boolean z11 = TXCVodVideoView.this.f31414b == 3;
                if (TXCVodVideoView.this.f31438z.a() && (TXCVodVideoView.this.f31425m != i9 || TXCVodVideoView.this.f31426n != i10)) {
                    z10 = false;
                }
                if (TXCVodVideoView.this.f31415c != null && z11 && z10 && TXCVodVideoView.this.f31414b == 3) {
                    TXCVodVideoView.this.a();
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void b(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceDestroyed: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceDestroyed");
                TXCVodVideoView.this.f31434v = false;
                TXCVodVideoView.this.f31424l = null;
                if (TXCVodVideoView.this.f31415c != null) {
                    TXCVodVideoView.this.f31415c.setSurface(null);
                }
                ITXVCubePlayer iTXVCubePlayer = TXCVodVideoView.this.f31415c;
                if (iTXVCubePlayer != null) {
                    iTXVCubePlayer.setDisplay(null);
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void a(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceCreated: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceCreated");
                TXCVodVideoView.this.f31434v = true;
                TXCVodVideoView.this.f31424l = bVar;
                if (TXCVodVideoView.this.f31415c != null) {
                    TXCVodVideoView.b(TXCVodVideoView.this.f31415c, bVar);
                } else {
                    TXCVodVideoView.this.e();
                }
            }
        };
        this.f31411aa = 0;
        this.f31413ac = false;
        a(context);
    }

    static /* synthetic */ long l(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.f31432t = 0L;
        return 0L;
    }

    static /* synthetic */ boolean n(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.L = true;
        return true;
    }

    static /* synthetic */ int u(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.P = 0;
        return 0;
    }

    static /* synthetic */ int v(TXCVodVideoView tXCVodVideoView) {
        int i9 = tXCVodVideoView.P;
        tXCVodVideoView.P = i9 + 1;
        return i9;
    }

    static /* synthetic */ boolean y(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.F = false;
        return false;
    }

    static /* synthetic */ ITXVCubePlayer z(TXCVodVideoView tXCVodVideoView) {
        tXCVodVideoView.f31415c = null;
        return null;
    }

    public int getBitrateIndex() {
        int i9 = this.J;
        if (i9 == -1) {
            return i9;
        }
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            this.J = iTXVCubePlayer.getBitrateIndex();
        }
        return this.J;
    }

    public long getBufferDuration() {
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            long playableDurationMs = iTXVCubePlayer.getPlayableDurationMs();
            long currentPosition = getCurrentPosition();
            if (this.f31410a == 3) {
                this.f31431s = currentPosition;
            }
            if (playableDurationMs < currentPosition) {
                playableDurationMs = currentPosition;
            }
            return Math.abs(((long) getDuration()) - playableDurationMs) < 1000 ? getDuration() : playableDurationMs;
        }
        return 0L;
    }

    public long getCurrentPosition() {
        int i9;
        if (!this.F || (i9 = this.G) < 0) {
            long j10 = this.f31432t;
            if (j10 <= 0) {
                ITXVCubePlayer iTXVCubePlayer = this.f31415c;
                j10 = iTXVCubePlayer != null ? iTXVCubePlayer.getCurrentPosition() : 0L;
            }
            if (this.f31436x.f31367i) {
                return j10;
            }
            int i10 = this.G;
            return j10 < ((long) i10) ? i10 : j10;
        }
        return i9;
    }

    public int getDuration() {
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null && this.f31433u <= 0) {
            this.f31433u = (int) iTXVCubePlayer.getDuration();
        }
        return this.f31433u;
    }

    public com.tencent.liteav.txcplayer.model.b getMediaInfo() {
        try {
            ITXVCubePlayer iTXVCubePlayer = this.f31415c;
            if (iTXVCubePlayer == null) {
                return null;
            }
            return iTXVCubePlayer.getMediaInfo();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public int getMetaRotationDegree() {
        return this.f31430r;
    }

    public int getPlayerType() {
        return 2;
    }

    public String getServerIp() {
        return this.C;
    }

    public ArrayList<com.tencent.liteav.txcplayer.model.a> getSupportedBitrates() {
        try {
            ITXVCubePlayer iTXVCubePlayer = this.f31415c;
            if (iTXVCubePlayer != null) {
                return iTXVCubePlayer.getSupportedBitrates();
            }
            return new ArrayList<>();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList<>();
        }
    }

    public TPTrackInfo[] getTrackInfo() {
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            return iTXVCubePlayer.getTrackInfo();
        }
        return null;
    }

    String getUrlPathExtention() {
        String str = this.f31436x.f31375q;
        return !TextUtils.isEmpty(str) ? str.substring(str.lastIndexOf(".") + 1, str.length()) : "";
    }

    public int getVideoHeight() {
        return this.f31426n;
    }

    public int getVideoRotationDegree() {
        return this.f31429q;
    }

    public int getVideoWidth() {
        return this.f31425m;
    }

    public void setAudioPlayoutVolume(int i9) {
        if (i9 > 0) {
            this.H = i9;
        }
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setAudioVolume(i9);
        }
    }

    public void setAutoPlay(boolean z10) {
        this.f31436x.f31374p = z10;
    }

    public void setBitrateIndex(int i9) {
        LiteavLog.i("TXCVodVideoView", "setBitrateIndex " + i9 + " vod=" + hashCode());
        if (getBitrateIndex() == i9 || i9 == -1000) {
            return;
        }
        this.J = i9;
        if (this.f31410a == 5) {
            return;
        }
        try {
            ArrayList<com.tencent.liteav.txcplayer.model.a> supportedBitrates = getSupportedBitrates();
            if (supportedBitrates != null && supportedBitrates.size() > 0 && i9 != -1) {
                Iterator<com.tencent.liteav.txcplayer.model.a> it = supportedBitrates.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    com.tencent.liteav.txcplayer.model.a next = it.next();
                    if (next != null && next.f31386a == i9) {
                        this.K = next.f31389d;
                        break;
                    }
                }
            }
            ITXVCubePlayer iTXVCubePlayer = this.f31415c;
            if (iTXVCubePlayer != null) {
                if (this.f31436x.f31368j && i9 != -1 && iTXVCubePlayer.getBitrateIndex() != -1) {
                    this.f31415c.setBitrateIndex(i9);
                } else {
                    c(false);
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void setConfig(e eVar) {
        e eVar2 = this.f31436x;
        String str = eVar2 != null ? eVar2.f31375q : null;
        if (eVar != null) {
            this.f31436x = eVar;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f31436x.f31375q = str;
        }
    }

    public void setListener(d dVar) {
        this.f31412ab = dVar;
    }

    public void setMute(boolean z10) {
        this.I = z10;
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer == null) {
            return;
        }
        if (z10) {
            iTXVCubePlayer.setAudioVolume(0);
        } else {
            iTXVCubePlayer.setAudioVolume(this.H);
        }
    }

    public void setPlayerType(int i9) {
    }

    public void setPrivateConfig(Map<String, Object> map) {
        this.f31437y = map;
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setPrivateConfig(map);
        }
    }

    public void setRate(float f10) {
        LiteavLog.i("TXCVodVideoView", "setRate ".concat(String.valueOf(f10)));
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setRate(f10);
        }
        this.D = f10;
    }

    public void setRender(int i9) {
        if (i9 == 0) {
            setRenderView(null);
        } else if (i9 == 1) {
            setRenderView(new SurfaceRenderView(this.f31435w));
        } else if (i9 != 2) {
            LiteavLog.e("TXCVodVideoView", String.format(Locale.getDefault(), "invalid render %d\n", Integer.valueOf(i9)));
        } else {
            TextureRenderView textureRenderView = new TextureRenderView(this.f31435w);
            if (this.f31415c != null) {
                textureRenderView.getSurfaceHolder().a(this.f31415c);
                textureRenderView.a(this.f31415c.getVideoWidth(), this.f31415c.getVideoHeight());
                textureRenderView.b(this.f31415c.getVideoSarNum(), this.f31415c.getVideoSarDen());
                textureRenderView.setAspectRatio(this.f31411aa);
            }
            setRenderView(textureRenderView);
        }
    }

    public void setRenderMode(int i9) {
        this.f31411aa = i9;
        com.tencent.liteav.txcvodplayer.renderer.a aVar = this.f31438z;
        if (aVar != null) {
            aVar.setAspectRatio(i9);
        }
        com.tencent.liteav.txcvodplayer.renderer.a aVar2 = this.f31438z;
        if (aVar2 != null) {
            aVar2.setVideoRotation(this.f31429q);
        }
    }

    public void setRenderSurface(final Surface surface) {
        a.b bVar = new a.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.1
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                iTXVCubePlayer.setSurface(surface);
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final Surface b() {
                return null;
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final Surface c() {
                return surface;
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.b
            public final com.tencent.liteav.txcvodplayer.renderer.a a() {
                return TXCVodVideoView.this.f31438z;
            }
        };
        this.f31424l = bVar;
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            b(iTXVCubePlayer, bVar);
        }
    }

    public void setRenderView(com.tencent.liteav.txcvodplayer.renderer.a aVar) {
        int i9;
        int i10;
        LiteavLog.i("TXCVodVideoView", "setRenderView ".concat(String.valueOf(aVar)));
        if (this.f31438z != null) {
            ITXVCubePlayer iTXVCubePlayer = this.f31415c;
            if (iTXVCubePlayer != null) {
                iTXVCubePlayer.setDisplay(null);
            }
            View view = this.f31438z.getView();
            this.f31438z.b(this.f31422j);
            this.f31438z = null;
            if (view.getParent() == this) {
                removeView(view);
            }
        }
        if (aVar == null) {
            return;
        }
        this.f31438z = aVar;
        aVar.setAspectRatio(this.f31411aa);
        int i11 = this.f31425m;
        if (i11 > 0 && (i10 = this.f31426n) > 0) {
            aVar.a(i11, i10);
        }
        int i12 = this.A;
        if (i12 > 0 && (i9 = this.B) > 0) {
            aVar.b(i12, i9);
        }
        View view2 = this.f31438z.getView();
        view2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        if (view2.getParent() == null) {
            addView(view2);
        }
        this.f31438z.a(this.f31422j);
        this.f31438z.setVideoRotation(this.f31429q);
    }

    public void setStartTime(float f10) {
        this.f31432t = f10 * 1000.0f;
    }

    public void setTXCOnSubtitleFrameDataListener(ITXVCubePlayer.b bVar) {
        this.M = bVar;
    }

    public void setTextureRenderView(TextureRenderView textureRenderView) {
        LiteavLog.i("TXCVodVideoView", "setTextureRenderView ".concat(String.valueOf(textureRenderView)));
        if (this.f31415c != null) {
            textureRenderView.getSurfaceHolder().a(this.f31415c);
            textureRenderView.a(this.f31415c.getVideoWidth(), this.f31415c.getVideoHeight());
            textureRenderView.b(this.f31415c.getVideoSarNum(), this.f31415c.getVideoSarDen());
            textureRenderView.setAspectRatio(this.f31411aa);
        }
        setRenderView(textureRenderView);
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoRotationDegree(int i9) {
        if (i9 != 0 && i9 != 90 && i9 != 180 && i9 != 270) {
            if (i9 != 360) {
                LiteavLog.e("TXCVodVideoView", "not support degree ".concat(String.valueOf(i9)));
                return;
            }
            i9 = 0;
        }
        this.f31429q = i9;
        com.tencent.liteav.txcvodplayer.renderer.a aVar = this.f31438z;
        if (aVar != null) {
            aVar.setVideoRotation(i9);
        }
        com.tencent.liteav.txcvodplayer.renderer.a aVar2 = this.f31438z;
        if (aVar2 != null) {
            aVar2.setAspectRatio(this.f31411aa);
        }
    }

    public void setVideoURI(Uri uri) {
        if (uri != null) {
            this.f31436x.f31375q = uri.toString();
        }
        this.f31433u = 0;
        this.G = -1;
        this.P = 0;
        this.C = null;
        LiteavLog.i("TXCVodVideoView", "setVideoURI ".concat(String.valueOf(uri)));
        e();
        requestLayout();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ITXVCubePlayer iTXVCubePlayer, a.b bVar) {
        if (iTXVCubePlayer == null) {
            return;
        }
        if (bVar == null) {
            iTXVCubePlayer.setDisplay(null);
            return;
        }
        LiteavLog.i("TXCVodVideoView", "bindSurfaceHolder");
        Surface c10 = bVar.c();
        if (c10 == null) {
            c10 = bVar.b();
        }
        if (RenderProcessService.getInstance().connectPlayer(iTXVCubePlayer, c10)) {
            return;
        }
        bVar.a(iTXVCubePlayer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(boolean r6) {
        /*
            r5 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "replay, isFromErrorState = "
            r0.<init>(r1)
            r0.append(r6)
            java.lang.String r1 = " vod="
            r0.append(r1)
            int r1 = r5.hashCode()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "TXCVodVideoView"
            com.tencent.liteav.base.util.LiteavLog.i(r1, r0)
            r0 = 0
            if (r6 == 0) goto L2c
            long r2 = r5.f31431s
            int r6 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r6 <= 0) goto L2c
            r5.f31432t = r2
            goto L4c
        L2c:
            long r2 = r5.f31432t
            int r6 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r6 != 0) goto L4c
            com.tencent.liteav.txcplayer.ITXVCubePlayer r6 = r5.f31415c
            if (r6 == 0) goto L4c
            int r0 = r5.f31433u
            if (r0 <= 0) goto L4c
            long r0 = r6.getCurrentPosition()
            int r6 = (int) r0
            long r0 = (long) r6
            r5.f31432t = r0
            int r6 = r5.G
            long r2 = (long) r6
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 >= 0) goto L4c
            long r0 = (long) r6
            r5.f31432t = r0
        L4c:
            boolean r6 = r5.e()
            if (r6 != 0) goto L56
            r6 = 0
            r5.a(r6)
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcvodplayer.TXCVodVideoView.c(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        LiteavLog.i("TXCVodVideoView", "openVideo vod=" + hashCode());
        if (TextUtils.isEmpty(this.f31436x.f31375q)) {
            return false;
        }
        a(false);
        if (this.f31416d) {
            ((AudioManager) this.f31435w.getSystemService("audio")).requestAudioFocus(null, 3, 2);
        }
        try {
            ITXVCubePlayer a10 = f.a(this.f31435w);
            this.f31415c = a10;
            Object obj = this.f31418f;
            if (obj != null && a10 != null) {
                a10.attachTRTC(obj);
            }
            String str = this.f31436x.f31375q;
            if (str.startsWith(FileUtils.RES_PREFIX_STORAGE)) {
                if (!new File(str.contains(".hls") ? str.substring(0, str.indexOf(".hls") + 4) : str).exists()) {
                    throw new FileNotFoundException();
                }
            }
            e eVar = this.f31436x;
            eVar.f31373o = this.f31432t;
            int i9 = this.K;
            if (i9 >= 0) {
                eVar.f31376r = i9;
            }
            int i10 = this.J;
            if (i10 == -1) {
                eVar.f31381w = true;
            } else {
                eVar.f31381w = false;
            }
            if (i10 == -1) {
                this.f31415c.enableAdaptiveBitrate();
            } else if (i10 != -1000) {
                this.f31415c.setBitrateIndex(i10);
            }
            this.f31415c.setConfig(this.f31436x);
            this.f31415c.setPrivateConfig(this.f31437y);
            if (this.f31436x.f31366h != null) {
                this.f31415c.setDataSource(this.f31435w, Uri.parse(str), this.f31436x.f31366h);
            } else {
                this.f31415c.setDataSource(str);
            }
            List<b> list = this.f31419g;
            if (list != null && !list.isEmpty()) {
                for (b bVar : this.f31419g) {
                    this.f31415c.addSubtitleSource(bVar.f31457a, bVar.f31458b, bVar.f31459c);
                }
            }
            this.f31415c.setOnPreparedListener(this.f31421i);
            this.f31415c.setOnVideoSizeChangedListener(this.f31420h);
            this.f31415c.setOnCompletionListener(this.N);
            this.f31415c.setOnErrorListener(this.Q);
            this.f31415c.setOnInfoListener(this.O);
            this.f31415c.setOnSeekCompleteListener(this.T);
            this.f31415c.setOnTimedTextListener(this.U);
            this.f31415c.setOnHLSKeyErrorListener(this.V);
            this.f31415c.setOnHevcVideoDecoderErrorListener(this.R);
            this.f31415c.setOnVideoDecoderErrorListener(this.S);
            this.f31415c.setOnGetTXCVodVideoViewTargetState(new ITXVCubePlayer.a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.7
                @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.a
                public final int a() {
                    return TXCVodVideoView.this.f31414b;
                }
            });
            this.f31415c.setOnSubtitleFrameDataListener(this.W);
            b(this.f31415c, this.f31424l);
            this.f31415c.setAudioStreamType(3);
            this.f31415c.setScreenOnWhilePlaying(true);
            this.f31415c.prepareAsync();
            this.f31415c.setAudioVolume(this.H);
            setMute(this.I);
            this.f31410a = 1;
        } catch (FileNotFoundException unused) {
            this.f31410a = -1;
            this.f31414b = -1;
            this.Q.a(-1004, -2303);
        } catch (Exception e10) {
            LiteavLog.w("TXCVodVideoView", Log.getStackTraceString(e10));
            this.f31410a = -1;
            this.f31414b = -1;
            this.Q.a(1, 0);
        }
        return true;
    }

    private void f() {
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.setOnPreparedListener(null);
            this.f31415c.setOnVideoSizeChangedListener(null);
            this.f31415c.setOnCompletionListener(null);
            this.f31415c.setOnErrorListener(null);
            this.f31415c.setOnInfoListener(null);
            this.f31415c.setOnBufferingUpdateListener(null);
            this.f31415c.setOnSeekCompleteListener(null);
            this.f31415c.setOnTimedTextListener(null);
            this.f31415c.setOnHLSKeyErrorListener(null);
            this.f31415c.setOnHevcVideoDecoderErrorListener(null);
            this.f31415c.setOnVideoDecoderErrorListener(null);
            this.f31415c.setOnGetTXCVodVideoViewTargetState(null);
            this.f31415c.setOnSubtitleFrameDataListener(null);
        }
    }

    public final void d() {
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.publishAudioToNetwork();
        }
    }

    private void a(Context context) {
        this.f31435w = context.getApplicationContext();
        this.f31436x = new e();
        setRender(0);
        this.f31425m = 0;
        this.f31426n = 0;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f31410a = 0;
        this.f31414b = 0;
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            this.f31423k = new a(this, mainLooper);
        } else {
            this.f31423k = null;
        }
    }

    public final void b() {
        Handler handler = this.f31423k;
        if (handler != null) {
            handler.removeMessages(102);
            this.f31423k.removeMessages(100);
            this.f31423k.removeMessages(103);
        }
        ITXVCubePlayer iTXVCubePlayer = this.f31415c;
        if (iTXVCubePlayer != null) {
            try {
                iTXVCubePlayer.stop();
                a(true);
            } catch (Exception e10) {
                LiteavLog.e("TXCVodVideoView", "stop exception: " + e10.getMessage());
            }
        }
        LiteavLog.i("TXCVodVideoView", "stop vod=" + hashCode());
    }

    public final boolean c() {
        int i9;
        return (this.f31415c == null || (i9 = this.f31410a) == -1 || i9 == 0 || i9 == 1) ? false : true;
    }

    public final boolean b(boolean z10) {
        if (this.f31410a == 0) {
            this.f31416d = z10;
            return true;
        }
        return false;
    }

    final void a(boolean z10) {
        if (this.f31415c != null) {
            LiteavLog.i("TXCVodVideoView", "release player " + this.f31415c);
            a(this.f31415c);
            this.f31415c.release();
            f();
            this.f31415c = null;
            this.f31410a = 0;
            this.F = false;
            this.G = -1;
            if (z10) {
                this.f31414b = 0;
                this.f31425m = 0;
                this.f31426n = 0;
                this.D = 1.0f;
                this.L = false;
                this.J = -1000;
            }
            if (this.f31416d && LiteavSystemInfo.getSystemOSVersionInt() >= 8) {
                ((AudioManager) this.f31435w.getSystemService("audio")).abandonAudioFocus(null);
            }
            this.F = false;
            this.G = -1;
            List<b> list = this.f31419g;
            if (list != null) {
                list.clear();
            }
        }
    }

    public TXCVodVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f31410a = 0;
        this.f31414b = 0;
        this.f31424l = null;
        this.f31415c = null;
        this.f31434v = false;
        this.D = 1.0f;
        this.f31416d = true;
        this.f31417e = 2;
        this.F = false;
        this.G = -1;
        this.H = 100;
        this.I = false;
        this.J = -1000;
        this.K = -1;
        this.f31418f = null;
        this.f31420h = new ITXVCubePlayer.m() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.m
            public final void a(ITXVCubePlayer iTXVCubePlayer, int i9, int i10, String str) {
                boolean z10 = (TXCVodVideoView.this.f31426n != i10 && Math.abs(TXCVodVideoView.this.f31426n - i10) > 16) || (TXCVodVideoView.this.f31425m != i9 && Math.abs(TXCVodVideoView.this.f31425m - i9) > 16);
                TXCVodVideoView.this.f31425m = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.f31426n = iTXVCubePlayer.getVideoHeight();
                TXCVodVideoView.this.A = iTXVCubePlayer.getVideoSarNum();
                TXCVodVideoView.this.B = iTXVCubePlayer.getVideoSarDen();
                long propertyLong = TXCVodVideoView.this.f31415c.getPropertyLong(205);
                LiteavLog.i("TXCVodVideoView", "OnVideoSizeChangedListener width:" + TXCVodVideoView.this.f31425m + ":height:" + TXCVodVideoView.this.f31426n + ":SarNum:" + TXCVodVideoView.this.A + ":SarDen:" + TXCVodVideoView.this.B + ":videoRotationDegree:" + propertyLong);
                if (TXCVodVideoView.this.f31425m != 0 && TXCVodVideoView.this.f31426n != 0) {
                    if (TXCVodVideoView.this.f31438z != null) {
                        TXCVodVideoView.this.f31438z.a(TXCVodVideoView.this.f31425m, TXCVodVideoView.this.f31426n);
                        TXCVodVideoView.this.f31438z.b(TXCVodVideoView.this.A, TXCVodVideoView.this.B);
                    }
                    TXCVodVideoView.this.requestLayout();
                }
                if (!z10) {
                    if (TXCVodVideoView.this.f31434v || str == null) {
                        return;
                    }
                    Message message = new Message();
                    message.what = 101;
                    message.arg1 = 2009;
                    Bundle bundle = new Bundle();
                    String str2 = i9 + "," + i10 + "," + str;
                    bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str2 + ")");
                    bundle.putInt("EVT_PARAM1", TXCVodVideoView.this.f31425m);
                    bundle.putInt("EVT_PARAM2", TXCVodVideoView.this.f31426n);
                    bundle.putString("EVT_PARAM3", str2);
                    bundle.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message.setData(bundle);
                    if (TXCVodVideoView.this.f31423k != null) {
                        TXCVodVideoView.this.f31423k.sendMessage(message);
                        return;
                    }
                    return;
                }
                Message message2 = new Message();
                message2.what = 101;
                message2.arg1 = 2009;
                Bundle bundle2 = new Bundle();
                bundle2.putInt("EVT_PARAM1", TXCVodVideoView.this.f31425m);
                bundle2.putInt("EVT_PARAM2", TXCVodVideoView.this.f31426n);
                if (!TXCVodVideoView.this.f31434v && str != null) {
                    String str3 = i9 + "," + i10 + "," + str;
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str3 + ")");
                    bundle2.putString("EVT_PARAM3", str3);
                } else {
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n);
                }
                bundle2.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                message2.setData(bundle2);
                if (TXCVodVideoView.this.f31423k != null) {
                    TXCVodVideoView.this.f31423k.sendMessage(message2);
                }
            }
        };
        this.f31421i = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                    LiteavLog.i("TXCVodVideoView", "setSurfaceBufferSize succeed");
                }
                if (TXCVodVideoView.this.f31410a == 1) {
                    TXCVodVideoView.this.a(2013, "VOD ready", "prepared");
                    if (!TXCVodVideoView.this.f31436x.f31374p) {
                        TXCVodVideoView.this.f31414b = 4;
                    } else if (TXCVodVideoView.this.f31414b != 4) {
                        TXCVodVideoView.this.f31414b = 3;
                    }
                    TXCVodVideoView.this.f31410a = 2;
                }
                TXCVodVideoView.l(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f31410a == -1) {
                    TXCVodVideoView.this.f31410a = 3;
                    TXCVodVideoView.this.f31414b = 3;
                }
                if (TXCVodVideoView.this.f31423k != null) {
                    TXCVodVideoView.this.f31423k.sendEmptyMessage(100);
                    TXCVodVideoView.this.f31423k.sendEmptyMessage(103);
                }
                TXCVodVideoView.this.f31425m = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.f31426n = iTXVCubePlayer.getVideoHeight();
                if (TXCVodVideoView.this.f31425m != 0 && TXCVodVideoView.this.f31426n != 0 && TXCVodVideoView.this.f31438z != null) {
                    TXCVodVideoView.this.f31438z.a(TXCVodVideoView.this.f31425m, TXCVodVideoView.this.f31426n);
                    TXCVodVideoView.this.f31438z.b(TXCVodVideoView.this.A, TXCVodVideoView.this.B);
                }
                if (TXCVodVideoView.this.f31414b == 3) {
                    TXCVodVideoView.this.a();
                }
            }
        };
        this.N = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
            public final void a() {
                TXCVodVideoView.this.f31410a = 5;
                TXCVodVideoView.this.f31414b = 5;
                TXCVodVideoView.this.a(2006, "Playback completed", "play end");
            }
        };
        this.O = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
            public final boolean a(int i9, int i10, int i11, Object obj) {
                if (i9 == 1006) {
                    if (TextUtils.isEmpty(TXCVodVideoView.this.C) && obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                        try {
                            TXCVodVideoView.this.C = new JSONObject(((TPPlayerMsg.TPDownLoadProgressInfo) obj).extraInfo).optString("cdnip");
                            return true;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return true;
                        }
                    }
                    return true;
                } else if (i9 == 2003) {
                    LiteavLog.i("TXCVodVideoView", "EVT_RENDER_FIRST_I_FRAME");
                    TXCVodVideoView.this.a(i9, "VOD displayed the first frame", "render start");
                    TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                    tXCVodVideoView.setRate(tXCVodVideoView.D);
                    TXCVodVideoView.n(TXCVodVideoView.this);
                    return true;
                } else if (i9 == 2007) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VIDEO_PLAY_LOADING");
                    TXCVodVideoView.this.a(i9, "Buffer started", "loading start");
                    return true;
                } else if (i9 == 2011) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VIDEO_CHANGE_ROTATION: ".concat(String.valueOf(i10)));
                    TXCVodVideoView.this.f31430r = i10;
                    if (TXCVodVideoView.this.f31436x.f31383y && TXCVodVideoView.this.f31430r > 0) {
                        TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                        tXCVodVideoView2.f31429q = tXCVodVideoView2.f31430r;
                        if (TXCVodVideoView.this.f31438z != null) {
                            TXCVodVideoView.this.f31438z.setVideoRotation(TXCVodVideoView.this.f31429q);
                        }
                    }
                    TXCVodVideoView.this.a(2011, "Video angle " + TXCVodVideoView.this.f31430r, "rotation " + TXCVodVideoView.this.f31430r);
                    return true;
                } else if (i9 == 2014) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VOD_PLAY_LOADING_END: eof ".concat(String.valueOf(i10)));
                    TXCVodVideoView.this.a(i9, "Buffer ended", "loading end");
                    if (i10 != 0) {
                        String str = TXCVodVideoView.this.f31436x.f31375q;
                        if (TextUtils.isEmpty(str) && str.endsWith("m3u8")) {
                            return true;
                        }
                    }
                    if (TXCVodVideoView.this.f31414b == 3) {
                        TXCVodVideoView.this.a(2004, "Playback started", "playing");
                        TXCVodVideoView.this.f31410a = 3;
                        TXCVodVideoView.this.f31423k.sendEmptyMessage(100);
                        TXCVodVideoView.this.f31423k.sendEmptyMessage(103);
                        return true;
                    }
                    return true;
                } else if (i9 == 2020) {
                    long j10 = -1;
                    if (obj != null && (obj instanceof Long)) {
                        j10 = ((Long) obj).longValue();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_INDEX, (int) j10);
                    bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_ERROR_CODE, i11);
                    bundle.putString("description", "Select Track Complete");
                    LiteavLog.i("TXCVodVideoView", "VOD_PLAY_EVT_SELECT_TRACK_COMPLETE, trackIndex=" + j10 + " ,errorCode=" + i11);
                    TXCVodVideoView.a(TXCVodVideoView.this, bundle);
                    return true;
                } else if (i9 != 2026) {
                    switch (i9) {
                        case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                            if (obj != null && (obj instanceof String)) {
                                TXCVodVideoView.this.C = (String) obj;
                            }
                            String str2 = "TCP Connect ServerIp:" + TXCVodVideoView.this.C + ",port:" + i10 + ",error:" + i11;
                            LiteavLog.i("TXCVodVideoView", str2);
                            if (i11 == 0) {
                                TXCVodVideoView.this.a(i9, str2, "tcp open");
                                return true;
                            }
                            return true;
                        case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                            TXCVodVideoView.this.a(i9, "Video data received", "first video packet");
                            return true;
                        case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                            String str3 = null;
                            if (obj != null && (obj instanceof String)) {
                                str3 = (String) obj;
                            }
                            String str4 = "dns resolved url:" + str3 + ",error:" + i10;
                            LiteavLog.i("TXCVodVideoView", str4);
                            if (i10 == 0) {
                                TXCVodVideoView.this.a(i9, str4, "dns resolved");
                                return true;
                            }
                            return true;
                        default:
                            return true;
                    }
                } else {
                    LiteavLog.i("TXCVodVideoView", "EVT_AUDIO_JITTER_STATE_FIRST_PLAY");
                    TXCVodVideoView.this.a(i9, "Audio first play", "audio start");
                    return true;
                }
            }
        };
        this.Q = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
            public final boolean a(int i9, int i10) {
                LiteavLog.e("TXCVodVideoView", "onError: " + i9 + "," + i10);
                TXCVodVideoView.this.f31410a = -1;
                TXCVodVideoView.this.f31414b = -1;
                if (i9 != -6101) {
                    if (i9 != -1010 && i9 != -1007 && i9 != -1004 && i9 != 200) {
                        if (TXCVodVideoView.this.E != TXCVodVideoView.this.getCurrentPosition()) {
                            TXCVodVideoView.u(TXCVodVideoView.this);
                        }
                        TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                        tXCVodVideoView.E = tXCVodVideoView.getCurrentPosition();
                        if (TXCVodVideoView.v(TXCVodVideoView.this) < TXCVodVideoView.this.f31436x.f31359a) {
                            if (TXCVodVideoView.this.f31423k != null) {
                                TXCVodVideoView.this.f31423k.sendEmptyMessageDelayed(102, TXCVodVideoView.this.f31436x.f31360b * 1000.0f);
                            }
                        } else {
                            TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                            TXCVodVideoView.this.b();
                        }
                        return true;
                    }
                    if (i10 == -2303) {
                        TXCVodVideoView.this.a(i10, "The file does not exist", "file not exist");
                    } else {
                        TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                    }
                    TXCVodVideoView.this.b();
                    return true;
                }
                if (TXCVodVideoView.this.f31437y != null) {
                    Object obj = TXCVodVideoView.this.f31437y.get("TXC_DRM_SIMPLE_AES_URL");
                    if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                        TXCVodVideoView.this.f31437y.put("TXC_DRM_KEY_URL", null);
                        TXCVodVideoView.this.f31437y.put("TXC_DRM_PROVISION_URL", null);
                        if (!TXCVodVideoView.this.e()) {
                            TXCVodVideoView.this.a(false);
                        }
                        return true;
                    }
                }
                TXCVodVideoView.this.a(-6101, "DRM play failed cause by " + i10 + ".", "DRM play failed cause by " + i10 + ".");
                return true;
            }
        };
        this.R = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
            public final void a() {
                LiteavLog.d("TXCVodVideoView", "onHevcVideoDecoderError");
                TXCVodVideoView.this.a(-2304, "Vod H265 decoding failed", "hevc decode fail");
            }
        };
        this.S = new ITXVCubePlayer.l() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.14
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.l
            public final void a() {
                LiteavLog.d("TXCVodVideoView", "onVideoDecoderError");
                if (TXCVodVideoView.this.f31410a != 4) {
                    TXCVodVideoView.this.a(2106, "VOD decoding failed", "decode fail");
                }
                if (TXCVodVideoView.this.L || !TXCVodVideoView.this.f31436x.f31362d || Math.min(TXCVodVideoView.this.f31426n, TXCVodVideoView.this.f31425m) >= 1080 || !TXCVodVideoView.this.f31436x.f31362d) {
                    return;
                }
                TXCVodVideoView.this.f31436x.f31362d = false;
                TXCVodVideoView.this.c(false);
            }
        };
        this.T = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
            public final void a() {
                LiteavLog.v("TXCVodVideoView", "seek complete");
                TXCVodVideoView.y(TXCVodVideoView.this);
                TXCVodVideoView.this.a(TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, "seek complete", null);
            }
        };
        this.U = new ITXVCubePlayer.k() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
        };
        this.V = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
            public final void a() {
                LiteavLog.e("TXCVodVideoView", "onHLSKeyError");
                TXCVodVideoView.this.a(-2305, "HLS decypt key get failed", "hls key error");
                if (TXCVodVideoView.this.f31415c != null) {
                    try {
                        TXCVodVideoView.this.f31415c.stop();
                    } catch (Exception e10) {
                        LiteavLog.e("TXCVodVideoView", "onHLSKeyError stop Exception: " + e10.getMessage());
                    }
                    TXCVodVideoView.this.f31415c.release();
                    TXCVodVideoView.z(TXCVodVideoView.this);
                }
                TXCVodVideoView.this.f31410a = -1;
                TXCVodVideoView.this.f31414b = -1;
            }
        };
        this.W = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.5
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
                LiteavLog.i("TXCVodVideoView", "onReceiveSubtitleFrameData, subtitleFrameBuffer=".concat(String.valueOf(tPSubtitleFrameBuffer)));
                if (TXCVodVideoView.this.M != null) {
                    TXCVodVideoView.this.M.a(iTXVCubePlayer, tPSubtitleFrameBuffer);
                }
            }
        };
        this.f31422j = new a.InterfaceC0327a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.6
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void a(a.b bVar, int i9, int i10) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceChanged: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceChanged");
                TXCVodVideoView.this.f31427o = i9;
                TXCVodVideoView.this.f31428p = i10;
                boolean z10 = true;
                boolean z11 = TXCVodVideoView.this.f31414b == 3;
                if (TXCVodVideoView.this.f31438z.a() && (TXCVodVideoView.this.f31425m != i9 || TXCVodVideoView.this.f31426n != i10)) {
                    z10 = false;
                }
                if (TXCVodVideoView.this.f31415c != null && z11 && z10 && TXCVodVideoView.this.f31414b == 3) {
                    TXCVodVideoView.this.a();
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void b(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceDestroyed: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceDestroyed");
                TXCVodVideoView.this.f31434v = false;
                TXCVodVideoView.this.f31424l = null;
                if (TXCVodVideoView.this.f31415c != null) {
                    TXCVodVideoView.this.f31415c.setSurface(null);
                }
                ITXVCubePlayer iTXVCubePlayer = TXCVodVideoView.this.f31415c;
                if (iTXVCubePlayer != null) {
                    iTXVCubePlayer.setDisplay(null);
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void a(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceCreated: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceCreated");
                TXCVodVideoView.this.f31434v = true;
                TXCVodVideoView.this.f31424l = bVar;
                if (TXCVodVideoView.this.f31415c != null) {
                    TXCVodVideoView.b(TXCVodVideoView.this.f31415c, bVar);
                } else {
                    TXCVodVideoView.this.e();
                }
            }
        };
        this.f31411aa = 0;
        this.f31413ac = false;
        a(context);
    }

    public final void a() {
        LiteavLog.i("TXCVodVideoView", "start vod=" + hashCode());
        if (c()) {
            try {
                if (this.f31410a != 3 && !this.F) {
                    this.f31410a = 3;
                    a(2004, "Playback started", "playing");
                    Handler handler = this.f31423k;
                    if (handler != null) {
                        handler.sendEmptyMessage(100);
                        this.f31423k.sendEmptyMessage(103);
                    }
                }
                this.f31415c.start();
            } catch (Exception e10) {
                LiteavLog.e("TXCVodVideoView", "start exception: " + e10.getMessage());
            }
        }
        this.f31414b = 3;
    }

    public final void a(int i9) {
        LiteavLog.i("TXCVodVideoView", "seek to " + i9 + "vod=" + hashCode());
        if (getUrlPathExtention().equals("m3u8")) {
            i9 = Math.min(i9, getDuration() - 1000);
        }
        if (i9 >= 0 && c()) {
            if (i9 > getDuration()) {
                i9 = getDuration();
            }
            if (this.F) {
                return;
            }
            try {
                this.G = i9;
                this.f31415c.seekTo(i9);
                this.F = true;
                if (this.f31410a == 5) {
                    this.f31414b = 3;
                }
            } catch (Exception e10) {
                LiteavLog.e("TXCVodVideoView", "seekTo Exception : " + e10.getMessage());
            }
        }
    }

    public TXCVodVideoView(Context context, AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.f31410a = 0;
        this.f31414b = 0;
        this.f31424l = null;
        this.f31415c = null;
        this.f31434v = false;
        this.D = 1.0f;
        this.f31416d = true;
        this.f31417e = 2;
        this.F = false;
        this.G = -1;
        this.H = 100;
        this.I = false;
        this.J = -1000;
        this.K = -1;
        this.f31418f = null;
        this.f31420h = new ITXVCubePlayer.m() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.8
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.m
            public final void a(ITXVCubePlayer iTXVCubePlayer, int i92, int i10, String str) {
                boolean z10 = (TXCVodVideoView.this.f31426n != i10 && Math.abs(TXCVodVideoView.this.f31426n - i10) > 16) || (TXCVodVideoView.this.f31425m != i92 && Math.abs(TXCVodVideoView.this.f31425m - i92) > 16);
                TXCVodVideoView.this.f31425m = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.f31426n = iTXVCubePlayer.getVideoHeight();
                TXCVodVideoView.this.A = iTXVCubePlayer.getVideoSarNum();
                TXCVodVideoView.this.B = iTXVCubePlayer.getVideoSarDen();
                long propertyLong = TXCVodVideoView.this.f31415c.getPropertyLong(205);
                LiteavLog.i("TXCVodVideoView", "OnVideoSizeChangedListener width:" + TXCVodVideoView.this.f31425m + ":height:" + TXCVodVideoView.this.f31426n + ":SarNum:" + TXCVodVideoView.this.A + ":SarDen:" + TXCVodVideoView.this.B + ":videoRotationDegree:" + propertyLong);
                if (TXCVodVideoView.this.f31425m != 0 && TXCVodVideoView.this.f31426n != 0) {
                    if (TXCVodVideoView.this.f31438z != null) {
                        TXCVodVideoView.this.f31438z.a(TXCVodVideoView.this.f31425m, TXCVodVideoView.this.f31426n);
                        TXCVodVideoView.this.f31438z.b(TXCVodVideoView.this.A, TXCVodVideoView.this.B);
                    }
                    TXCVodVideoView.this.requestLayout();
                }
                if (!z10) {
                    if (TXCVodVideoView.this.f31434v || str == null) {
                        return;
                    }
                    Message message = new Message();
                    message.what = 101;
                    message.arg1 = 2009;
                    Bundle bundle = new Bundle();
                    String str2 = i92 + "," + i10 + "," + str;
                    bundle.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str2 + ")");
                    bundle.putInt("EVT_PARAM1", TXCVodVideoView.this.f31425m);
                    bundle.putInt("EVT_PARAM2", TXCVodVideoView.this.f31426n);
                    bundle.putString("EVT_PARAM3", str2);
                    bundle.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                    message.setData(bundle);
                    if (TXCVodVideoView.this.f31423k != null) {
                        TXCVodVideoView.this.f31423k.sendMessage(message);
                        return;
                    }
                    return;
                }
                Message message2 = new Message();
                message2.what = 101;
                message2.arg1 = 2009;
                Bundle bundle2 = new Bundle();
                bundle2.putInt("EVT_PARAM1", TXCVodVideoView.this.f31425m);
                bundle2.putInt("EVT_PARAM2", TXCVodVideoView.this.f31426n);
                if (!TXCVodVideoView.this.f31434v && str != null) {
                    String str3 = i92 + "," + i10 + "," + str;
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n + " Crop(width,height,crop_left,crop_top,crop_right,crop_bottom):(" + str3 + ")");
                    bundle2.putString("EVT_PARAM3", str3);
                } else {
                    bundle2.putString("description", "Resolution change:" + TXCVodVideoView.this.f31425m + ProxyConfig.MATCH_ALL_SCHEMES + TXCVodVideoView.this.f31426n);
                }
                bundle2.putLong(TXVodConstants.EVT_KEY_VIDEO_ROTATION, propertyLong);
                message2.setData(bundle2);
                if (TXCVodVideoView.this.f31423k != null) {
                    TXCVodVideoView.this.f31423k.sendMessage(message2);
                }
            }
        };
        this.f31421i = new ITXVCubePlayer.i() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.9
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.i
            public final void a(ITXVCubePlayer iTXVCubePlayer) {
                if (RenderProcessService.getInstance().setSurfaceBufferSize(iTXVCubePlayer)) {
                    LiteavLog.i("TXCVodVideoView", "setSurfaceBufferSize succeed");
                }
                if (TXCVodVideoView.this.f31410a == 1) {
                    TXCVodVideoView.this.a(2013, "VOD ready", "prepared");
                    if (!TXCVodVideoView.this.f31436x.f31374p) {
                        TXCVodVideoView.this.f31414b = 4;
                    } else if (TXCVodVideoView.this.f31414b != 4) {
                        TXCVodVideoView.this.f31414b = 3;
                    }
                    TXCVodVideoView.this.f31410a = 2;
                }
                TXCVodVideoView.l(TXCVodVideoView.this);
                if (TXCVodVideoView.this.f31410a == -1) {
                    TXCVodVideoView.this.f31410a = 3;
                    TXCVodVideoView.this.f31414b = 3;
                }
                if (TXCVodVideoView.this.f31423k != null) {
                    TXCVodVideoView.this.f31423k.sendEmptyMessage(100);
                    TXCVodVideoView.this.f31423k.sendEmptyMessage(103);
                }
                TXCVodVideoView.this.f31425m = iTXVCubePlayer.getVideoWidth();
                TXCVodVideoView.this.f31426n = iTXVCubePlayer.getVideoHeight();
                if (TXCVodVideoView.this.f31425m != 0 && TXCVodVideoView.this.f31426n != 0 && TXCVodVideoView.this.f31438z != null) {
                    TXCVodVideoView.this.f31438z.a(TXCVodVideoView.this.f31425m, TXCVodVideoView.this.f31426n);
                    TXCVodVideoView.this.f31438z.b(TXCVodVideoView.this.A, TXCVodVideoView.this.B);
                }
                if (TXCVodVideoView.this.f31414b == 3) {
                    TXCVodVideoView.this.a();
                }
            }
        };
        this.N = new ITXVCubePlayer.d() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.10
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.d
            public final void a() {
                TXCVodVideoView.this.f31410a = 5;
                TXCVodVideoView.this.f31414b = 5;
                TXCVodVideoView.this.a(2006, "Playback completed", "play end");
            }
        };
        this.O = new ITXVCubePlayer.h() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.11
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.h
            public final boolean a(int i92, int i10, int i11, Object obj) {
                if (i92 == 1006) {
                    if (TextUtils.isEmpty(TXCVodVideoView.this.C) && obj != null && (obj instanceof TPPlayerMsg.TPDownLoadProgressInfo)) {
                        try {
                            TXCVodVideoView.this.C = new JSONObject(((TPPlayerMsg.TPDownLoadProgressInfo) obj).extraInfo).optString("cdnip");
                            return true;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return true;
                        }
                    }
                    return true;
                } else if (i92 == 2003) {
                    LiteavLog.i("TXCVodVideoView", "EVT_RENDER_FIRST_I_FRAME");
                    TXCVodVideoView.this.a(i92, "VOD displayed the first frame", "render start");
                    TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                    tXCVodVideoView.setRate(tXCVodVideoView.D);
                    TXCVodVideoView.n(TXCVodVideoView.this);
                    return true;
                } else if (i92 == 2007) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VIDEO_PLAY_LOADING");
                    TXCVodVideoView.this.a(i92, "Buffer started", "loading start");
                    return true;
                } else if (i92 == 2011) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VIDEO_CHANGE_ROTATION: ".concat(String.valueOf(i10)));
                    TXCVodVideoView.this.f31430r = i10;
                    if (TXCVodVideoView.this.f31436x.f31383y && TXCVodVideoView.this.f31430r > 0) {
                        TXCVodVideoView tXCVodVideoView2 = TXCVodVideoView.this;
                        tXCVodVideoView2.f31429q = tXCVodVideoView2.f31430r;
                        if (TXCVodVideoView.this.f31438z != null) {
                            TXCVodVideoView.this.f31438z.setVideoRotation(TXCVodVideoView.this.f31429q);
                        }
                    }
                    TXCVodVideoView.this.a(2011, "Video angle " + TXCVodVideoView.this.f31430r, "rotation " + TXCVodVideoView.this.f31430r);
                    return true;
                } else if (i92 == 2014) {
                    LiteavLog.i("TXCVodVideoView", "EVT_VOD_PLAY_LOADING_END: eof ".concat(String.valueOf(i10)));
                    TXCVodVideoView.this.a(i92, "Buffer ended", "loading end");
                    if (i10 != 0) {
                        String str = TXCVodVideoView.this.f31436x.f31375q;
                        if (TextUtils.isEmpty(str) && str.endsWith("m3u8")) {
                            return true;
                        }
                    }
                    if (TXCVodVideoView.this.f31414b == 3) {
                        TXCVodVideoView.this.a(2004, "Playback started", "playing");
                        TXCVodVideoView.this.f31410a = 3;
                        TXCVodVideoView.this.f31423k.sendEmptyMessage(100);
                        TXCVodVideoView.this.f31423k.sendEmptyMessage(103);
                        return true;
                    }
                    return true;
                } else if (i92 == 2020) {
                    long j10 = -1;
                    if (obj != null && (obj instanceof Long)) {
                        j10 = ((Long) obj).longValue();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_INDEX, (int) j10);
                    bundle.putInt(TXVodConstants.EVT_KEY_SELECT_TRACK_ERROR_CODE, i11);
                    bundle.putString("description", "Select Track Complete");
                    LiteavLog.i("TXCVodVideoView", "VOD_PLAY_EVT_SELECT_TRACK_COMPLETE, trackIndex=" + j10 + " ,errorCode=" + i11);
                    TXCVodVideoView.a(TXCVodVideoView.this, bundle);
                    return true;
                } else if (i92 != 2026) {
                    switch (i92) {
                        case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                            if (obj != null && (obj instanceof String)) {
                                TXCVodVideoView.this.C = (String) obj;
                            }
                            String str2 = "TCP Connect ServerIp:" + TXCVodVideoView.this.C + ",port:" + i10 + ",error:" + i11;
                            LiteavLog.i("TXCVodVideoView", str2);
                            if (i11 == 0) {
                                TXCVodVideoView.this.a(i92, str2, "tcp open");
                                return true;
                            }
                            return true;
                        case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                            TXCVodVideoView.this.a(i92, "Video data received", "first video packet");
                            return true;
                        case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                            String str3 = null;
                            if (obj != null && (obj instanceof String)) {
                                str3 = (String) obj;
                            }
                            String str4 = "dns resolved url:" + str3 + ",error:" + i10;
                            LiteavLog.i("TXCVodVideoView", str4);
                            if (i10 == 0) {
                                TXCVodVideoView.this.a(i92, str4, "dns resolved");
                                return true;
                            }
                            return true;
                        default:
                            return true;
                    }
                } else {
                    LiteavLog.i("TXCVodVideoView", "EVT_AUDIO_JITTER_STATE_FIRST_PLAY");
                    TXCVodVideoView.this.a(i92, "Audio first play", "audio start");
                    return true;
                }
            }
        };
        this.Q = new ITXVCubePlayer.e() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.12
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.e
            public final boolean a(int i92, int i10) {
                LiteavLog.e("TXCVodVideoView", "onError: " + i92 + "," + i10);
                TXCVodVideoView.this.f31410a = -1;
                TXCVodVideoView.this.f31414b = -1;
                if (i92 != -6101) {
                    if (i92 != -1010 && i92 != -1007 && i92 != -1004 && i92 != 200) {
                        if (TXCVodVideoView.this.E != TXCVodVideoView.this.getCurrentPosition()) {
                            TXCVodVideoView.u(TXCVodVideoView.this);
                        }
                        TXCVodVideoView tXCVodVideoView = TXCVodVideoView.this;
                        tXCVodVideoView.E = tXCVodVideoView.getCurrentPosition();
                        if (TXCVodVideoView.v(TXCVodVideoView.this) < TXCVodVideoView.this.f31436x.f31359a) {
                            if (TXCVodVideoView.this.f31423k != null) {
                                TXCVodVideoView.this.f31423k.sendEmptyMessageDelayed(102, TXCVodVideoView.this.f31436x.f31360b * 1000.0f);
                            }
                        } else {
                            TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                            TXCVodVideoView.this.b();
                        }
                        return true;
                    }
                    if (i10 == -2303) {
                        TXCVodVideoView.this.a(i10, "The file does not exist", "file not exist");
                    } else {
                        TXCVodVideoView.this.a(-2301, "Disconnected from the network. Playback error", "disconnect");
                    }
                    TXCVodVideoView.this.b();
                    return true;
                }
                if (TXCVodVideoView.this.f31437y != null) {
                    Object obj = TXCVodVideoView.this.f31437y.get("TXC_DRM_SIMPLE_AES_URL");
                    if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                        TXCVodVideoView.this.f31437y.put("TXC_DRM_KEY_URL", null);
                        TXCVodVideoView.this.f31437y.put("TXC_DRM_PROVISION_URL", null);
                        if (!TXCVodVideoView.this.e()) {
                            TXCVodVideoView.this.a(false);
                        }
                        return true;
                    }
                }
                TXCVodVideoView.this.a(-6101, "DRM play failed cause by " + i10 + ".", "DRM play failed cause by " + i10 + ".");
                return true;
            }
        };
        this.R = new ITXVCubePlayer.g() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.13
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.g
            public final void a() {
                LiteavLog.d("TXCVodVideoView", "onHevcVideoDecoderError");
                TXCVodVideoView.this.a(-2304, "Vod H265 decoding failed", "hevc decode fail");
            }
        };
        this.S = new ITXVCubePlayer.l() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.14
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.l
            public final void a() {
                LiteavLog.d("TXCVodVideoView", "onVideoDecoderError");
                if (TXCVodVideoView.this.f31410a != 4) {
                    TXCVodVideoView.this.a(2106, "VOD decoding failed", "decode fail");
                }
                if (TXCVodVideoView.this.L || !TXCVodVideoView.this.f31436x.f31362d || Math.min(TXCVodVideoView.this.f31426n, TXCVodVideoView.this.f31425m) >= 1080 || !TXCVodVideoView.this.f31436x.f31362d) {
                    return;
                }
                TXCVodVideoView.this.f31436x.f31362d = false;
                TXCVodVideoView.this.c(false);
            }
        };
        this.T = new ITXVCubePlayer.j() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.2
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.j
            public final void a() {
                LiteavLog.v("TXCVodVideoView", "seek complete");
                TXCVodVideoView.y(TXCVodVideoView.this);
                TXCVodVideoView.this.a(TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, "seek complete", null);
            }
        };
        this.U = new ITXVCubePlayer.k() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.3
        };
        this.V = new ITXVCubePlayer.f() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.4
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.f
            public final void a() {
                LiteavLog.e("TXCVodVideoView", "onHLSKeyError");
                TXCVodVideoView.this.a(-2305, "HLS decypt key get failed", "hls key error");
                if (TXCVodVideoView.this.f31415c != null) {
                    try {
                        TXCVodVideoView.this.f31415c.stop();
                    } catch (Exception e10) {
                        LiteavLog.e("TXCVodVideoView", "onHLSKeyError stop Exception: " + e10.getMessage());
                    }
                    TXCVodVideoView.this.f31415c.release();
                    TXCVodVideoView.z(TXCVodVideoView.this);
                }
                TXCVodVideoView.this.f31410a = -1;
                TXCVodVideoView.this.f31414b = -1;
            }
        };
        this.W = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.5
            @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
            public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
                LiteavLog.i("TXCVodVideoView", "onReceiveSubtitleFrameData, subtitleFrameBuffer=".concat(String.valueOf(tPSubtitleFrameBuffer)));
                if (TXCVodVideoView.this.M != null) {
                    TXCVodVideoView.this.M.a(iTXVCubePlayer, tPSubtitleFrameBuffer);
                }
            }
        };
        this.f31422j = new a.InterfaceC0327a() { // from class: com.tencent.liteav.txcvodplayer.TXCVodVideoView.6
            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void a(a.b bVar, int i92, int i10) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceChanged: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceChanged");
                TXCVodVideoView.this.f31427o = i92;
                TXCVodVideoView.this.f31428p = i10;
                boolean z10 = true;
                boolean z11 = TXCVodVideoView.this.f31414b == 3;
                if (TXCVodVideoView.this.f31438z.a() && (TXCVodVideoView.this.f31425m != i92 || TXCVodVideoView.this.f31426n != i10)) {
                    z10 = false;
                }
                if (TXCVodVideoView.this.f31415c != null && z11 && z10 && TXCVodVideoView.this.f31414b == 3) {
                    TXCVodVideoView.this.a();
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void b(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceDestroyed: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceDestroyed");
                TXCVodVideoView.this.f31434v = false;
                TXCVodVideoView.this.f31424l = null;
                if (TXCVodVideoView.this.f31415c != null) {
                    TXCVodVideoView.this.f31415c.setSurface(null);
                }
                ITXVCubePlayer iTXVCubePlayer = TXCVodVideoView.this.f31415c;
                if (iTXVCubePlayer != null) {
                    iTXVCubePlayer.setDisplay(null);
                }
            }

            @Override // com.tencent.liteav.txcvodplayer.renderer.a.InterfaceC0327a
            public final void a(a.b bVar) {
                if (bVar.a() != TXCVodVideoView.this.f31438z) {
                    LiteavLog.e("TXCVodVideoView", "onSurfaceCreated: unmatched render callback\n");
                    return;
                }
                LiteavLog.i("TXCVodVideoView", "onSurfaceCreated");
                TXCVodVideoView.this.f31434v = true;
                TXCVodVideoView.this.f31424l = bVar;
                if (TXCVodVideoView.this.f31415c != null) {
                    TXCVodVideoView.b(TXCVodVideoView.this.f31415c, bVar);
                } else {
                    TXCVodVideoView.this.e();
                }
            }
        };
        this.f31411aa = 0;
        this.f31413ac = false;
        a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, String str, String str2) {
        if ((i9 == -2304 || i9 == 2106) && this.f31413ac) {
            return;
        }
        Message message = new Message();
        message.what = 101;
        Bundle bundle = new Bundle();
        message.arg1 = i9;
        bundle.putString("description", str);
        message.setData(bundle);
        Handler handler = this.f31423k;
        if (handler != null) {
            handler.sendMessage(message);
        }
        if (i9 != 2018 && i9 != 2016) {
            LiteavLog.i("TXCVodVideoView", "sendSimpleEvent " + i9 + " " + str2 + " vod=" + hashCode());
        }
        this.f31413ac = i9 == -2304 || i9 == 2106;
    }

    private static void a(ITXVCubePlayer iTXVCubePlayer) {
        if (iTXVCubePlayer != null) {
            RenderProcessService.getInstance().stopRenderProcess(iTXVCubePlayer);
        }
    }

    static /* synthetic */ void a(TXCVodVideoView tXCVodVideoView, Bundle bundle) {
        d dVar = tXCVodVideoView.f31412ab;
        if (dVar != null) {
            dVar.a(TXVodConstants.VOD_PLAY_EVT_SELECT_TRACK_COMPLETE, bundle);
        }
    }
}
