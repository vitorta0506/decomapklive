package com.tencent.thumbplayer.adapter.a.b;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.tencent.thumbplayer.adapter.a.b.c;
import com.tencent.thumbplayer.adapter.a.c;
import com.tencent.thumbplayer.adapter.g;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPCaptureCallBack;
import com.tencent.thumbplayer.api.TPCaptureParams;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.api.TPHlsTag;
import com.tencent.thumbplayer.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleData;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.core.common.TPAudioFrame;
import com.tencent.thumbplayer.core.common.TPDetailInfo;
import com.tencent.thumbplayer.core.common.TPGeneralError;
import com.tencent.thumbplayer.core.common.TPMediaTrackHlsTag;
import com.tencent.thumbplayer.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.core.common.TPPostProcessFrame;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.core.common.TPVideoFrame;
import com.tencent.thumbplayer.core.demuxer.ITPNativeDemuxerCallback;
import com.tencent.thumbplayer.core.demuxer.TPNativeRemoteSdpInfo;
import com.tencent.thumbplayer.core.imagegenerator.TPImageGeneratorParams;
import com.tencent.thumbplayer.core.player.ITPNativePlayerAudioFrameCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerEventRecordCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerPostProcessFrameCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerSubtitleFrameCallback;
import com.tencent.thumbplayer.core.player.ITPNativePlayerVideoFrameCallback;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.core.player.TPNativePlayer;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import com.tencent.thumbplayer.core.player.TPNativePlayerProgramInfo;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4.dex */
public class b implements com.tencent.thumbplayer.adapter.a.b {

    /* renamed from: a  reason: collision with root package name */
    static final Set<Integer> f33588a = new HashSet<Integer>() { // from class: com.tencent.thumbplayer.adapter.a.b.b.8
        {
            add(503);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private TPNativePlayer f33589b;

    /* renamed from: c  reason: collision with root package name */
    private TPNativePlayerInitConfig f33590c;

    /* renamed from: d  reason: collision with root package name */
    private a f33591d;

    /* renamed from: e  reason: collision with root package name */
    private g f33592e;

    /* renamed from: f  reason: collision with root package name */
    private com.tencent.thumbplayer.adapter.a.a f33593f;

    /* renamed from: h  reason: collision with root package name */
    private com.tencent.thumbplayer.e.a f33595h;

    /* renamed from: g  reason: collision with root package name */
    private TPSubtitleData f33594g = new TPSubtitleData();

    /* renamed from: i  reason: collision with root package name */
    private ITPNativePlayerMessageCallback f33596i = new ITPNativePlayerMessageCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.1
        private void a(int i9, Object obj) {
            if (b.this.f33591d != null) {
                Message.obtain(b.this.f33591d, i9, obj).sendToTarget();
            }
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onASyncCallResult(int i9, long j10, int i10, int i11) {
            com.tencent.thumbplayer.e.a aVar = b.this.f33595h;
            aVar.c("onASyncCallResult, callType:" + i9 + ", opaque:" + j10 + ", errorType:" + i10 + ", errorCode:" + i11);
            C0339b c0339b = new C0339b();
            c0339b.f33612a = i9;
            c0339b.f33613b = j10;
            c0339b.f33614c = i10;
            c0339b.f33615d = i11;
            a(1, c0339b);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onDetailInfo(TPDetailInfo tPDetailInfo) {
            com.tencent.thumbplayer.e.a aVar = b.this.f33595h;
            aVar.c("onDetailInfo, type:" + tPDetailInfo.type + ", time:" + tPDetailInfo.timeSince1970Us);
            a(5, tPDetailInfo);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onError(int i9, int i10) {
            com.tencent.thumbplayer.e.a aVar = b.this.f33595h;
            aVar.c("onError, msgType:" + i9 + ", errorCode:" + i10);
            c cVar = new c();
            cVar.f33616a = i9;
            cVar.f33617b = i10;
            a(4, cVar);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onInfoLong(int i9, long j10, long j11) {
            if (i9 == 253) {
                com.tencent.thumbplayer.adapter.a.b.a.b(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDrmType.class, (int) j10));
                return;
            }
            d dVar = new d();
            dVar.f33618a = i9;
            dVar.f33619b = j10;
            dVar.f33620c = j11;
            a(2, dVar);
        }

        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback
        public void onInfoObject(int i9, Object obj) {
            if (!b.this.d(i9)) {
                com.tencent.thumbplayer.e.a aVar = b.this.f33595h;
                aVar.c("onInfoObject, infoType:" + i9 + ", objParam:" + obj);
            }
            e eVar = new e();
            eVar.f33621a = i9;
            eVar.f33622b = obj;
            a(3, eVar);
        }
    };

    /* renamed from: j  reason: collision with root package name */
    private ITPNativePlayerAudioFrameCallback f33597j = new ITPNativePlayerAudioFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.2
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerAudioFrameCallback
        public void onAudioFrame(TPAudioFrame tPAudioFrame, int i9) {
            b.this.f33592e.a(com.tencent.thumbplayer.adapter.a.b.c.a(tPAudioFrame));
        }
    };

    /* renamed from: k  reason: collision with root package name */
    private ITPNativePlayerVideoFrameCallback f33598k = new ITPNativePlayerVideoFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.3
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerVideoFrameCallback
        public void onVideoFrame(TPVideoFrame tPVideoFrame, int i9) {
            b.this.f33592e.a(com.tencent.thumbplayer.adapter.a.b.c.a(tPVideoFrame));
        }
    };

    /* renamed from: l  reason: collision with root package name */
    private ITPNativePlayerSubtitleFrameCallback f33599l = new ITPNativePlayerSubtitleFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.4
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerSubtitleFrameCallback
        public void onSubtitleFrame(TPSubtitleFrame tPSubtitleFrame, int i9) {
            b.this.f33592e.a(com.tencent.thumbplayer.adapter.a.b.c.a(tPSubtitleFrame));
        }
    };

    /* renamed from: m  reason: collision with root package name */
    private ITPNativePlayerPostProcessFrameCallback f33600m = new ITPNativePlayerPostProcessFrameCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.5
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerPostProcessFrameCallback
        public TPPostProcessFrame onPostProcessFrame(TPPostProcessFrame tPPostProcessFrame, int i9) {
            TPPostProcessFrameBuffer b10;
            TPPostProcessFrameBuffer a10 = com.tencent.thumbplayer.adapter.a.b.c.a(tPPostProcessFrame);
            a10.eventFlag = i9;
            int i10 = tPPostProcessFrame.mediaType;
            if (i10 == 0) {
                b10 = b.this.f33592e.a(a10);
            } else if (i10 != 1) {
                return null;
            } else {
                b10 = b.this.f33592e.b(a10);
            }
            return com.tencent.thumbplayer.adapter.a.b.c.a(b10);
        }
    };

