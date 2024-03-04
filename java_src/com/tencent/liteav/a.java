package com.tencent.liteav;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.datareport.Event4XReporter;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.base.util.r;
import com.tencent.liteav.base.util.t;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import com.tencent.liteav.txcplayer.common.VodPlayerControl;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.ext.service.RenderProcessService;
import com.tencent.liteav.txcplayer.model.b;
import com.tencent.liteav.txcvodplayer.TXCVodVideoView;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.liteav.txcvodplayer.renderer.TextureRenderView;
import com.tencent.liteav.txcvodplayer.renderer.c;
import com.tencent.liteav.txcvodplayer.renderer.d;
import com.tencent.liteav.txcvodplayer.renderer.h;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.g;
import com.tencent.rtmp.ITXLivePlayListener;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.TXTrackInfo;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.rtmp.TXVodPlayConfig;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.rtmp.ui.TXSubtitleView;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.trtc.TRTCCloudDef;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.egl.EGLContext;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public final class a implements d.a {
    public d A;
    public Object B;
    public TXSubtitleView C;
    private Context D;
    private int G;
    private int H;
    private C0312a I;
    private boolean J;
    private boolean K;
    private c L;

    /* renamed from: b  reason: collision with root package name */
    public ITXLivePlayListener f30704b;

    /* renamed from: c  reason: collision with root package name */
    public ITXVodPlayListener f30705c;

    /* renamed from: d  reason: collision with root package name */
    public WeakReference<TXVodPlayer> f30706d;

    /* renamed from: e  reason: collision with root package name */
    public TXCVodVideoView f30707e;

    /* renamed from: f  reason: collision with root package name */
    public TXVodPlayConfig f30708f;

    /* renamed from: h  reason: collision with root package name */
    public boolean f30710h;

    /* renamed from: l  reason: collision with root package name */
    public Surface f30714l;

    /* renamed from: n  reason: collision with root package name */
    public String f30716n;

    /* renamed from: o  reason: collision with root package name */
    public final Map<String, Object> f30717o;

    /* renamed from: q  reason: collision with root package name */
    public TXPlayInfoParams f30719q;

    /* renamed from: r  reason: collision with root package name */
    public String f30720r;

    /* renamed from: s  reason: collision with root package name */
    public String f30721s;

    /* renamed from: w  reason: collision with root package name */
    public com.tencent.liteav.txcvodplayer.b.d f30725w;

    /* renamed from: x  reason: collision with root package name */
    public boolean f30726x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f30727y;

    /* renamed from: z  reason: collision with root package name */
    protected float f30728z;

    /* renamed from: a  reason: collision with root package name */
    public TXCloudVideoView f30703a = null;

    /* renamed from: g  reason: collision with root package name */
    public com.tencent.liteav.txcvodplayer.a.a f30709g = null;

    /* renamed from: i  reason: collision with root package name */
    public boolean f30711i = true;

    /* renamed from: j  reason: collision with root package name */
    public boolean f30712j = true;

    /* renamed from: k  reason: collision with root package name */
    public boolean f30713k = true;
    private float E = 1.0f;

    /* renamed from: m  reason: collision with root package name */
    public boolean f30715m = false;
    private int F = -1000;

    /* renamed from: p  reason: collision with root package name */
    public boolean f30718p = false;

    /* renamed from: t  reason: collision with root package name */
    public String f30722t = "";

    /* renamed from: u  reason: collision with root package name */
    public boolean f30723u = false;

    /* renamed from: v  reason: collision with root package name */
    public int f30724v = -1;
    private com.tencent.liteav.txcplayer.d M = new com.tencent.liteav.txcplayer.d() { // from class: com.tencent.liteav.a.3
        @Override // com.tencent.liteav.txcplayer.d
        public final void a(int i9, Bundle bundle) {
            int i10;
            int i11;
            String str;
            Bundle bundle2 = new Bundle(bundle);
            if (i9 == -6101) {
                a.this.f30709g.a(-6101, bundle.getString("description", ""));
            } else if (i9 == -2301) {
                a.this.f30709g.a(-2301, "network disconnect, has retry reconnect, but still failed!");
            } else if (i9 == 2011) {
                bundle2.putInt("EVT_PARAM1", a.this.f30707e.getMetaRotationDegree());
            } else if (i9 != 2026 && i9 != 2103) {
                if (i9 != 2106) {
                    if (i9 != 2013) {
                        boolean z10 = true;
                        if (i9 != 2014) {
                            switch (i9) {
                                case -2305:
                                    a.this.f30709g.a(-2305, "HLS decrypt key error");
                                    break;
                                case -2304:
                                    a.this.f30709g.a(-2304, "h265 decode failed");
                                    if (!a.this.f30710h) {
                                        a.j(a.this);
                                        a aVar = a.this;
                                        aVar.a(aVar.f30708f);
                                        break;
                                    }
                                    break;
                                case -2303:
                                    a.this.f30709g.a(-2303, "file not found");
                                    break;
                                default:
                                    switch (i9) {
                                        case 2003:
                                            LiteavLog.i("TXCVodPlayer", "util onPlayEvent VOD_PLAY_EVT_RCV_FIRST_I_FRAME");
                                            a.this.f30709g.d();
                                            if (a.this.f30710h) {
                                                z10 = false;
                                            } else {
                                                a.l(a.this);
                                                com.tencent.liteav.txcvodplayer.a.a aVar2 = a.this.f30709g;
                                                LiteavLog.i("TXCVodPlayCollection", "renderStart");
                                                if (aVar2.f31471l == 0) {
                                                    aVar2.f31471l = (int) (System.currentTimeMillis() - aVar2.f31463d);
                                                }
                                                Bundle bundle3 = new Bundle();
                                                bundle3.putInt(TXVodConstants.EVT_ID, 2008);
                                                bundle3.putLong("EVT_TIME", TimeUtil.a());
                                                bundle3.putLong("EVT_UTC_TIME", TimeUtil.b());
                                                b mediaInfo = a.this.f30707e.getMediaInfo();
                                                if (mediaInfo != null && (str = mediaInfo.f31392c) != null && str.toLowerCase().contains("hevc")) {
                                                    bundle3.putCharSequence("description", a.this.f30713k ? "Enables hardware decoding H265" : "Enables software decoding h265");
                                                    i10 = 1;
                                                } else {
                                                    bundle3.putCharSequence("description", a.this.f30713k ? "Enables hardware decoding" : "Enables software decoding");
                                                    i10 = 0;
                                                }
                                                bundle3.putInt("EVT_PARAM1", a.this.f30713k ? 1 : 2);
                                                bundle3.putInt(TXVodConstants.EVT_CODEC_TYPE, i10);
                                                if (a.this.f30713k) {
                                                    i11 = i10 == 0 ? 1 : 3;
                                                } else {
                                                    i11 = i10 != 0 ? 2 : 0;
                                                }
                                                a.this.f30709g.f31480u = i11;
                                                a(2008, bundle3);
                                            }
                                            if (!z10) {
                                                return;
                                            }
                                            break;
                                        case 2004:
                                            LiteavLog.i("TXCVodPlayer", "util onPlayEvent VOD_PLAY_EVT_PLAY_BEGIN");
                                            break;
                                        case 2005:
                                            com.tencent.liteav.txcvodplayer.a.a aVar3 = a.this.f30709g;
                                            int i12 = bundle.getInt("EVT_PLAY_DURATION", 0);
                                            int i13 = bundle.getInt("EVT_PLAY_PROGRESS", 0);
                                            aVar3.f31468i = i12;
                                            int a10 = i13 / com.tencent.liteav.txcvodplayer.a.b.a(aVar3.f31460a).a(aVar3.A);
                                            if (a10 != aVar3.f31469j) {
                                                aVar3.f31469j = a10;
                                                if (!aVar3.f31465f) {
                                                    aVar3.b();
                                                    break;
                                                }
                                            }
                                            break;
                                        case 2006:
                                            a.this.f30709g.c();
                                            if (a.this.f30727y) {
                                                Bundle bundle4 = new Bundle();
                                                bundle4.putString("EVT_MSG", "loop once playback complete");
                                                a.this.a(6001, bundle4);
                                                a.this.f30707e.a();
                                                a.this.f30709g.a(true);
                                                LiteavLog.d("TXCVodPlayer", "loop play");
                                                return;
                                            }
                                            break;
                                        case 2007:
                                            com.tencent.liteav.txcvodplayer.a.a aVar4 = a.this.f30709g;
                                            if (!aVar4.f31475p && aVar4.f31471l != 0 && !aVar4.f31467h) {
                                                aVar4.f31464e = System.currentTimeMillis();
                                                aVar4.f31476q = true;
                                                LiteavLog.i("TXCVodPlayCollection", "setLoadBegin mBeginLoadTS= " + aVar4.f31464e);
                                                break;
                                            }
                                            break;
                                        case 2008:
                                            break;
                                        case 2009:
                                            if (a.this.A != null) {
                                                d dVar = a.this.A;
                                                dVar.a(h.a(dVar, a.this.f30707e.getVideoWidth(), a.this.f30707e.getVideoHeight()), "setVideoSize");
                                                break;
                                            }
                                            break;
                                        default:
                                            switch (i9) {
                                                case TXVodConstants.VOD_PLAY_EVT_TCP_CONNECT_SUCC /* 2016 */:
                                                    LiteavLog.i("TXCVodPlayer", "util play tcp connect success");
                                                    com.tencent.liteav.txcvodplayer.a.a aVar5 = a.this.f30709g;
                                                    if (aVar5.f31481v == 0) {
                                                        aVar5.f31481v = (int) (System.currentTimeMillis() - aVar5.f31462c);
                                                        LiteavLog.i("TXCVodPlayCollection", "mTcpConnectTS = " + aVar5.f31481v + ", mOriginBeginPlayTS = " + aVar5.f31462c + ", " + System.currentTimeMillis());
                                                        return;
                                                    }
                                                    return;
                                                case TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET /* 2017 */:
                                                    LiteavLog.i("TXCVodPlayer", "util play first video packet");
                                                    com.tencent.liteav.txcvodplayer.a.a aVar6 = a.this.f30709g;
                                                    if (aVar6.f31483x == 0) {
                                                        aVar6.f31483x = (int) (System.currentTimeMillis() - aVar6.f31463d);
                                                        return;
                                                    }
                                                    return;
                                                case TXVodConstants.VOD_PLAY_EVT_DNS_RESOLVED /* 2018 */:
                                                    LiteavLog.i("TXCVodPlayer", "util play dns resolved");
                                                    com.tencent.liteav.txcvodplayer.a.a aVar7 = a.this.f30709g;
                                                    if (aVar7.f31482w == 0) {
                                                        aVar7.f31482w = (int) (System.currentTimeMillis() - aVar7.f31462c);
                                                        return;
                                                    }
                                                    return;
                                                case TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE /* 2019 */:
                                                case TXVodConstants.VOD_PLAY_EVT_SELECT_TRACK_COMPLETE /* 2020 */:
                                                    break;
                                                default:
                                                    LiteavLog.d("TXCVodPlayer", "miss match event ".concat(String.valueOf(i9)));
                                                    return;
                                            }
                                    }
                            }
                        } else {
                            com.tencent.liteav.txcvodplayer.a.a aVar8 = a.this.f30709g;
                            if (!aVar8.f31475p && aVar8.f31471l != 0 && !aVar8.f31467h) {
                                LiteavLog.i("TXCVodPlayCollection", "setLoadEnd mFirstFrame=" + aVar8.f31471l + " , mIsLoading = " + aVar8.f31476q + ",mBeginLoadTS = " + aVar8.f31464e);
                                if (aVar8.f31476q) {
                                    int currentTimeMillis = (int) (System.currentTimeMillis() - aVar8.f31464e);
                                    aVar8.f31473n += currentTimeMillis;
                                    aVar8.f31472m++;
                                    if (aVar8.f31474o < currentTimeMillis) {
                                        aVar8.f31474o = currentTimeMillis;
                                    }
                                    aVar8.f31476q = false;
                                }
                            }
                            if (aVar8.f31475p) {
                                aVar8.f31475p = false;
                            }
                            a.this.f30709g.d();
                        }
                    } else {
                        LiteavLog.i("TXCVodPlayer", "util onPlayEvent VOD_PLAY_EVT_VOD_PLAY_PREPARED");
                    }
                } else if (!a.this.f30710h) {
                    a.j(a.this);
                    a aVar9 = a.this;
                    aVar9.a(aVar9.f30708f);
                }
            }
            bundle2.putString("EVT_MSG", bundle.getString("description", ""));
            a.this.a(i9, bundle2);
        }

        @Override // com.tencent.liteav.txcplayer.d
        public final void a(Bundle bundle) {
            Bundle bundle2 = new Bundle();
            int[] a10 = t.a();
            bundle2.putCharSequence("CPU_USAGE", a10[0] + "%");
            bundle2.putInt("VIDEO_FPS", (int) bundle.getFloat("fps"));
            bundle2.putInt("VIDEO_DPS", (int) bundle.getFloat("dps"));
            bundle2.putInt("NET_SPEED", ((int) bundle.getLong("tcpSpeed")) / 1000);
            bundle2.putInt("VIDEO_CACHE", ((int) bundle.getLong("cachedBytes")) / 1000);
            bundle2.putInt("VIDEO_WIDTH", a.this.f30707e.getVideoWidth());
            bundle2.putInt("VIDEO_HEIGHT", a.this.f30707e.getVideoHeight());
            bundle2.putString("SERVER_IP", a.this.f30707e.getServerIp());
            com.tencent.liteav.txcvodplayer.a.a aVar = a.this.f30709g;
            String serverIp = a.this.f30707e.getServerIp();
            aVar.f31484y = serverIp;
            if (serverIp == null) {
                aVar.f31484y = "";
            }
            a.this.a(15001, bundle2);
        }
    };
    private ITXVCubePlayer.b N = new ITXVCubePlayer.b() { // from class: com.tencent.liteav.a.4
        @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer.b
        public final void a(ITXVCubePlayer iTXVCubePlayer, TPSubtitleFrameBuffer tPSubtitleFrameBuffer) {
            Bitmap bitmap;
            if (a.this.L == null) {
                a.this.L = new c();
            }
            c cVar = a.this.L;
            if (tPSubtitleFrameBuffer == null) {
                LiteavLog.i("SubtitleRender", "[renderToBitmap] subtitleFrameBuffer is null");
                bitmap = null;
            } else {
                LiteavLog.i("SubtitleRender", "[renderToBitmap] subtitleFrameBuffer, trackId: " + tPSubtitleFrameBuffer.trackID + " ,width: " + tPSubtitleFrameBuffer.getSrcWidth() + ", height: " + tPSubtitleFrameBuffer.getSrcHeight());
                Bitmap bitmap2 = cVar.f31632a;
                if (bitmap2 == null || bitmap2.getWidth() != tPSubtitleFrameBuffer.getSrcWidth() || cVar.f31632a.getHeight() != tPSubtitleFrameBuffer.getSrcHeight()) {
                    cVar.f31632a = Bitmap.createBitmap(tPSubtitleFrameBuffer.getSrcWidth(), tPSubtitleFrameBuffer.getSrcHeight(), Bitmap.Config.ARGB_8888);
                }
                cVar.f31632a.copyPixelsFromBuffer(ByteBuffer.wrap(tPSubtitleFrameBuffer.getData()[0]));
                bitmap = cVar.f31632a;
            }
            if (a.this.C != null) {
                a.this.C.show(bitmap);
            }
        }
    };

    /* renamed from: com.tencent.liteav.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static class C0312a {

        /* renamed from: a  reason: collision with root package name */
        Class f30736a;

        /* renamed from: b  reason: collision with root package name */
        Class f30737b;

        /* renamed from: c  reason: collision with root package name */
        Class f30738c;

        /* renamed from: d  reason: collision with root package name */
        Field f30739d;

        /* renamed from: e  reason: collision with root package name */
        Field f30740e;

        /* renamed from: f  reason: collision with root package name */
        Field f30741f;

        /* renamed from: g  reason: collision with root package name */
        Field f30742g;

        /* renamed from: h  reason: collision with root package name */
        Field f30743h;

        /* renamed from: i  reason: collision with root package name */
        Field f30744i;

        /* renamed from: j  reason: collision with root package name */
        Field f30745j;

        /* renamed from: k  reason: collision with root package name */
        Field f30746k;

        /* renamed from: l  reason: collision with root package name */
        Field f30747l;

        public C0312a(Object obj) {
            try {
                this.f30736a = obj.getClass();
                this.f30737b = TRTCCloudDef.TRTCTexture.class;
                this.f30738c = TRTCCloudDef.TRTCVideoFrame.class;
                this.f30739d = TRTCCloudDef.TRTCTexture.class.getDeclaredField("textureId");
                this.f30740e = this.f30737b.getDeclaredField("eglContext10");
                this.f30742g = this.f30738c.getDeclaredField("texture");
                this.f30743h = this.f30738c.getDeclaredField("width");
                this.f30744i = this.f30738c.getDeclaredField("height");
                this.f30745j = this.f30738c.getDeclaredField("pixelFormat");
                this.f30746k = this.f30738c.getDeclaredField("bufferType");
                this.f30747l = this.f30738c.getDeclaredField("timestamp");
                if (LiteavSystemInfo.getSystemOSVersionInt() >= 17) {
                    this.f30741f = this.f30737b.getDeclaredField("eglContext14");
                }
            } catch (Exception e10) {
                LiteavLog.e("TXCVodPlayer", "init TRTCCloudClassInvokeWrapper error ", e10);
            }
        }
    }

    static {
        r.a();
    }

    public a(Context context) {
        this.D = null;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            this.D = applicationContext;
            ContextUtils.initApplicationContext(applicationContext);
            ContextUtils.setDataDirectorySuffix("liteav");
        }
        this.f30717o = new HashMap();
        this.f30704b = null;
        this.f30705c = null;
        RenderProcessService.getInstance().checkInit(context.getApplicationContext());
        TXCVodVideoView tXCVodVideoView = new TXCVodVideoView(context);
        this.f30707e = tXCVodVideoView;
        tXCVodVideoView.setListener(this.M);
        this.f30707e.setTXCOnSubtitleFrameDataListener(this.N);
    }

    static /* synthetic */ boolean j(a aVar) {
        aVar.f30713k = false;
        return false;
    }

    static /* synthetic */ boolean l(a aVar) {
        aVar.f30710h = true;
        return true;
    }

    static /* synthetic */ boolean p(a aVar) {
        aVar.f30718p = false;
        return false;
    }

    public final void c(int i9) {
        com.tencent.liteav.txcvodplayer.a.a aVar;
        this.f30707e.setBitrateIndex(i9);
        this.F = i9;
        if (i9 == -1 || !this.f30710h || (aVar = this.f30709g) == null) {
            return;
        }
        aVar.c(this.f30708f.isSmoothSwitchBitrate());
    }

    public final void d() {
        this.K = true;
        this.f30707e.d();
    }

    public final void e() {
        this.K = false;
        ITXVCubePlayer iTXVCubePlayer = this.f30707e.f31415c;
        if (iTXVCubePlayer != null) {
            iTXVCubePlayer.unpublishAudioToNetwork();
        }
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.d.a
    public final void f() {
        this.f30714l = null;
        this.f30707e.setRenderSurface(null);
    }

    public final void g() {
        this.f30717o.put("TXC_DRM_ENABLE", Boolean.FALSE);
    }

    public final void b(int i9) {
        this.H = i9;
        this.f30707e.setVideoRotationDegree(i9);
        d dVar = this.A;
        if (dVar != null) {
            dVar.a(Rotation.a(i9));
        }
    }

    public final void c() {
        this.J = false;
        c(false);
    }

    public final void a(TXVodPlayConfig tXVodPlayConfig) {
        this.f30708f = tXVodPlayConfig;
        if (tXVodPlayConfig == null) {
            this.f30708f = new TXVodPlayConfig();
        }
        e eVar = new e();
        float connectRetryCount = this.f30708f.getConnectRetryCount();
        if (connectRetryCount >= 1.0f && connectRetryCount <= 10.0f) {
            eVar.f31359a = (int) connectRetryCount;
        }
        float connectRetryInterval = this.f30708f.getConnectRetryInterval();
        if (connectRetryInterval >= 3.0f && connectRetryInterval <= 30.0f) {
            eVar.f31360b = (int) connectRetryInterval;
        }
        eVar.f31361c = this.f30708f.getTimeout();
        eVar.f31362d = this.f30713k;
        eVar.f31363e = this.f30708f.getCacheFolderPath();
        eVar.f31364f = this.f30708f.getMaxCacheItems();
        eVar.f31365g = this.f30708f.getPlayerType();
        eVar.f31366h = this.f30708f.getHeaders();
        eVar.f31367i = this.f30708f.isEnableAccurateSeek();
        eVar.f31368j = this.f30708f.isSmoothSwitchBitrate();
        eVar.f31369k = this.f30708f.getCacheMp4ExtName();
        eVar.f31370l = this.f30708f.getProgressInterval();
        eVar.f31371m = this.f30708f.getMaxBufferSize();
        if (this.f30719q == null && TextUtils.isEmpty(this.f30720r)) {
            eVar.f31379u = this.f30708f.getOverlayKey();
            eVar.f31380v = this.f30708f.getOverlayIv();
        } else {
            eVar.f31379u = this.f30720r;
            eVar.f31380v = this.f30721s;
        }
        eVar.f31382x = this.f30708f.getExtInfoMap();
        eVar.f31384z = this.f30708f.isEnableRenderProcess();
        eVar.f31383y = this.f30708f.isAutoRotate();
        eVar.f31377s = this.f30708f.getPreferredResolution();
        eVar.A = this.f30708f.getMediaType();
        LiteavLog.i("TXCVodPlayer", "setConfig [connectRetryCount:" + this.f30708f.getConnectRetryCount() + "(default 3 times)][connectRetryInterval:" + this.f30708f.getConnectRetryInterval() + "(default 3s,min:3s max:30s)][vodTimeout:" + this.f30708f.getTimeout() + "(default 10s)][enableHardwareDecoder:" + this.f30713k + "(default false)][cacheFolderPath for mp4/HLS:" + this.f30708f.getCacheFolderPath() + "][maxCacheItems:" + this.f30708f.getMaxCacheItems() + "][enableAccurateSeek:" + this.f30708f.isEnableAccurateSeek() + "(default true)][autoRotate:" + this.f30708f.isAutoRotate() + "(default true)][HLS smoothSwitchBitrate:" + this.f30708f.isSmoothSwitchBitrate() + "(default false)][progressInterval:" + this.f30708f.getProgressInterval() + "(default 0.5s)][preload maxBufferSize:" + this.f30708f.getMaxBufferSize() + "][mOverlayKey for HLS Encrypt:" + this.f30708f.getOverlayKey() + "][mOverlayIv for HLS Encrypt:" + this.f30708f.getOverlayIv() + "][mEnableRenderProcess:" + this.f30708f.isEnableRenderProcess() + "][mPreferredResolution:" + this.f30708f.getPreferredResolution() + "][mMediaType:" + this.f30708f.getMediaType() + "]");
        this.f30707e.setConfig(eVar);
        RenderProcessService.getInstance().setEnableRenderProcess(this.f30708f.isEnableRenderProcess());
    }

    public final void b(float f10) {
        this.f30728z = f10;
        this.f30707e.setStartTime(f10);
    }

    private void c(boolean z10) {
        try {
            Object obj = this.B;
            if (obj != null) {
                obj.getClass().getDeclaredMethod("enableCustomVideoCapture", Integer.TYPE, Boolean.TYPE).invoke(obj, 2, Boolean.valueOf(z10));
            }
        } catch (Exception e10) {
            LiteavLog.e("TXCVodPlayer", "setTRTCCustomVideoCapture error ", e10);
        }
    }

    public final void b(boolean z10) {
        this.f30726x = z10;
        TextureView a10 = g.a(this.f30703a);
        if (a10 != null) {
            if (this.f30708f.isAutoRotate() && (this.f30707e.getMetaRotationDegree() == 90 || this.f30707e.getMetaRotationDegree() == 270)) {
                a10.setScaleY(z10 ? -1.0f : 1.0f);
            } else {
                a10.setScaleX(z10 ? -1.0f : 1.0f);
            }
        }
        com.tencent.liteav.txcvodplayer.a.a aVar = this.f30709g;
        if (aVar != null) {
            aVar.b(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(String str, String str2) {
        String path;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (TextUtils.isEmpty(str2) || (path = Uri.parse(str).getPath()) == null) {
            return str;
        }
        String[] split = path.split(FileUtils.RES_PREFIX_STORAGE);
        if (split.length > 0) {
            int lastIndexOf = str.lastIndexOf(split[split.length - 1]);
            return str.substring(0, lastIndexOf) + "voddrm.token." + str2 + "." + str.substring(lastIndexOf);
        }
        return str;
    }

    public final void b() {
        this.J = true;
        c(true);
    }

    public static String b(String str) {
        return TXCHLSEncoder.a(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String c(java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.a.c(java.lang.String):java.lang.String");
    }

    public final int a(String str) {
        boolean z10;
        TXVodPlayConfig tXVodPlayConfig;
        if (str != null && !TextUtils.isEmpty(str)) {
            this.f30709g = new com.tencent.liteav.txcvodplayer.a.a(this.D);
            String c10 = c(str);
            com.tencent.liteav.txcvodplayer.a.a aVar = this.f30709g;
            LiteavLog.i("TXCVodPlayCollection", "setUrl: ".concat(String.valueOf(c10)));
            aVar.f31461b = c10;
            this.f30709g.a(this.f30712j);
            if (com.tencent.liteav.txcplayer.common.c.a() == LicenseChecker.d.OK || VodPlayerControl.getPlayerLicenceControlStrategy() == 0) {
                z10 = true;
            } else {
                LiteavLog.e("TXCVodPlayer", "startPlay error, licence check failed(-5)! click the link to apply trial licence: https://cloud.tencent.com/act/event/License .Official licence requires payment.");
                Bundle bundle = new Bundle();
                bundle.putString("EVT_MSG", "VOD_PLAY_ERR_INVALID_LICENCE(-5)");
                a(-5, bundle);
                new Event4XReporter(UGCDataReportDef.COMMAND_ID_DAU, 1004, "", true, 1).reportDau(1997, 0, "");
                this.f30709g.a();
                z10 = false;
            }
            if (z10) {
                this.f30722t = str;
                int i9 = this.F;
                a(false);
                this.F = i9;
                TXCloudVideoView tXCloudVideoView = this.f30703a;
                if (tXCloudVideoView != null) {
                    tXCloudVideoView.clearLog();
                    this.f30703a.setVisibility(0);
                    if (g.a(this.f30703a) == null) {
                        TextureRenderView textureRenderView = new TextureRenderView(this.f30703a.getContext());
                        this.f30703a.addVideoView(textureRenderView);
                        this.f30707e.setTextureRenderView(textureRenderView);
                    }
                    a(this.f30703a, 0);
                } else {
                    Surface surface = this.f30714l;
                    if (surface != null) {
                        this.f30707e.setRenderSurface(surface);
                    }
                }
                d dVar = this.A;
                if (dVar != null) {
                    dVar.a(com.tencent.liteav.txcvodplayer.renderer.e.a(dVar), "Start");
                }
                if (TextUtils.isEmpty(com.tencent.liteav.txcplayer.common.b.a()) && (tXVodPlayConfig = this.f30708f) != null) {
                    com.tencent.liteav.txcplayer.common.b.a(tXVodPlayConfig.getCacheFolderPath());
                }
                a(this.f30708f);
                this.f30707e.setPrivateConfig(this.f30717o);
                this.f30710h = false;
                this.f30707e.setStartTime(this.f30728z);
                this.f30707e.setPlayerType(this.f30708f.getPlayerType());
                this.f30707e.b(this.f30711i);
                this.f30707e.setVideoPath(c10);
                this.f30707e.setAutoPlay(this.f30712j);
                this.f30707e.setMute(this.f30723u);
                int i10 = this.f30724v;
                if (i10 >= 0) {
                    this.f30707e.setAudioPlayoutVolume(i10);
                }
                c(this.F);
                a(this.E);
                b(this.H);
                a(this.G);
                b(this.f30726x);
                this.f30707e.a();
                this.f30709g.f31477r = this.f30707e.getPlayerType();
                if (this.J) {
                    b();
                }
                if (this.K) {
                    d();
                }
                LiteavLog.d("TXCVodPlayer", "startPlay url=" + c10 + " player=" + hashCode());
                if (this.f30719q != null && !TextUtils.isEmpty(this.f30720r)) {
                    com.tencent.liteav.txcvodplayer.c.a a10 = com.tencent.liteav.txcvodplayer.c.a.a();
                    int appId = this.f30719q.getAppId();
                    String fileId = this.f30719q.getFileId();
                    String str2 = this.f30720r;
                    String str3 = this.f30721s;
                    if (!TextUtils.isEmpty(fileId) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(c10)) {
                        com.tencent.liteav.txcplayer.common.a.a().execute(com.tencent.liteav.txcvodplayer.c.b.a(a10, appId, fileId, c10, str2, str3));
                    } else {
                        LiteavLog.w("PlayInfoProtocolV4Storage", "put params empty fileId: " + fileId + " overlayKey:" + str2 + " overlayIv:" + str3 + " url:" + c10);
                    }
                }
                Event4XReporter event4XReporter = new Event4XReporter(UGCDataReportDef.COMMAND_ID_DAU, 1004, "", true, 1);
                event4XReporter.reportDau(1997, 0, "");
                this.f30709g.a();
                try {
                    Class.forName("com.tencent.liteav.demo.play.SuperPlayerView");
                    event4XReporter.reportDau(1556, 0, "");
                } catch (Exception unused) {
                }
                return 0;
            }
            return -5;
        }
        LiteavLog.i("TXCVodPlayer", "startPlay playUrl is empty, player=" + hashCode());
        return -1;
    }

    public static void a(TXCloudVideoView tXCloudVideoView, int i9) {
        if (tXCloudVideoView == null) {
            return;
        }
        tXCloudVideoView.setVisibility(i9);
        TextureView a10 = g.a(tXCloudVideoView);
        if (a10 == null) {
            return;
        }
        a10.setVisibility(i9);
    }

    public final void a(String str, String str2) {
        this.f30720r = str;
        this.f30721s = str2;
    }

    public final int a(boolean z10) {
        this.f30715m = true;
        this.f30707e.b();
        com.tencent.liteav.txcvodplayer.b.d dVar = this.f30725w;
        if (dVar != null) {
            dVar.a(null);
            this.f30725w = null;
        }
        d dVar2 = this.A;
        if (dVar2 != null) {
            dVar2.a(true);
        }
        TXCloudVideoView tXCloudVideoView = this.f30703a;
        if (tXCloudVideoView != null && g.a(tXCloudVideoView) != null && z10) {
            a(this.f30703a, 8);
            this.f30703a.removeVideoView();
        }
        com.tencent.liteav.txcvodplayer.a.a aVar = this.f30709g;
        if (aVar != null) {
            aVar.c();
        }
        this.F = -1000;
        c cVar = this.L;
        if (cVar != null) {
            cVar.a();
            this.L = null;
        }
        TXSubtitleView tXSubtitleView = this.C;
        if (tXSubtitleView != null) {
            tXSubtitleView.show(null);
            return 0;
        }
        return 0;
    }

    public final void a(int i9) {
        this.G = i9;
        if (i9 == 1) {
            this.f30707e.setRenderMode(0);
        } else {
            this.f30707e.setRenderMode(1);
        }
        d dVar = this.A;
        if (dVar != null) {
            dVar.a(GLConstants.GLScaleType.a(i9));
        }
    }

    public final List<TXTrackInfo> a() {
        TPTrackInfo[] trackInfo = this.f30707e.getTrackInfo();
        if (trackInfo != null && trackInfo.length != 0) {
            ArrayList arrayList = new ArrayList();
            a(arrayList, trackInfo);
            return arrayList;
        }
        return new ArrayList(0);
    }

    public static List<TXTrackInfo> a(List<TXTrackInfo> list, int i9) {
        ArrayList arrayList = new ArrayList();
        for (TXTrackInfo tXTrackInfo : list) {
            if (tXTrackInfo.getTrackType() == i9) {
                arrayList.add(tXTrackInfo);
            }
        }
        return arrayList;
    }

    private static void a(List<TXTrackInfo> list, TPTrackInfo[] tPTrackInfoArr) {
        for (int i9 = 0; i9 < tPTrackInfoArr.length; i9++) {
            TPTrackInfo tPTrackInfo = tPTrackInfoArr[i9];
            TXTrackInfo tXTrackInfo = new TXTrackInfo();
            tXTrackInfo.trackIndex = i9;
            tXTrackInfo.trackType = tPTrackInfo.trackType;
            tXTrackInfo.name = tPTrackInfo.name;
            tXTrackInfo.isSelected = tPTrackInfo.isSelected;
            tXTrackInfo.isExclusive = tPTrackInfo.isExclusive;
            tXTrackInfo.isInternal = tPTrackInfo.isInternal;
            list.add(tXTrackInfo);
        }
    }

    public final void a(float f10) {
        this.E = f10;
        this.f30707e.setRate(f10);
        com.tencent.liteav.txcvodplayer.a.a aVar = this.f30709g;
        if (aVar != null) {
            aVar.a(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9, Bundle bundle) {
        TXVodPlayer tXVodPlayer;
        TXVodPlayer tXVodPlayer2;
        if (i9 == 15001) {
            ITXLivePlayListener iTXLivePlayListener = this.f30704b;
            if (iTXLivePlayListener != null) {
                iTXLivePlayListener.onNetStatus(bundle);
            }
            if (this.f30705c == null || (tXVodPlayer2 = this.f30706d.get()) == null) {
                return;
            }
            this.f30705c.onNetStatus(tXVodPlayer2, bundle);
            return;
        }
        ITXLivePlayListener iTXLivePlayListener2 = this.f30704b;
        if (iTXLivePlayListener2 != null) {
            iTXLivePlayListener2.onPlayEvent(i9, bundle);
        }
        if (this.f30705c == null || (tXVodPlayer = this.f30706d.get()) == null) {
            return;
        }
        this.f30705c.onPlayEvent(tXVodPlayer, i9, bundle);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.d.a
    public final void a(SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        this.f30714l = surface;
        this.f30707e.setRenderSurface(surface);
    }

    @Override // com.tencent.liteav.txcvodplayer.renderer.d.a
    public final void a(PixelFrame pixelFrame) {
        Object obj;
        if (this.J) {
            try {
                if (this.I == null && (obj = this.B) != null) {
                    this.I = new C0312a(obj);
                }
                C0312a c0312a = this.I;
                if (c0312a != null) {
                    Object obj2 = this.B;
                    try {
                        Object newInstance = c0312a.f30737b.newInstance();
                        c0312a.f30739d.set(newInstance, Integer.valueOf(pixelFrame.getTextureId()));
                        if (pixelFrame.getGLContext() instanceof EGLContext) {
                            c0312a.f30740e.set(newInstance, pixelFrame.getGLContext());
                        } else {
                            c0312a.f30741f.set(newInstance, pixelFrame.getGLContext());
                        }
                        Object newInstance2 = c0312a.f30738c.newInstance();
                        c0312a.f30742g.set(newInstance2, newInstance);
                        c0312a.f30743h.set(newInstance2, Integer.valueOf(pixelFrame.getWidth()));
                        c0312a.f30744i.set(newInstance2, Integer.valueOf(pixelFrame.getHeight()));
                        c0312a.f30745j.set(newInstance2, 2);
                        c0312a.f30746k.set(newInstance2, 3);
                        c0312a.f30747l.set(newInstance2, 0);
                        c0312a.f30736a.getDeclaredMethod("sendCustomVideoData", Integer.TYPE, newInstance2.getClass()).invoke(obj2, 2, newInstance2);
                    } catch (Exception e10) {
                        LiteavLog.e("TXCVodPlayer", "sendCustomVideoData method error ", e10);
                    }
                }
            } catch (Exception e11) {
                LiteavLog.e("TXCVodPlayer", "get enableCustomVideoCapture method error ", e11);
            }
        }
    }

    public final int a(String str, String str2, String str3, String str4, String str5) {
        this.f30717o.put("TXC_DRM_KEY_URL", str2);
        this.f30717o.put("TXC_DRM_PROVISION_URL", new TXPlayerDrmBuilder().getDeviceCertificateUrl());
        this.f30717o.put("TXC_DRM_SIMPLE_AES_URL", str3);
        this.f30717o.put("TXC_DRM_ENABLE", Boolean.TRUE);
        a(str4, str5);
        return a(str);
    }
}
