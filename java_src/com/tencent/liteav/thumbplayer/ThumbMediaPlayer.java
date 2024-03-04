package com.tencent.liteav.thumbplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.r;
import com.tencent.liteav.txcplayer.a;
import com.tencent.liteav.txcplayer.b;
import com.tencent.liteav.txcplayer.c;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.model.TXSubtitleRenderModel;
import com.tencent.liteav.txcplayer.model.c;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.thumbplayer.api.ITPModuleLoader;
import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.ITPPlayerListener;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerFactory;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaAssetExtraParam;
import com.tencent.thumbplayer.api.composition.ITPMediaAssetOrderedMap;
import com.tencent.thumbplayer.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.api.composition.ITPMediaUrlAsset;
import com.tencent.thumbplayer.api.composition.TPMediaCompositionFactory;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.api.report.TPDefaultReportInfo;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.trtc.TRTCCloudDef;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class ThumbMediaPlayer extends a implements b {
    private static final String THUMB_PLAYER_GUID = "liteav_tbplayer_android_";
    private static final int THUMB_PLAYER_PLATFORM_ID = 2330303;

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f31296a = 0;
    private static volatile boolean mSDKInited = false;
    private e mConfig;
    private String mDataSource;
    private boolean mIsLooping;
    private Map<String, Object> mPrivateConfig;
    private float mRate;
    private boolean mReuseSurfaceTexture;
    private boolean mScreenOnWhilePlaying;
    private Surface mSurface;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceTexture mSurfaceTexture;
    private c mSurfaceTextureHost;
    private volatile ITPPlayer mTPPPlayer;
    private final String TAG = ThumbMediaPlayer.class.getName();
    private boolean mEnableAccurateSeek = false;
    private PowerManager.WakeLock mWakeLock = null;
    private int mBitrateIndex = -1000;
    private long mCachedBytes = 0;
    private long mBitrate = 0;
    private long mTcpSpeed = 0;
    private long mTotalFileSize = 0;
    private boolean mHasReceiveFirstVideoRenderEvent = false;
    private Object mTrtcCloud = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class TRTCCloudClassInvokeHelper {
        private static final String TAG = "com.tencent.liteav.thumbplayer.ThumbMediaPlayer$TRTCCloudClassInvokeHelper";
        private static TRTCCloudClassInvokeHelper mInstance;
        private Class mClazzTRTCAudioFrame;
        private Class mClazzTRTCCloud;
        private Field mFieldChannel;
        private Field mFieldData;
        private Field mFieldSampleRate;
        private Method mMethodMixExternalAudioFrame;

        private TRTCCloudClassInvokeHelper(Object obj) {
            if (obj != null) {
                try {
                    this.mClazzTRTCCloud = obj.getClass();
                    this.mClazzTRTCAudioFrame = TRTCCloudDef.TRTCAudioFrame.class;
                    this.mFieldData = TRTCCloudDef.TRTCAudioFrame.class.getDeclaredField("data");
                    this.mFieldSampleRate = this.mClazzTRTCAudioFrame.getDeclaredField("sampleRate");
                    this.mFieldChannel = this.mClazzTRTCAudioFrame.getDeclaredField("channel");
                    this.mMethodMixExternalAudioFrame = this.mClazzTRTCCloud.getDeclaredMethod("mixExternalAudioFrame", this.mClazzTRTCAudioFrame);
                } catch (Exception e10) {
                    String str = TAG;
                    LiteavLog.e(str, "init TRTCCloudClassInvokeWrapper error: " + e10.getMessage());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static TRTCCloudClassInvokeHelper getInstance(Object obj) {
            if (mInstance == null) {
                mInstance = new TRTCCloudClassInvokeHelper(obj);
            }
            return mInstance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void mixExternalAudioFrame(Object obj, TPAudioFrameBuffer tPAudioFrameBuffer) {
            if (obj != null) {
                try {
                    Object newInstance = this.mClazzTRTCAudioFrame.newInstance();
                    this.mFieldData.set(newInstance, tPAudioFrameBuffer.data[0]);
                    this.mFieldSampleRate.set(newInstance, Integer.valueOf(tPAudioFrameBuffer.sampleRate));
                    this.mFieldChannel.set(newInstance, Integer.valueOf(tPAudioFrameBuffer.channels));
                    this.mMethodMixExternalAudioFrame.invoke(obj, newInstance);
                } catch (Exception e10) {
                    LiteavLog.e(TAG, "mixExternalAudioFrame method error ", e10);
                }
            }
        }
    }

    /* loaded from: classes4.dex */
    static class TXCDLProxyLogListener implements ITPDLProxyLogListener {
        int logLevel;

        private TXCDLProxyLogListener() {
            this.logLevel = LiteavLog.getLogLevel();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int d(String str, int i9, String str2, String str3) {
            if (this.logLevel <= LiteavLog.b.kAll.mNativeValue) {
                LiteavLog.d(str2, "[" + str + "," + i9 + "] " + str3);
                return 0;
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int e(String str, int i9, String str2, String str3) {
            if (this.logLevel <= LiteavLog.b.kError.mNativeValue) {
                LiteavLog.e(str2, "[" + str + "," + i9 + "] " + str3);
                return 0;
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int i(String str, int i9, String str2, String str3) {
            if (this.logLevel <= LiteavLog.b.kInfo.mNativeValue) {
                LiteavLog.i(str2, "[" + str + "," + i9 + "] " + str3);
                return 0;
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int w(String str, int i9, String str2, String str3) {
            if (this.logLevel <= LiteavLog.b.kWarning.mNativeValue) {
                LiteavLog.w(str2, "[" + str + "," + i9 + "] " + str3);
                return 0;
            }
            return 0;
        }
    }

    /* loaded from: classes4.dex */
    static class TXCTPPlayerOnLogListener implements TPPlayerMgr.OnLogListener {
        int logLevel;

        private TXCTPPlayerOnLogListener() {
            this.logLevel = LiteavLog.getLogLevel();
        }

        @Override // com.tencent.thumbplayer.api.TPPlayerMgr.OnLogListener
        public int d(String str, String str2) {
            if (this.logLevel <= LiteavLog.b.kAll.mNativeValue) {
                LiteavLog.d(str, str2);
                return 0;
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.api.TPPlayerMgr.OnLogListener
        public int e(String str, String str2) {
            if (this.logLevel <= LiteavLog.b.kError.mNativeValue) {
                LiteavLog.e(str, str2);
                return 0;
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.api.TPPlayerMgr.OnLogListener
        public int i(String str, String str2) {
            if (this.logLevel <= LiteavLog.b.kInfo.mNativeValue) {
                LiteavLog.i(str, str2);
                return 0;
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.api.TPPlayerMgr.OnLogListener
        public int v(String str, String str2) {
            if (this.logLevel <= LiteavLog.b.kAll.mNativeValue) {
                LiteavLog.v(str, str2);
                return 0;
            }
            return 0;
        }

        @Override // com.tencent.thumbplayer.api.TPPlayerMgr.OnLogListener
        public int w(String str, String str2) {
            if (this.logLevel <= LiteavLog.b.kWarning.mNativeValue) {
                LiteavLog.w(str, str2);
                return 0;
            }
            return 0;
        }
    }

    public ThumbMediaPlayer(Context context) {
        synchronized (ThumbMediaPlayer.class) {
            if (!mSDKInited) {
                setTPSystemInfo();
                setTPPLibCustomLoader();
                TPPlayerMgr.initSdk(context, THUMB_PLAYER_GUID + context.getPackageName(), THUMB_PLAYER_PLATFORM_ID);
                TPPlayerMgr.setDebugEnable(false);
                TPPlayerMgr.setOnLogListener(new TXCTPPlayerOnLogListener());
                mSDKInited = true;
            }
        }
        if (this.mTPPPlayer == null) {
            TPPlayerMgr.setDebugEnable(false);
            this.mTPPPlayer = TPPlayerFactory.createTPPlayer(context);
            new ThumbMediaPlayerListener(this).attachToPlayer();
        }
        setCustomReportData();
    }

    private TPSubtitleRenderModel convertToTPSubtitleRenderModel(TXSubtitleRenderModel tXSubtitleRenderModel) {
        int i9;
        TPSubtitleRenderModel tPSubtitleRenderModel = new TPSubtitleRenderModel();
        int i10 = tXSubtitleRenderModel.canvasHeight;
        if (i10 != 0 && (i9 = tXSubtitleRenderModel.canvasWidth) != 0) {
            tPSubtitleRenderModel.canvasWidth = i9;
            tPSubtitleRenderModel.canvasHeight = i10;
            long j10 = tPSubtitleRenderModel.paramFlags | 1 | 2;
            tPSubtitleRenderModel.paramFlags = j10;
            float f10 = tXSubtitleRenderModel.fontSize;
            if (f10 != 0.0f) {
                tPSubtitleRenderModel.fontSize = f10;
                tPSubtitleRenderModel.paramFlags = j10 | 4;
            }
            float f11 = tXSubtitleRenderModel.outlineWidth;
            if (f11 != 0.0f) {
                tPSubtitleRenderModel.outlineWidth = f11;
                tPSubtitleRenderModel.paramFlags |= 16;
            }
            float f12 = tXSubtitleRenderModel.lineSpace;
            if (f12 != 0.0f) {
                tPSubtitleRenderModel.lineSpace = f12;
                tPSubtitleRenderModel.paramFlags |= 64;
            }
        }
        float f13 = tXSubtitleRenderModel.fontScale;
        if (f13 != 0.0f) {
            tPSubtitleRenderModel.fontScale = f13;
            tPSubtitleRenderModel.paramFlags |= 2048;
        }
        String str = tXSubtitleRenderModel.familyName;
        if (str != null) {
            tPSubtitleRenderModel.familyName = str;
        }
        int i11 = tXSubtitleRenderModel.fontColor;
        if (i11 != 0) {
            tPSubtitleRenderModel.fontColor = i11;
            tPSubtitleRenderModel.paramFlags |= 8;
        }
        if (tXSubtitleRenderModel.isBondFontStyle) {
            tPSubtitleRenderModel.fontStyleFlags |= 1;
            tPSubtitleRenderModel.paramFlags |= 1024;
        }
        int i12 = tXSubtitleRenderModel.outlineColor;
        if (i12 != 0) {
            tPSubtitleRenderModel.outlineColor = i12;
            tPSubtitleRenderModel.paramFlags |= 32;
        }
        float f14 = tXSubtitleRenderModel.startMargin;
        if (f14 != 0.0f) {
            tPSubtitleRenderModel.lineSpace = f14;
            tPSubtitleRenderModel.paramFlags |= 128;
        }
        float f15 = tXSubtitleRenderModel.endMargin;
        if (f15 != 0.0f) {
            tPSubtitleRenderModel.endMargin = f15;
            tPSubtitleRenderModel.paramFlags |= 256;
        }
        float f16 = tXSubtitleRenderModel.verticalMargin;
        if (f16 != 0.0f) {
            tPSubtitleRenderModel.verticalMargin = f16;
            tPSubtitleRenderModel.paramFlags |= 512;
        }
        return tPSubtitleRenderModel;
    }

    private ITPMediaAsset handleDRMAsset(String str) {
        Map<String, Object> map = this.mPrivateConfig;
        if (map != null) {
            Object obj = map.get("TXC_DRM_ENABLE");
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                Object obj2 = this.mPrivateConfig.get("TXC_DRM_KEY_URL");
                Object obj3 = this.mPrivateConfig.get("TXC_DRM_PROVISION_URL");
                if ((obj2 instanceof String) && (obj3 instanceof String)) {
                    String str2 = (String) obj2;
                    if (!TextUtils.isEmpty(str2)) {
                        String str3 = (String) obj3;
                        if (!TextUtils.isEmpty(str3)) {
                            ITPMediaDRMAsset createMediaDRMAsset = TPMediaCompositionFactory.createMediaDRMAsset(0, str);
                            createMediaDRMAsset.setDrmProperty(ITPMediaDRMAsset.TP_PLAYER_DRM_PROPERTY_PROVISION_URL, str3);
                            createMediaDRMAsset.setDrmProperty(ITPMediaDRMAsset.TP_PLAYER_DRM_PROPERTY_LICENSE_URL, str2);
                            createMediaDRMAsset.setDrmProperty(ITPMediaDRMAsset.TP_PLAYER_DRM_PROPERTY_LICENSE_STANDARDIZATION, "1");
                            return createMediaDRMAsset;
                        }
                    }
                }
                Object obj4 = this.mPrivateConfig.get("TXC_DRM_SIMPLE_AES_URL");
                if (obj4 instanceof String) {
                    String str4 = (String) obj4;
                    if (TextUtils.isEmpty(str4)) {
                        return null;
                    }
                    return TPMediaCompositionFactory.createMediaUrlAsset(str4);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private ITPMediaUrlAsset handleUrlAsset(String str) {
        e eVar = this.mConfig;
        if (eVar != null) {
            int i9 = eVar.f31376r;
            long j10 = eVar.f31377s;
            if (i9 > 0 || j10 > 0) {
                ITPMediaUrlAsset createMediaUrlAsset = TPMediaCompositionFactory.createMediaUrlAsset(str);
                ITPMediaAssetExtraParam createMediaAssetExtraParam = TPMediaCompositionFactory.createMediaAssetExtraParam();
                ITPMediaAssetOrderedMap createMediaAssetOrderedMap = TPMediaCompositionFactory.createMediaAssetOrderedMap();
                String a10 = com.tencent.liteav.txcplayer.b.a.a(Uri.parse(str).getPath());
                boolean z10 = false;
                if (!TextUtils.isEmpty(a10) && a10.toLowerCase().endsWith("mpd")) {
                    if (i9 > 0) {
                        createMediaAssetOrderedMap.addKeyValue(ITPMediaAssetOrderedMap.TP_PLAYER_EXTRA_PARAM_DASH_TRACK_BANDWIDTH, String.valueOf(i9));
                    } else {
                        createMediaAssetOrderedMap.addKeyValue(ITPMediaAssetOrderedMap.TP_PLAYER_EXTRA_PARAM_DASH_TRACK_LUMA_SAMPLES, String.valueOf(j10));
                    }
                    z10 = true;
                }
                if (z10) {
                    createMediaAssetExtraParam.setExtraObject(ITPMediaAssetExtraParam.TP_PLAYER_EXTRA_PARAM_PREFERRED_VIDEO, createMediaAssetOrderedMap);
                    createMediaUrlAsset.setExtraParam(createMediaAssetExtraParam);
                    return createMediaUrlAsset;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private void setCustomReportData() {
        ITPBusinessReportManager reportManager = this.mTPPPlayer.getReportManager();
        TPDefaultReportInfo tPDefaultReportInfo = new TPDefaultReportInfo() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.2
            @Override // com.tencent.thumbplayer.api.report.TPDefaultReportInfo
            public int getPlayType() {
                return 0;
            }
        };
        if (TextUtils.isEmpty(null)) {
            return;
        }
        try {
            tPDefaultReportInfo.scenesId = Integer.parseInt(null);
        } catch (Exception e10) {
            String str = this.TAG;
            LiteavLog.w(str, "set scenesId fail for parse appid:" + ((String) null) + " ,error=" + e10.getMessage());
        }
        reportManager.setReportInfoGetter(tPDefaultReportInfo);
    }

    private void setEnableMixExternalAudioFrame() {
        LiteavLog.i(this.TAG, "setEnableMixExternalAudioFrame");
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(404, -1L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(120, true));
        this.mTPPPlayer.setOnAudioFrameOutputListener(new ITPPlayerListener.IOnAudioFrameOutputListener() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.5
            @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioFrameOutputListener
            public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
                if (ThumbMediaPlayer.this.mTrtcCloud != null) {
                    TRTCCloudClassInvokeHelper.getInstance(ThumbMediaPlayer.this.mTrtcCloud).mixExternalAudioFrame(ThumbMediaPlayer.this.mTrtcCloud, tPAudioFrameBuffer);
                }
            }
        });
    }

    private void setSurfaceToPlayer(Surface surface) {
        this.mSurfaceHolder = null;
        this.mSurface = surface;
        this.mTPPPlayer.setSurface(surface);
        String str = this.TAG;
        LiteavLog.i(str, "setSurface mSurface:" + this.mSurface);
    }

    private void setTPPLibCustomLoader() {
        try {
            if (TextUtils.isEmpty(r.b())) {
                return;
            }
            TPPlayerMgr.setLibLoader(new ITPModuleLoader() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.1
                @Override // com.tencent.thumbplayer.api.ITPModuleLoader
                public void loadLibrary(String str, String str2) {
                    r.a(str);
                }
            });
        } catch (Throwable th2) {
            String str = this.TAG;
            LiteavLog.e(str, "setTPPLibCustomLoader, ex = " + th2.getMessage());
        }
    }

    private void setTPSystemInfo() {
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_MODEL, LiteavSystemInfo.getModel());
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_MANUFACTURER, LiteavSystemInfo.getManufacturer());
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_VERSION_RELEASE, LiteavSystemInfo.getSystemOSVersion());
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_BOARD, LiteavSystemInfo.getBoard());
    }

    private void setVideoInfo(String str) {
        String d10;
        if (str == null || this.mTPPPlayer == null) {
            return;
        }
        TPVideoInfo.Builder builder = new TPVideoInfo.Builder();
        TPDownloadParamData tPDownloadParamData = new TPDownloadParamData(0);
        int indexOf = str.indexOf(63);
        String a10 = com.tencent.liteav.txcplayer.b.a.a(Uri.parse(indexOf > 0 ? str.substring(0, indexOf) : str).getPath());
        if (!TextUtils.isEmpty(a10) && a10.endsWith("hls")) {
            String substring = str.substring(0, str.indexOf(".hls") + 4);
            d10 = substring.substring(substring.lastIndexOf(47) + 1);
            TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID).updateStoragePath(substring.substring(0, substring.lastIndexOf(47)));
            tPDownloadParamData.setDlType(3);
            tPDownloadParamData.setOffline(true);
        } else {
            d10 = com.tencent.liteav.txcplayer.b.a.d(str);
        }
        builder.fileId(d10);
        e eVar = this.mConfig;
        if (eVar != null && eVar.f31381w && d10.endsWith(".hls")) {
            if (this.mConfig.A == 2) {
                tPDownloadParamData.setDlType(5);
            } else {
                tPDownloadParamData.setDlType(3);
            }
        }
        HashMap hashMap = new HashMap();
        e eVar2 = this.mConfig;
        int i9 = eVar2.f31372n;
        if (i9 > 0 && !eVar2.f31374p) {
            hashMap.put(TPDownloadProxyEnum.DLPARAM_BUFFER_SIZE, Integer.valueOf(i9 * 1024 * 1024));
        } else {
            int i10 = eVar2.f31371m;
            if (i10 > 0) {
                hashMap.put(TPDownloadProxyEnum.DLPARAM_BUFFER_SIZE, Integer.valueOf(i10 * 1024 * 1024));
            }
        }
        if (hashMap.size() > 0) {
            tPDownloadParamData.setExtInfoMap(hashMap);
        }
        builder.downloadParam(tPDownloadParamData);
        this.mTPPPlayer.setVideoInfo(builder.build());
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void addSubtitleSource(String str, String str2, String str3) {
        this.mTPPPlayer.addSubtitleSource(str, str3, str2);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void attachTRTC(Object obj) {
        this.mTrtcCloud = obj;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2).invoke(this.mTrtcCloud, Boolean.FALSE, Boolean.TRUE);
                LiteavLog.i(this.TAG, "attachTRTC enableMixExternalAudioFrame");
                setEnableMixExternalAudioFrame();
            } catch (Exception e10) {
                String str = this.TAG;
                LiteavLog.e(str, "attachTRTC exception : " + e10.toString());
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void deselectTrack(int i9) {
        this.mTPPPlayer.deselectTrack(i9, i9);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void detachTRTC() {
        LiteavLog.i(this.TAG, "detachTRTC");
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2);
                Object obj2 = this.mTrtcCloud;
                Boolean bool = Boolean.FALSE;
                declaredMethod.invoke(obj2, bool, bool);
            } catch (Exception e10) {
                String str = this.TAG;
                LiteavLog.e(str, "detachTRTC exception : " + e10.toString());
            }
            this.mTrtcCloud = null;
            TRTCCloudClassInvokeHelper unused = TRTCCloudClassInvokeHelper.mInstance = null;
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void enableAdaptiveBitrate() {
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, 1L));
        this.mBitrateIndex = -1;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getBitrateIndex() {
        if (this.mBitrateIndex == -1000) {
            TPProgramInfo[] programInfo = this.mTPPPlayer.getProgramInfo();
            int i9 = 0;
            if (programInfo != null && programInfo.length > 0) {
                int length = programInfo.length;
                while (true) {
                    if (i9 >= length) {
                        break;
                    }
                    TPProgramInfo tPProgramInfo = programInfo[i9];
                    if (tPProgramInfo.actived) {
                        this.mBitrateIndex = tPProgramInfo.programId;
                        break;
                    }
                    i9++;
                }
            } else {
                TPTrackInfo[] trackInfo = this.mTPPPlayer.getTrackInfo();
                if (trackInfo != null && trackInfo.length > 0) {
                    while (true) {
                        if (i9 < trackInfo.length) {
                            if (trackInfo[i9].isSelected && trackInfo[i9].trackType == 1) {
                                this.mBitrateIndex = i9;
                                break;
                            }
                            i9++;
                        } else {
                            break;
                        }
                    }
                }
            }
        }
        String str = this.TAG;
        LiteavLog.i(str, "getBitrateIndex ：" + this.mBitrateIndex);
        return this.mBitrateIndex;
    }

    public e getConfig() {
        return this.mConfig;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getCurrentPosition() {
        return this.mTPPPlayer.getCurrentPositionMs();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getDuration() {
        return this.mTPPPlayer.getDurationMs();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public com.tencent.liteav.txcplayer.model.b getMediaInfo() {
        String[] split;
        LiteavLog.i(this.TAG, "getMediaInfo");
        com.tencent.liteav.txcplayer.model.b bVar = new com.tencent.liteav.txcplayer.model.b();
        bVar.f31390a = "thumbplayer";
        bVar.f31395f = new com.tencent.liteav.txcplayer.model.c();
        String propertyString = this.mTPPPlayer.getPropertyString(0);
        if (propertyString != null && propertyString.length() > 0 && (split = propertyString.split("\\n")) != null && split.length > 0) {
            bVar.f31395f.f31397b = getSupportedBitrates();
            int i9 = this.mBitrateIndex;
            if (i9 == -1000) {
                i9 = 0;
            }
            bVar.f31395f.f31400e = new c.a(i9);
            bVar.f31395f.f31399d = new c.a(i9);
            com.tencent.liteav.txcplayer.model.c cVar = bVar.f31395f;
            cVar.f31398c.add(cVar.f31400e);
            com.tencent.liteav.txcplayer.model.c cVar2 = bVar.f31395f;
            cVar2.f31398c.add(cVar2.f31399d);
            for (String str : split) {
                if (str != null) {
                    String trim = str.substring(str.indexOf(ContainerUtils.KEY_VALUE_DELIMITER) + 1, str.length()).trim();
                    if (str.contains("ContainerFormat=")) {
                        bVar.f31395f.f31396a = trim;
                    } else if (str.contains("VideoCodec=")) {
                        bVar.f31391b = "avcodec";
                        bVar.f31392c = trim;
                        bVar.f31395f.f31399d.f31402b = trim;
                    } else if (str.contains("VideoProfile=")) {
                        bVar.f31395f.f31399d.f31403c = trim;
                    } else if (str.contains("Width=")) {
                        bVar.f31395f.f31399d.f31405e = Integer.valueOf(trim).intValue();
                    } else if (str.contains("Height=")) {
                        bVar.f31395f.f31399d.f31406f = Integer.valueOf(trim).intValue();
                    } else if (str.contains("VideoBitRate=")) {
                        bVar.f31395f.f31399d.f31404d = Integer.valueOf(trim).intValue();
                    } else if (str.contains("AudioCodec=")) {
                        bVar.f31393d = "avcodec";
                        bVar.f31394e = trim;
                        bVar.f31395f.f31400e.f31402b = trim;
                    } else if (str.contains("AudioProfile=")) {
                        bVar.f31395f.f31400e.f31403c = trim;
                    } else if (str.contains("AudioBitRate=")) {
                        bVar.f31395f.f31400e.f31404d = Integer.valueOf(trim).intValue();
                    } else if (str.contains("SampleRate=")) {
                        bVar.f31395f.f31400e.f31407g = Integer.valueOf(trim).intValue();
                    }
                }
            }
        }
        return bVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getPlayableDurationMs() {
        return this.mTPPPlayer.getPlayableDurationMs();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getPropertyLong(int i9) throws IllegalStateException {
        if (i9 == 208) {
            i9 = 208;
        } else if (i9 != 209) {
            switch (i9) {
                case 100:
                    i9 = 100;
                    break;
                case 101:
                    i9 = 101;
                    break;
                case 102:
                    i9 = 102;
                    break;
                case 103:
                    i9 = 103;
                    break;
                default:
                    switch (i9) {
                        case 201:
                            i9 = 201;
                            break;
                        case 202:
                            i9 = 202;
                            break;
                        case 203:
                            i9 = 203;
                            break;
                        case 204:
                            i9 = 204;
                            break;
                        case 205:
                            i9 = 205;
                            break;
                        case 206:
                            i9 = 206;
                            break;
                        default:
                            switch (i9) {
                                case 301:
                                    return this.mBitrate;
                                case 302:
                                    long playableDurationMs = ((this.mBitrate * (this.mTPPPlayer.getPlayableDurationMs() - this.mTPPPlayer.getCurrentPositionMs())) / 1000) / 8;
                                    if (playableDurationMs < 0) {
                                        return 0L;
                                    }
                                    return playableDurationMs;
                                case 303:
                                    return this.mTcpSpeed;
                            }
                    }
            }
        } else {
            i9 = 209;
        }
        return this.mTPPPlayer.getPropertyLong(i9);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public float getRate() {
        return this.mRate;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public ArrayList<com.tencent.liteav.txcplayer.model.a> getSupportedBitrates() {
        ArrayList<com.tencent.liteav.txcplayer.model.a> arrayList;
        TPProgramInfo[] programInfo = this.mTPPPlayer.getProgramInfo();
        if (programInfo != null && programInfo.length > 0) {
            arrayList = new ArrayList<>(programInfo.length);
            for (TPProgramInfo tPProgramInfo : programInfo) {
                if (tPProgramInfo != null) {
                    com.tencent.liteav.txcplayer.model.a aVar = new com.tencent.liteav.txcplayer.model.a();
                    String[] split = tPProgramInfo.resolution.split(x.f19108w);
                    if (split != null && split.length == 2) {
                        aVar.f31387b = Integer.valueOf(split[0]).intValue();
                        aVar.f31388c = Integer.valueOf(split[1]).intValue();
                    }
                    int i9 = (int) tPProgramInfo.bandwidth;
                    aVar.f31389d = i9;
                    int i10 = tPProgramInfo.programId;
                    aVar.f31386a = i10;
                    if (i10 == this.mBitrateIndex || tPProgramInfo.actived) {
                        this.mBitrate = i9;
                    }
                    arrayList.add(aVar);
                    LiteavLog.i(this.TAG, "getSupportedBitrates item index：" + aVar.f31386a + ":width:" + aVar.f31387b + ":height:" + aVar.f31388c + ":bitrate:" + aVar.f31389d);
                }
            }
        } else {
            TPTrackInfo[] trackInfo = this.mTPPPlayer.getTrackInfo();
            if (trackInfo == null || trackInfo.length <= 0) {
                arrayList = null;
            } else {
                arrayList = new ArrayList<>(trackInfo.length);
                for (int i11 = 0; i11 < trackInfo.length; i11++) {
                    if (trackInfo[i11] != null && trackInfo[i11].trackType == 1) {
                        com.tencent.liteav.txcplayer.model.a aVar2 = new com.tencent.liteav.txcplayer.model.a();
                        aVar2.f31387b = trackInfo[i11].dashFormat.width;
                        aVar2.f31388c = trackInfo[i11].dashFormat.height;
                        int i12 = trackInfo[i11].dashFormat.bandwidth;
                        aVar2.f31389d = i12;
                        aVar2.f31386a = i11;
                        if (i11 == this.mBitrateIndex || trackInfo[i11].isSelected) {
                            this.mBitrate = i12;
                        }
                        arrayList.add(aVar2);
                        LiteavLog.i(this.TAG, "getSupportedBitrates item index：" + aVar2.f31386a + ":width:" + aVar2.f31387b + ":height:" + aVar2.f31388c + ":bitrate:" + aVar2.f31389d);
                    }
                }
            }
        }
        LiteavLog.i(this.TAG, "mBitrateIndex:" + this.mBitrateIndex + ":mBitrate:" + this.mBitrate);
        return arrayList;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public Surface getSurface() {
        String str = this.TAG;
        LiteavLog.i(str, "getSurface ：" + this.mSurface);
        return this.mSurface;
    }

    @Override // com.tencent.liteav.txcplayer.b
    public SurfaceTexture getSurfaceTexture() {
        return this.mSurfaceTexture;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ITPPlayer getTPPPlayer() {
        return this.mTPPPlayer;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public TPTrackInfo[] getTrackInfo() {
        return this.mTPPPlayer.getTrackInfo();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoHeight() {
        try {
            return this.mTPPPlayer.getVideoHeight();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoSarDen() {
        return 0;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoSarNum() {
        return 0;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoWidth() {
        try {
            return this.mTPPPlayer.getVideoWidth();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isLooping() {
        String str = this.TAG;
        LiteavLog.i(str, "isLooping ：" + this.mIsLooping);
        return this.mIsLooping;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isPlayable() {
        return true;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isPlaying() {
        try {
            return this.mTPPPlayer.getCurrentState() == 5;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }

    public void onReceiveFirstVideoRenderEvent() {
        if (getTXCVodVideoViewTargetState() != 4 && (getConfig().f31374p || this.mTPPPlayer.getCurrentState() == 5)) {
            notifyOnInfo(TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET, 0, 0, null);
            notifyOnInfo(2026, 0, 0, null);
            notifyOnInfo(2003, 0, 0, null);
            this.mHasReceiveFirstVideoRenderEvent = false;
            return;
        }
        this.mHasReceiveFirstVideoRenderEvent = true;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void pause() throws IllegalStateException {
        this.mTPPPlayer.pause();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void prepareAsync() throws IllegalStateException {
        try {
            LiteavLog.i(this.TAG, "prepareAsync");
            this.mTPPPlayer.prepareAsync();
        } catch (Throwable th2) {
            th2.printStackTrace();
            throw new IllegalStateException(th2);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void publishAudioToNetwork() {
        LiteavLog.i(this.TAG, "publishAudioToNetwork");
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2);
                Object obj2 = this.mTrtcCloud;
                Boolean bool = Boolean.TRUE;
                declaredMethod.invoke(obj2, bool, bool);
            } catch (Exception e10) {
                String str = this.TAG;
                LiteavLog.e(str, "publishAudioToNetwork exception : " + e10.toString());
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void release() {
        releaseSurfaceTexture();
        detachTRTC();
        com.tencent.liteav.txcplayer.common.a.a().execute(new Runnable() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.4
            @Override // java.lang.Runnable
            public void run() {
                ThumbMediaPlayer.this.mTPPPlayer.release();
            }
        });
    }

    public void releaseSurfaceTexture() {
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture == null || this.mReuseSurfaceTexture) {
            return;
        }
        com.tencent.liteav.txcplayer.c cVar = this.mSurfaceTextureHost;
        if (cVar != null) {
            cVar.a(surfaceTexture);
        } else {
            surfaceTexture.release();
        }
        this.mSurfaceTexture = null;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void reset() {
        releaseSurfaceTexture();
        this.mTPPPlayer.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_PLAYER_START, Boolean.FALSE);
        if (this.mTPPPlayer != null) {
            this.mTPPPlayer.reset();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void seekTo(long j10) throws IllegalStateException {
        String str = this.TAG;
        LiteavLog.i(str, "seekTo msec: " + j10 + "：mEnableAccurateSeek：" + this.mEnableAccurateSeek);
        if (this.mEnableAccurateSeek) {
            this.mTPPPlayer.seekTo((int) j10, 3);
        } else {
            this.mTPPPlayer.seekTo((int) j10);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void selectTrack(int i9) {
        this.mTPPPlayer.selectTrack(i9, i9);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAudioStreamType(int i9) {
        LiteavLog.i(this.TAG, "setAudioStreamType：".concat(String.valueOf(i9)));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAudioVolume(int i9) {
        LiteavLog.i(this.TAG, "setAudioVolume： ".concat(String.valueOf(i9)));
        if (i9 == 0) {
            this.mTPPPlayer.setOutputMute(true);
        } else {
            this.mTPPPlayer.setOutputMute(false);
            this.mTPPPlayer.setAudioGainRatio(i9 / 100.0f);
        }
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Integer.TYPE;
                cls.getDeclaredMethod("setMixExternalAudioVolume", cls2, cls2).invoke(this.mTrtcCloud, Integer.valueOf(i9), Integer.valueOf(i9));
            } catch (Exception e10) {
                String str = this.TAG;
                LiteavLog.e(str, "setAudioVolume exception : " + e10.toString());
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setBitrateIndex(int i9) {
        LiteavLog.i(this.TAG, "setBitrateIndex ：".concat(String.valueOf(i9)));
        if (this.mBitrateIndex == -1) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, 0L));
        }
        if (i9 != -1) {
            TPProgramInfo[] programInfo = this.mTPPPlayer.getProgramInfo();
            if (programInfo != null && i9 >= 0 && i9 < programInfo.length) {
                this.mTPPPlayer.selectProgram(i9, 0L);
            } else {
                TPTrackInfo[] trackInfo = this.mTPPPlayer.getTrackInfo();
                if (trackInfo != null && i9 >= 0 && i9 < trackInfo.length && trackInfo[i9].trackType == 1) {
                    this.mTPPPlayer.selectTrack(i9, -1L);
                }
            }
        }
        this.mBitrateIndex = i9;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setConfig(e eVar) {
        int i9;
        if (eVar == null) {
            return;
        }
        this.mConfig = eVar;
        String a10 = com.tencent.liteav.txcplayer.common.b.a();
        TPPlayerConfig.setProxyDataDir(a10);
        if (com.tencent.liteav.txcplayer.common.b.b() >= 0) {
            i9 = com.tencent.liteav.txcplayer.common.b.b();
        } else {
            i9 = this.mConfig.f31364f * 100;
        }
        if (i9 > 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("VodCacheReserveSizeMB", i9);
                TPPlayerConfig.parseHostConfig(new JSONObject().put(TPPlayerMgr.PROXY_HOST_KEY, jSONObject).toString());
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        setEnableAccurateSeek(eVar.f31367i);
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(100, eVar.f31373o));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(101, eVar.f31367i));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(102, 1000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(117, 40000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(103, 200L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(105, 1000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(106, 8000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(107, 30000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(108, eVar.f31361c * 1000.0f));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(109, eVar.f31359a));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, eVar.f31381w ? 1L : 0L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(180, eVar.f31379u));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(181, eVar.f31380v));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(200, 80L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(201, true));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(401, true));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(202, 2L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(203, eVar.f31362d ? 2L : 4L));
        if (this.mBitrateIndex != -1000) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(132, this.mBitrateIndex));
        }
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(133, eVar.f31377s));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(450, 1L));
        if (eVar.a() != null) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildObject(507, convertToTPSubtitleRenderModel(eVar.a())));
        }
        TPPlayerConfig.setP2PEnable(true);
        ITPDownloadProxy tPDownloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID);
        if (tPDownloadProxy != null) {
            tPDownloadProxy.updateStoragePath(a10);
            tPDownloadProxy.setMaxStorageSizeMB(i9);
            tPDownloadProxy.setLogListener(new TXCDLProxyLogListener());
        }
        setVideoInfo(eVar.f31375q);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(context, uri, null);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (this.mSurfaceTexture != null) {
            return;
        }
        if (surfaceHolder != null) {
            this.mSurface = surfaceHolder.getSurface();
        }
        this.mSurfaceHolder = surfaceHolder;
        this.mTPPPlayer.setSurfaceHolder(surfaceHolder);
    }

    void setEnableAccurateSeek(boolean z10) {
        this.mEnableAccurateSeek = z10;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setKeepInBackground(boolean z10) {
        LiteavLog.i(this.TAG, "setKeepInBackground none：".concat(String.valueOf(z10)));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setLogEnabled(boolean z10) {
        TPLogUtil.setDebugEnable(z10);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setLooping(boolean z10) {
        LiteavLog.i(this.TAG, "setLooping ：".concat(String.valueOf(z10)));
        this.mIsLooping = z10;
        this.mTPPPlayer.setLoopback(z10);
    }

    public void setMaxCacheSize(int i9) {
        TPPlayerMgr.setProxyMaxStorageSizeMB(i9);
    }

    @Override // com.tencent.liteav.txcplayer.a, com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setPrivateConfig(Map<String, Object> map) {
        this.mPrivateConfig = map;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setRate(float f10) {
        String str = this.TAG;
        LiteavLog.i(str, "setRate " + this.mRate);
        this.mRate = f10;
        this.mTPPPlayer.setPlaySpeedRatio(f10);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setScreenOnWhilePlaying(boolean z10) {
        LiteavLog.i(this.TAG, "setScreenOnWhilePlaying(true) screenOn:".concat(String.valueOf(z10)));
        if (this.mScreenOnWhilePlaying != z10) {
            if (z10 && this.mSurfaceHolder == null) {
                LiteavLog.w(this.TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z10;
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.setKeepScreenOn(z10);
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setSurface(Surface surface) {
        if (this.mSurfaceTexture == null) {
            setSurfaceToPlayer(surface);
        }
        String str = this.TAG;
        LiteavLog.i(str, "setSurface mSurface:" + this.mSurface);
    }

    @Override // com.tencent.liteav.txcplayer.b
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        if (this.mSurfaceTexture == surfaceTexture) {
            return;
        }
        releaseSurfaceTexture();
        this.mSurfaceTexture = surfaceTexture;
        if (surfaceTexture == null) {
            this.mSurface = null;
            setSurfaceToPlayer(null);
            return;
        }
        if (this.mSurface == null) {
            this.mSurface = new Surface(surfaceTexture);
        }
        setSurfaceToPlayer(this.mSurface);
    }

    @Override // com.tencent.liteav.txcplayer.b
    public void setSurfaceTextureHost(com.tencent.liteav.txcplayer.c cVar) {
        this.mSurfaceTextureHost = cVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setWakeMode(Context context, int i9) {
        boolean z10;
        LiteavLog.i(this.TAG, "setWakeMode ：".concat(String.valueOf(i9)));
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                z10 = true;
                this.mWakeLock.release();
            } else {
                z10 = false;
            }
            this.mWakeLock = null;
        } else {
            z10 = false;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i9 | 536870912, ThumbMediaPlayer.class.getName());
        this.mWakeLock = newWakeLock;
        newWakeLock.setReferenceCounted(false);
        if (z10) {
            this.mWakeLock.acquire();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void start() throws IllegalStateException {
        LiteavLog.i(this.TAG, "TPPlayer start");
        if (this.mHasReceiveFirstVideoRenderEvent) {
            notifyOnInfo(TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET, 0, 0, null);
            notifyOnInfo(2026, 0, 0, null);
            notifyOnInfo(2003, 0, 0, null);
            this.mHasReceiveFirstVideoRenderEvent = false;
        }
        if (this.mConfig.f31371m > 0) {
            this.mTPPPlayer.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_BUFFER_SIZE_BYTE, Integer.valueOf(this.mConfig.f31371m * 1024 * 1024));
        }
        this.mTPPPlayer.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_PLAYER_START, Boolean.TRUE);
        this.mTPPPlayer.start();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void stop() throws IllegalStateException {
        com.tencent.liteav.txcplayer.common.a.a().execute(new Runnable() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ThumbMediaPlayer.this.mTPPPlayer.getCurrentState() == 10 || ThumbMediaPlayer.this.mTPPPlayer.getCurrentState() == 1) {
                        return;
                    }
                    ThumbMediaPlayer.this.mTPPPlayer.stop();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
        });
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void unpublishAudioToNetwork() {
        LiteavLog.i(this.TAG, "unpublishAudioToNetwork ：none");
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2).invoke(this.mTrtcCloud, Boolean.FALSE, Boolean.TRUE);
            } catch (Exception e10) {
                String str = this.TAG;
                LiteavLog.e(str, "unpublishAudioToNetwork exception : " + e10.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateBitrate(long j10) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 <= 0 || this.mTotalFileSize == j10) {
            return;
        }
        this.mTotalFileSize = j10;
        long duration = getDuration();
        if (duration <= 0 || i9 <= 0) {
            return;
        }
        this.mBitrate = ((j10 * 1000) * 8) / duration;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateTcpSpeed(long j10) {
        this.mTcpSpeed = j10;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        String uri2 = uri.toString();
        this.mDataSource = uri2;
        ITPMediaAsset handleDRMAsset = handleDRMAsset(uri2);
        if (handleDRMAsset != null) {
            TPPlayerConfig.setP2PEnable(false);
            this.mTPPPlayer.setDataSource(handleDRMAsset);
        } else if (uri2.contains(".hls?")) {
            TPPlayerConfig.setP2PEnable(true);
            this.mTPPPlayer.setDataSource(uri2.substring(uri2.indexOf(".hls?") + 5), map);
        } else {
            TPPlayerConfig.setP2PEnable(true);
            String a10 = com.tencent.liteav.txcplayer.b.a.a(Uri.parse(uri2).getPath());
            if (!TextUtils.isEmpty(a10) && a10.toLowerCase().endsWith("mpd")) {
                ITPMediaUrlAsset handleUrlAsset = handleUrlAsset(uri2);
                if (handleUrlAsset != null) {
                    if (map != null && map.size() > 0) {
                        handleUrlAsset.setHttpHeader(map);
                    }
                    this.mTPPPlayer.setDataSource(handleUrlAsset);
                    return;
                }
                this.mTPPPlayer.setDataSource(uri2, map);
                return;
            }
            this.mTPPPlayer.setDataSource(uri2, map);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        this.mTPPPlayer.setDataSource(ParcelFileDescriptor.dup(fileDescriptor));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(null, Uri.parse(str));
    }
}