    /* renamed from: n  reason: collision with root package name */
    private ITPNativeDemuxerCallback f33601n = new ITPNativeDemuxerCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.6
        @Override // com.tencent.thumbplayer.core.demuxer.ITPNativeDemuxerCallback
        public TPNativeRemoteSdpInfo onSdpExchange(String str, int i9) {
            return com.tencent.thumbplayer.adapter.a.b.c.a(b.this.f33592e.a(str, i9));
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private ITPNativePlayerEventRecordCallback f33602o = new ITPNativePlayerEventRecordCallback() { // from class: com.tencent.thumbplayer.adapter.a.b.b.7
        @Override // com.tencent.thumbplayer.core.player.ITPNativePlayerEventRecordCallback
        public void onDrmInfo(TPGeneralPlayFlowParams.TPPlayerDrmParams tPPlayerDrmParams) {
            if (tPPlayerDrmParams == null) {
                b.this.f33595h.e("Native DrmInfo is null!");
                return;
            }
            b.this.f33595h.c("onDrmInfo");
            b.this.f33592e.a(com.tencent.thumbplayer.adapter.a.b.c.a(tPPlayerDrmParams));
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<b> f33611b;

        public a(Looper looper, b bVar) {
            super(looper);
            this.f33611b = new WeakReference<>(bVar);
        }

        private void a(@TPCommonEnum.NativeErrorType int i9, int i10) {
            b.this.f33592e.a(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapErrorType.class, i9), i10, 0L, 0L);
        }

        private void a(C0339b c0339b) {
            int i9 = c0339b.f33612a;
            if (i9 == 1) {
                b.this.b();
            } else if (i9 != 2) {
                b.this.a(c0339b);
            } else {
                b.this.c();
            }
        }

        private void a(d dVar) {
            int i9 = dVar.f33618a;
            if (i9 == 154) {
                b.this.d();
            } else if (i9 != 250) {
                b.this.a(i9, dVar);
            } else {
                b.this.a(dVar.f33619b, dVar.f33620c);
            }
        }

        private void a(e eVar) {
            int i9 = eVar.f33621a;
            if (i9 != 502) {
                b.this.a(i9, eVar);
            } else if (eVar.f33622b instanceof String) {
                b.this.f33594g.subtitleData = (String) eVar.f33622b;
                b.this.f33592e.a(b.this.f33594g);
            }
        }

        private void a(TPDetailInfo tPDetailInfo) {
            b.this.f33592e.a(com.tencent.thumbplayer.adapter.a.b.c.a(tPDetailInfo));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.f33611b.get() == null) {
                b.this.f33595h.e("mWeakRef is null");
                return;
            }
            int i9 = message.what;
            if (i9 == 1) {
                a((C0339b) message.obj);
            } else if (i9 == 2) {
                a((d) message.obj);
            } else if (i9 == 3) {
                a((e) message.obj);
            } else if (i9 == 4) {
                c cVar = (c) message.obj;
                a(cVar.f33616a, cVar.f33617b);
            } else if (i9 == 5) {
                a((TPDetailInfo) message.obj);
            } else {
                com.tencent.thumbplayer.e.a aVar = b.this.f33595h;
                aVar.d("message :" + message.what + "  not recognition");
            }
        }
    }

    /* renamed from: com.tencent.thumbplayer.adapter.a.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0339b {
        @TPCommonEnum.NativeMsgInfo

        /* renamed from: a  reason: collision with root package name */
        int f33612a;

        /* renamed from: b  reason: collision with root package name */
        long f33613b;

        /* renamed from: c  reason: collision with root package name */
        int f33614c;

        /* renamed from: d  reason: collision with root package name */
        int f33615d;
    }

    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        int f33616a;

        /* renamed from: b  reason: collision with root package name */
        int f33617b;
    }

    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        int f33618a;

        /* renamed from: b  reason: collision with root package name */
        long f33619b;

        /* renamed from: c  reason: collision with root package name */
        long f33620c;
    }

    /* loaded from: classes4.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        int f33621a;

        /* renamed from: b  reason: collision with root package name */
        Object f33622b;
    }

    public b(Context context, com.tencent.thumbplayer.e.b bVar) {
        this.f33595h = new com.tencent.thumbplayer.e.a(bVar, "TPThumbPlayer");
        TPNativePlayer tPNativePlayer = new TPNativePlayer(context);
        this.f33589b = tPNativePlayer;
        tPNativePlayer.setMessageCallback(this.f33596i);
        this.f33589b.setAudioFrameCallback(this.f33597j);
        this.f33589b.setVideoFrameCallback(this.f33598k);
        this.f33589b.setSubtitleFrameCallback(this.f33599l);
        this.f33589b.setPostProcessFrameCallback(this.f33600m);
        this.f33589b.setDemuxerCallback(this.f33601n);
        this.f33589b.setEventRecordCallback(this.f33602o);
        this.f33590c = new TPNativePlayerInitConfig();
        this.f33592e = new g(this.f33595h.b());
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.f33591d = new a(myLooper, this);
            return;
        }
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper != null) {
            this.f33591d = new a(mainLooper, this);
        } else {
            this.f33591d = null;
        }
    }

    private TPProgramInfo a(TPNativePlayerProgramInfo tPNativePlayerProgramInfo) {
        if (tPNativePlayerProgramInfo != null) {
            TPProgramInfo tPProgramInfo = new TPProgramInfo();
            tPProgramInfo.url = tPNativePlayerProgramInfo.url;
            tPProgramInfo.bandwidth = tPNativePlayerProgramInfo.bandwidth;
            tPProgramInfo.resolution = tPNativePlayerProgramInfo.resolution;
            tPProgramInfo.programId = tPNativePlayerProgramInfo.programId;
            tPProgramInfo.actived = tPNativePlayerProgramInfo.actived;
            return tPProgramInfo;
        }
        return null;
    }

    private TPTrackInfo a(TPMediaTrackInfo tPMediaTrackInfo) {
        TPTrackInfo tPTrackInfo = new TPTrackInfo();
        tPTrackInfo.name = tPMediaTrackInfo.trackName;
        tPTrackInfo.trackType = tPMediaTrackInfo.trackType;
        int i9 = tPMediaTrackInfo.contianerType;
        tPTrackInfo.containerType = i9;
        if (i9 == 1) {
            TPHlsTag tPHlsTag = tPTrackInfo.hlsTag;
            TPMediaTrackHlsTag tPMediaTrackHlsTag = tPMediaTrackInfo.hlsTag;
            tPHlsTag.name = tPMediaTrackHlsTag.name;
            tPHlsTag.bandwidth = tPMediaTrackHlsTag.bandwidth;
            tPHlsTag.resolution = tPMediaTrackHlsTag.resolution;
            tPHlsTag.framerate = tPMediaTrackHlsTag.framerate;
            tPHlsTag.codecs = tPMediaTrackHlsTag.codecs;
            tPHlsTag.groupId = tPMediaTrackHlsTag.groupId;
            tPHlsTag.language = tPMediaTrackHlsTag.language;
        } else if (i9 == 2) {
            tPTrackInfo.dashFormat = com.tencent.thumbplayer.adapter.a.b.c.a(tPMediaTrackInfo.dashFormat);
        }
        tPTrackInfo.isExclusive = tPMediaTrackInfo.isExclusive;
        tPTrackInfo.isSelected = tPMediaTrackInfo.isSelected;
        tPTrackInfo.isInternal = tPMediaTrackInfo.isInternal;
        return tPTrackInfo;
    }

    private void a() {
        if (this.f33589b == null) {
            throw new IllegalStateException("player has release");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@TPCommonEnum.NativeErrorType int i9, d dVar) {
        Class cls;
        long tPIntValue;
        int tPIntValue2 = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, i9);
        if (tPIntValue2 < 0) {
            this.f33595h.d("msgType:" + i9 + ", cannot convert to thumbPlayer Info");
            return;
        }
        long j10 = dVar.f33619b;
        long j11 = dVar.f33620c;
        if (tPIntValue2 == 203) {
            cls = TPNativeKeyMap.MapAudioDecoderType.class;
        } else if (tPIntValue2 != 204) {
            this.f33595h.d("unhandled thumbPlayerInfo=".concat(String.valueOf(tPIntValue2)));
            tPIntValue = j10;
            this.f33592e.a(tPIntValue2, tPIntValue, j11, (Object) null);
        } else {
            cls = TPNativeKeyMap.MapVideoDecoderType.class;
        }
        tPIntValue = TPNativeKeyMapUtil.toTPIntValue(cls, (int) j10);
        this.f33592e.a(tPIntValue2, tPIntValue, j11, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void a(@TPCommonEnum.NativeMsgInfo int i9, e eVar) {
        Object obj;
        Object a10;
        Object obj2;
        int tPIntValue = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, i9);
        if (tPIntValue < 0 || (obj = eVar.f33622b) == null) {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.d("msgType:" + i9 + ", cannot convert to thumbPlayer Info");
            return;
        }
        switch (tPIntValue) {
            case 500:
                a10 = com.tencent.thumbplayer.adapter.a.b.c.a((ITPNativePlayerMessageCallback.VideoCropInfo) obj);
                obj2 = a10;
                break;
            case 501:
            case 504:
            default:
                obj2 = obj;
                break;
            case 502:
                a10 = com.tencent.thumbplayer.adapter.a.b.c.a((ITPNativePlayerMessageCallback.MediaCodecInfo) obj);
                obj2 = a10;
                break;
            case 503:
                a10 = com.tencent.thumbplayer.adapter.a.b.c.a((ITPNativePlayerMessageCallback.VideoSeiInfo) obj);
                obj2 = a10;
                break;
            case 505:
                a10 = com.tencent.thumbplayer.adapter.a.b.c.a((ITPNativePlayerMessageCallback.MediaDrmInfo) obj);
                obj2 = a10;
                break;
            case 506:
                obj = (String) obj;
                this.f33595h.c("TP_PLAYER_INFO_OBJECT_SUBTITLE_NOTE:".concat(String.valueOf(obj)));
                obj2 = obj;
                break;
        }
        this.f33592e.a(tPIntValue, 0L, 0L, obj2);
    }

    private void a(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamBoolean optionalParamBoolean) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping boolean is invalid, not found in array, id: ".concat(String.valueOf(i9)));
        } else if (convertToNativeOptionalId.b() == 3) {
            this.f33590c.setBool(convertToNativeOptionalId.c(), optionalParamBoolean.value);
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamFloat optionalParamFloat) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping float is invalid, not found in array, id: ".concat(String.valueOf(i9)));
        } else if (7 == convertToNativeOptionalId.b()) {
            this.f33590c.setFloat(convertToNativeOptionalId.c(), optionalParamFloat.value);
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID:" + convertToNativeOptionalId.c() + " is not float");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamLong optionalParamLong) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping long is invalid, not found in array, id: ".concat(String.valueOf(i9)));
            return;
        }
        int b10 = convertToNativeOptionalId.b();
        if (b10 == 1) {
            this.f33590c.setLong(convertToNativeOptionalId.c(), optionalParamLong.value);
        } else if (b10 == 3) {
            this.f33590c.setBool(convertToNativeOptionalId.c(), optionalParamLong.value > 0);
        } else if (b10 == 4) {
            this.f33590c.setInt(convertToNativeOptionalId.c(), (int) optionalParamLong.value);
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamObject optionalParamObject) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId == null) {
            this.f33595h.e("convertToNativeOptionalId failed, key: ".concat(String.valueOf(i9)));
        } else if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping object is invalid, not found in array, id: ".concat(String.valueOf(i9)));
        } else {
            int c10 = convertToNativeOptionalId.c();
            if (c10 == 126) {
                this.f33590c.setObject(convertToNativeOptionalId.c(), com.tencent.thumbplayer.adapter.a.b.c.a((TPJitterBufferConfig) optionalParamObject.objectValue));
            } else if (c10 == 414) {
                this.f33590c.setObject(convertToNativeOptionalId.c(), com.tencent.thumbplayer.adapter.a.b.c.a((TPAudioAttributes) optionalParamObject.objectValue));
            } else {
                com.tencent.thumbplayer.e.a aVar = this.f33595h;
                aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
            }
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamQueueInt optionalParamQueueInt) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping queue_int is invalid, not found in array, id: ".concat(String.valueOf(i9)));
            return;
        }
        int[] iArr = optionalParamQueueInt.queueValue;
        if (iArr == null || iArr.length == 0) {
            this.f33595h.e("queueint params is empty in".concat(String.valueOf(i9)));
        } else if (convertToNativeOptionalId.b() == 5) {
            for (int i10 = 0; i10 < optionalParamQueueInt.queueValue.length; i10++) {
                this.f33590c.addQueueInt(convertToNativeOptionalId.c(), optionalParamQueueInt.queueValue[i10]);
            }
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamQueueString optionalParamQueueString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping queue_string is invalid, not found in array, id: ".concat(String.valueOf(i9)));
            return;
        }
        String[] strArr = optionalParamQueueString.queueValue;
        if (strArr == null || strArr.length == 0) {
            this.f33595h.e("queue String params is empty in".concat(String.valueOf(i9)));
        } else if (convertToNativeOptionalId.b() == 6) {
            for (int i10 = 0; i10 < optionalParamQueueString.queueValue.length; i10++) {
                this.f33590c.addQueueString(convertToNativeOptionalId.c(), optionalParamQueueString.queueValue[i10]);
            }
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void a(int i9, TPOptionalParam.OptionalParamString optionalParamString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping string is invalid, not found in array, id: ".concat(String.valueOf(i9)));
        } else if (2 == convertToNativeOptionalId.b()) {
            this.f33590c.setString(convertToNativeOptionalId.c(), optionalParamString.value);
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID:" + convertToNativeOptionalId.c() + " is not string");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10, long j11) {
        this.f33592e.a(j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0339b c0339b) {
        this.f33592e.a(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMsgInfo.class, c0339b.f33612a), c0339b.f33614c, c0339b.f33615d, Long.valueOf(c0339b.f33613b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f33592e.a();
    }

    private void b(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamBoolean optionalParamBoolean) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping string is invalid, not found in array, id: ".concat(String.valueOf(i9)));
        } else if (convertToNativeOptionalId.b() == 3) {
            this.f33589b.setOptionLong(convertToNativeOptionalId.c(), optionalParamBoolean.value ? 1L : 0L, 0L);
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void b(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamLong optionalParamLong) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping long is invalid, not found in array, id: ".concat(String.valueOf(i9)));
            return;
        }
        int b10 = convertToNativeOptionalId.b();
        if (b10 == 1 || b10 == 3 || b10 == 4) {
            this.f33589b.setOptionLong(convertToNativeOptionalId.c(), optionalParamLong.value, optionalParamLong.param1);
            return;
        }
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
    }

    private void b(int i9, TPOptionalParam.OptionalParamObject optionalParamObject) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId == null) {
            this.f33595h.e("player optionaIdMapping object is invalid, not found in array, id: ".concat(String.valueOf(i9)));
        } else if (convertToNativeOptionalId.c() == 1001) {
            this.f33589b.setOptionObject(convertToNativeOptionalId.c(), com.tencent.thumbplayer.adapter.a.b.c.a((TPSubtitleRenderModel) optionalParamObject.objectValue));
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    private void b(@TPCommonEnum.TPOptionalId int i9, TPOptionalParam.OptionalParamString optionalParamString) {
        c.a convertToNativeOptionalId = TPNativeKeyMapUtil.convertToNativeOptionalId(i9);
        if (convertToNativeOptionalId.a()) {
            this.f33595h.e("player optionalIdMapping string is invalid, not found in array, id: ".concat(String.valueOf(i9)));
        } else if (convertToNativeOptionalId.b() == 2) {
            this.f33589b.setOptionObject(convertToNativeOptionalId.c(), optionalParamString.value);
        } else {
            com.tencent.thumbplayer.e.a aVar = this.f33595h;
            aVar.e("optionID type:" + convertToNativeOptionalId.b() + " is not implement");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f33592e.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f33592e.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(int i9) {
        return f33588a.contains(Integer.valueOf(i9));
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(float f10) {
        this.f33595h.c("setAudioGainRatio:".concat(String.valueOf(f10)));
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.setAudioVolume(f10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9) {
        this.f33595h.c("seekTo:".concat(String.valueOf(i9)));
        a();
        if (this.f33589b.seekToAsync(i9, 1, 0L) == 0) {
            return;
        }
        throw new IllegalStateException("seek to position:" + i9 + " failed!!");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, @TPCommonEnum.TPSeekMode int i10) {
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.c("seekTo:" + i9 + " mode:" + i10);
        a();
        if (this.f33589b.seekToAsync(i9, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSeekMode.class, i10), 0L) == 0) {
            return;
        }
        throw new IllegalStateException("seek to position:" + i9 + " failed!!");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(int i9, long j10) {
        this.f33595h.c("selectTrack");
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.selectTrackAsync(i9, j10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(AssetFileDescriptor assetFileDescriptor) {
        if (assetFileDescriptor == null) {
            throw new IllegalStateException("setDataSource url afd is null!!");
        }
        int detachFd = assetFileDescriptor.getParcelFileDescriptor().detachFd();
        long startOffset = assetFileDescriptor.getStartOffset();
        long length = assetFileDescriptor.getLength();
        ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(detachFd);
        int detachFd2 = fromFd.detachFd();
        fromFd.close();
        assetFileDescriptor.close();
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.c("setDataSource: " + assetFileDescriptor + ", playFd: " + detachFd + ", offset: " + startOffset + ", length: " + length + ", captureFd: " + detachFd2);
        a();
        if (this.f33589b.setDataSource(detachFd, startOffset, length) != 0) {
            throw new IllegalStateException("setDataSource url afd failed!!");
        }
        this.f33593f = new com.tencent.thumbplayer.a.d(detachFd2, startOffset, length);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            throw new IllegalStateException("setDataSource url pfd is null!!");
        }
        int detachFd = parcelFileDescriptor.detachFd();
        ParcelFileDescriptor fromFd = ParcelFileDescriptor.fromFd(detachFd);
        int detachFd2 = fromFd.detachFd();
        fromFd.close();
        parcelFileDescriptor.close();
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.c("setDataSource: " + parcelFileDescriptor + ", playFd:" + detachFd + ", captureFd: " + detachFd2);
        a();
        if (this.f33589b.setDataSource(detachFd, 0L, 0L) != 0) {
            throw new IllegalStateException("setDataSource url pfd failed!!");
        }
        this.f33593f = new com.tencent.thumbplayer.a.d(detachFd2);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(Surface surface) {
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        StringBuilder sb2 = new StringBuilder("setSurface, surface is null ? : ");
        sb2.append(surface == null);
        aVar.c(sb2.toString());
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else if (tPNativePlayer.setVideoSurface(surface) != 0) {
            throw new IllegalStateException("setSurface failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(SurfaceHolder surfaceHolder) {
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        StringBuilder sb2 = new StringBuilder("SurfaceHolder, surfaceHolder is null ? : ");
        sb2.append(surfaceHolder == null);
        aVar.c(sb2.toString());
        if (this.f33589b == null) {
            this.f33595h.d("player has released, return");
        } else if (surfaceHolder != null && surfaceHolder.getSurface() == null) {
            this.f33595h.e("SurfaceHolder，err.");
        } else {
            if (this.f33589b.setVideoSurface(surfaceHolder == null ? null : surfaceHolder.getSurface()) != 0) {
                throw new IllegalStateException("setSurface failed!!");
            }
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.a aVar) {
        this.f33592e.a(aVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.b bVar) {
        this.f33592e.a(bVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.InterfaceC0340c interfaceC0340c) {
        this.f33592e.a(interfaceC0340c);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.d dVar) {
        this.f33592e.a(dVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.e eVar) {
        this.f33592e.a(eVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.f fVar) {
        this.f33592e.a(fVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.g gVar) {
        this.f33592e.a(gVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.h hVar) {
        this.f33592e.a(hVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.i iVar) {
        this.f33592e.a(iVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.j jVar) {
        this.f33592e.a(jVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.l lVar) {
        this.f33592e.a(lVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.m mVar) {
        this.f33592e.a(mVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.n nVar) {
        this.f33592e.a(nVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.o oVar) {
        this.f33592e.a(oVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(c.p pVar) {
        this.f33592e.a(pVar);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPCaptureParams tPCaptureParams, TPCaptureCallBack tPCaptureCallBack) {
        this.f33595h.c("captureVideo, params".concat(String.valueOf(tPCaptureParams)));
        if (this.f33593f == null) {
            tPCaptureCallBack.onCaptureVideoFailed(TPGeneralError.UNMATCHED_STATE);
            return;
        }
        TPImageGeneratorParams tPImageGeneratorParams = new TPImageGeneratorParams();
        tPImageGeneratorParams.width = tPCaptureParams.width;
        tPImageGeneratorParams.height = tPCaptureParams.height;
        tPImageGeneratorParams.format = tPCaptureParams.format;
        tPImageGeneratorParams.requestedTimeMsToleranceAfter = tPCaptureParams.requestedTimeMsToleranceAfter;
        tPImageGeneratorParams.requestedTimeMsToleranceBefore = tPCaptureParams.requestedTimeMsToleranceBefore;
        this.f33593f.a(n(), tPImageGeneratorParams, tPCaptureCallBack);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(TPOptionalParam tPOptionalParam) {
        this.f33595h.c("setPlayerOptionalParam:".concat(String.valueOf(tPOptionalParam)));
        if (this.f33589b == null) {
            this.f33595h.d("player has released, return");
        } else if (tPOptionalParam.getParamType() == 1) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamBoolean());
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamBoolean());
            }
        } else if (tPOptionalParam.getParamType() == 2) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamLong());
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamLong());
            }
        } else if (tPOptionalParam.getParamType() == 6) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamFloat());
            }
        } else if (tPOptionalParam.getParamType() == 3) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamString());
            } else {
                b(tPOptionalParam.getKey(), tPOptionalParam.getParamString());
            }
        } else if (tPOptionalParam.getParamType() == 4) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamQueueInt());
            }
        } else if (tPOptionalParam.getParamType() == 5) {
            if (tPOptionalParam.getKey() < 500) {
                a(tPOptionalParam.getKey(), tPOptionalParam.getParamQueueString());
            }
        } else if (tPOptionalParam.getParamType() != 7) {
            this.f33595h.d("optionalParam param type is unknown, return");
        } else if (tPOptionalParam.getKey() < 500) {
            a(tPOptionalParam.getKey(), tPOptionalParam.getParamObject());
        } else {
            b(tPOptionalParam.getKey(), tPOptionalParam.getParamObject());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset) {
        this.f33595h.c("setDataSource: ".concat(String.valueOf(iTPMediaAsset)));
        a();
        if (iTPMediaAsset == null) {
            throw new IllegalStateException("media asset is null!");
        }
        String url = iTPMediaAsset.getUrl();
        if (this.f33589b.setDataSource(url) != 0) {
            throw new IllegalStateException("setDataSource mediaAsset failed!!");
        }
        this.f33593f = new com.tencent.thumbplayer.a.d(url);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(ITPMediaAsset iTPMediaAsset, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.c("switchDefinition mediaAsset:" + iTPMediaAsset + " opaque:" + j10);
        a();
        if (iTPMediaAsset != null) {
            if (this.f33589b.switchDefinitionAsync(iTPMediaAsset.getUrl(), TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i9), j10) != 0) {
                throw new IllegalStateException("switchDefinition in invalid state");
            }
            this.f33593f = new com.tencent.thumbplayer.a.d(iTPMediaAsset.getUrl());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(com.tencent.thumbplayer.e.b bVar) {
        this.f33595h.a(new com.tencent.thumbplayer.e.b(bVar, "TPThumbPlayer"));
        if (bVar != null) {
            this.f33592e.a(this.f33595h.a().a());
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str) {
        this.f33595h.c("setAudioNormalizeVolumeParams:".concat(String.valueOf(str)));
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.setAudioNormalizeVolumeParams(str);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.c("switchDefinition url:" + str + " opaque:" + j10);
        a();
        if (this.f33589b.switchDefinitionAsync(str, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i9), j10) != 0) {
            throw new IllegalStateException("switchDefinition in invalid state");
        }
        com.tencent.thumbplayer.adapter.a.a aVar2 = this.f33593f;
        if (aVar2 != null) {
            aVar2.a();
            this.f33593f = null;
        }
        this.f33593f = new com.tencent.thumbplayer.a.d(str);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map) {
        this.f33595h.c("setDataSource: ".concat(String.valueOf(str)));
        a();
        if (this.f33589b.setDataSource(str, map) != 0) {
            throw new IllegalStateException("setDataSource url and header failed!!");
        }
        this.f33593f = new com.tencent.thumbplayer.a.d(str);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, @TPCommonEnum.TPSwitchDefMode int i9, long j10) {
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.c("switchDefinition url:" + str + "httpHeader:" + map + " opaque:" + j10);
        a();
        if (this.f33589b.switchDefinitionAsync(str, map, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapSwitchDefMode.class, i9), j10) != 0) {
            throw new IllegalStateException("switchDefinition in invalid state");
        }
        com.tencent.thumbplayer.adapter.a.a aVar2 = this.f33593f;
        if (aVar2 != null) {
            aVar2.a();
            this.f33593f = null;
        }
        this.f33593f = new com.tencent.thumbplayer.a.d(str);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, String str3) {
        this.f33595h.c("addSubtitleSource");
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.addSubtitleTrackSource(str, str3, map);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(String str, Map<String, String> map, String str2, List<TPOptionalParam> list) {
        this.f33595h.c("addAudioTrackSource");
        if (this.f33589b == null) {
            this.f33595h.d("player has released, return");
            return;
        }
        TPPlayerMsg.TPAudioTrackInfo tPAudioTrackInfo = new TPPlayerMsg.TPAudioTrackInfo();
        tPAudioTrackInfo.audioTrackUrl = str;
        tPAudioTrackInfo.paramData = list;
        g gVar = this.f33592e;
        if (gVar != null) {
            gVar.a(1012, 0L, 0L, tPAudioTrackInfo);
        }
        if (TextUtils.isEmpty(tPAudioTrackInfo.proxyUrl)) {
            this.f33589b.addAudioTrackSource(tPAudioTrackInfo.audioTrackUrl, str2, tPAudioTrackInfo.httpHeader);
        } else {
            this.f33589b.addAudioTrackSource(tPAudioTrackInfo.proxyUrl, str2, tPAudioTrackInfo.httpHeader);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10) {
        this.f33595h.c("setOutputMute:".concat(String.valueOf(z10)));
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.setAudioMute(z10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void a(boolean z10, long j10, long j11) {
        com.tencent.thumbplayer.e.a aVar = this.f33595h;
        aVar.c("setLoopback:" + z10 + " loopStartPositionMs:" + j10 + " loopEndPositionMs:" + j11);
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else if (tPNativePlayer.setLoopback(z10, j10, j11) != 0) {
            throw new IllegalStateException("set loopback failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long b(int i9) {
        a();
        int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapPropertyId.class, i9);
        if (nativeIntValue < 0) {
            this.f33595h.d("paramId not found, return -1");
            return -1L;
        }
        return this.f33589b.getPropertyLong(nativeIntValue);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(float f10) {
        this.f33595h.c("setPlaySpeedRatio:".concat(String.valueOf(f10)));
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.setPlaybackRate(f10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(int i9, long j10) {
        this.f33595h.c("selectTrack");
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.deselectTrackAsync(i9, j10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void b(boolean z10) {
        this.f33595h.c("setLoopback:".concat(String.valueOf(z10)));
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.setLoopback(z10, 0L, -1L);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPDynamicStatisticParams c(boolean z10) {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            return null;
        }
        return tPNativePlayer.getDynamicStatisticParams(z10);
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public String c(int i9) {
        this.f33595h.c("getPropertyString:".concat(String.valueOf(i9)));
        a();
        try {
            int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapPropertyId.class, i9);
            if (nativeIntValue < 0) {
                com.tencent.thumbplayer.e.a aVar = this.f33595h;
                aVar.d("getPropertyString, tpToNativeValue(TPNativeKeyMap.MapPropertyId.class," + i9 + "), return" + nativeIntValue);
                return "";
            }
            return this.f33589b.getPropertyString(nativeIntValue);
        } catch (IllegalArgumentException unused) {
            this.f33595h.d("paramId not found, return");
            return "";
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void c(int i9, long j10) {
        this.f33595h.c("selectProgram, programIndex:".concat(String.valueOf(i9)));
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.d("player has released, return");
        } else {
            tPNativePlayer.selectProgramAsync(i9, j10);
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void f() {
        this.f33595h.c("prepare");
        a();
        this.f33589b.setInitConfig(this.f33590c);
        if (this.f33589b.prepare() != 0) {
            throw new IllegalStateException("prepare failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void g() {
        this.f33595h.c("prepareAsync");
        a();
        this.f33589b.setInitConfig(this.f33590c);
        if (this.f33589b.prepareAsync() != 0) {
            throw new IllegalStateException("prepareAsync failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void h() {
        this.f33595h.c("start");
        a();
        if (this.f33589b.start() != 0) {
            throw new IllegalStateException("start failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void i() {
        this.f33595h.c("pause");
        a();
        if (this.f33589b.pause() != 0) {
            throw new IllegalStateException("pause failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void j() {
        this.f33595h.c("stop");
        a();
        this.f33595h.c("stop before");
        int stop = this.f33589b.stop();
        this.f33595h.c("stop after");
        if (stop != 0) {
            throw new IllegalStateException("stop failed!!");
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void k() {
        this.f33595h.c("reset");
        if (this.f33589b == null) {
            this.f33595h.d("reset, player has released.");
            return;
        }
        this.f33595h.c("reset before");
        this.f33589b.reset();
        a aVar = this.f33591d;
        if (aVar != null) {
            aVar.removeCallbacksAndMessages(null);
        }
        this.f33595h.c("reset after");
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public void l() {
        this.f33595h.c("release");
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer != null) {
            tPNativePlayer.release();
            this.f33589b = null;
        }
        com.tencent.thumbplayer.adapter.a.a aVar = this.f33593f;
        if (aVar != null) {
            aVar.a();
            this.f33593f = null;
        }
        a aVar2 = this.f33591d;
        if (aVar2 != null) {
            aVar2.removeCallbacksAndMessages(null);
            this.f33591d = null;
        }
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long m() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return 0");
            return 0L;
        }
        return tPNativePlayer.getDurationMs();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long n() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return 0");
            return 0L;
        }
        return tPNativePlayer.getCurrentPositionMs();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long o() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return 0");
            return 0L;
        }
        return tPNativePlayer.getBufferedDurationMs() + this.f33589b.getCurrentPositionMs();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int p() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return 0");
            return 0;
        }
        return tPNativePlayer.getVideoWidth();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public int q() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return 0");
            return 0;
        }
        return tPNativePlayer.getVideoHeight();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPTrackInfo[] r() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        TPTrackInfo[] tPTrackInfoArr = null;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return 0");
            return null;
        }
        TPMediaTrackInfo[] trackInfo = tPNativePlayer.getTrackInfo();
        if (trackInfo != null && trackInfo.length > 0) {
            tPTrackInfoArr = new TPTrackInfo[trackInfo.length];
            for (int i9 = 0; i9 < trackInfo.length; i9++) {
                tPTrackInfoArr[i9] = a(trackInfo[i9]);
            }
        }
        return tPTrackInfoArr;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPProgramInfo[] s() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        TPProgramInfo[] tPProgramInfoArr = null;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return 0");
            return null;
        }
        TPNativePlayerProgramInfo[] programInfo = tPNativePlayer.getProgramInfo();
        if (programInfo != null && programInfo.length > 0) {
            tPProgramInfoArr = new TPProgramInfo[programInfo.length];
            for (int i9 = 0; i9 < programInfo.length; i9++) {
                tPProgramInfoArr[i9] = a(programInfo[i9]);
            }
        }
        return tPProgramInfoArr;
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public long t() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            this.f33595h.c("player has released, return -1");
            return -1L;
        }
        return tPNativePlayer.getDemuxerOffsetInFile();
    }

    @Override // com.tencent.thumbplayer.adapter.a.b
    public TPGeneralPlayFlowParams u() {
        TPNativePlayer tPNativePlayer = this.f33589b;
        if (tPNativePlayer == null) {
            return null;
        }
        return tPNativePlayer.getGeneralPlayFlowParams();
    }
}
