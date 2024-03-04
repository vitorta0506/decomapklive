package com.tencent.liteav.trtc;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.tencent.liteav.TXLiteAVCode;
import com.tencent.liteav.base.ThreadUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.r;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.trtc.TRTCCloudDef;
import com.tencent.trtc.TRTCCloudListener;
import com.tencent.trtc.TRTCStatistics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.microedition.khronos.egl.EGLContext;
@JNINamespace("liteav::trtc")
/* loaded from: classes4.dex */
public class TrtcCloudJni {
    private static final Object INIT_LOCK = new Object();
    private static final String TAG = "TrtcCloudJni";
    private static boolean mHasInited = false;
    private TRTCCloudListener.TRTCAudioFrameListener mAudioFrameListener;
    private TRTCCloudListener.TRTCVideoFrameListener mCalledGLCreatedFrameListener;
    private final HashSet<View> mFloatingWindowSet;
    private final ReentrantReadWriteLock.ReadLock mJniReadLock;
    private final ReentrantReadWriteLock.WriteLock mJniWriteLock;
    private TRTCCloudListener mListener;
    private Handler mListenerHandler;
    private String mLocalUserId;
    private final a<TRTCCloudListener.TRTCVideoRenderListener> mLocalVideoRenderListenerWrapper;
    private long mNativeTrtcCloudJni;
    private final ReentrantReadWriteLock mReadWriteLock;
    private final Map<String, a<TRTCCloudListener.TRTCVideoRenderListener>> mRemoteVideoRenderListenerMap;
    private final a<TRTCCloudListener.TRTCVideoFrameListener> mVideoFrameListenerWrapper;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.liteav.trtc.TrtcCloudJni$3  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f31315a;

        static {
            int[] iArr = new int[Rotation.values().length];
            f31315a = iArr;
            try {
                iArr[Rotation.ROTATION_90.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31315a[Rotation.ROTATION_180.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31315a[Rotation.ROTATION_270.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes4.dex */
    static class AudioFrame {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCAudioFrame f31316a;

        public AudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
            this.f31316a = tRTCAudioFrame;
        }

        @CalledByNative("AudioFrame")
        public int getChannel() {
            return this.f31316a.channel;
        }

        @CalledByNative("AudioFrame")
        public byte[] getData() {
            return this.f31316a.data;
        }

        @CalledByNative("AudioFrame")
        public int getSampleRate() {
            return this.f31316a.sampleRate;
        }

        @CalledByNative("AudioFrame")
        public long getTimestamp() {
            return this.f31316a.timestamp;
        }
    }

    /* loaded from: classes4.dex */
    static class AudioParallelParams {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCAudioParallelParams f31317a;

        public AudioParallelParams(TRTCCloudDef.TRTCAudioParallelParams tRTCAudioParallelParams) {
            this.f31317a = tRTCAudioParallelParams;
        }

        @CalledByNative("AudioParallelParams")
        public String[] getIncludeUsers() {
            ArrayList<String> arrayList = this.f31317a.includeUsers;
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }

        @CalledByNative("AudioParallelParams")
        public int getMaxCount() {
            return this.f31317a.maxCount;
        }
    }

    /* loaded from: classes4.dex */
    static class AudioRecordingParams {

        /* renamed from: a  reason: collision with root package name */
        private final TRTCCloudDef.TRTCAudioRecordingParams f31318a;

        public AudioRecordingParams(TRTCCloudDef.TRTCAudioRecordingParams tRTCAudioRecordingParams) {
            this.f31318a = tRTCAudioRecordingParams;
        }

        @CalledByNative("AudioRecordingParams")
        public int getContent() {
            return this.f31318a.recordingContent;
        }

        @CalledByNative("AudioRecordingParams")
        public String getFilePath() {
            return this.f31318a.filePath;
        }
    }

    /* loaded from: classes4.dex */
    static class EnterRoomParams {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCParams f31319a;

        public EnterRoomParams(TRTCCloudDef.TRTCParams tRTCParams) {
            this.f31319a = tRTCParams;
        }

        @CalledByNative("EnterRoomParams")
        public String getBusinessInfo() {
            return this.f31319a.businessInfo;
        }

        @CalledByNative("EnterRoomParams")
        public String getPrivateMapKey() {
            return this.f31319a.privateMapKey;
        }

        @CalledByNative("EnterRoomParams")
        public String getRecordId() {
            return this.f31319a.userDefineRecordId;
        }

        @CalledByNative("EnterRoomParams")
        public int getRole() {
            return this.f31319a.role;
        }

        @CalledByNative("EnterRoomParams")
        public int getRoomId() {
            return this.f31319a.roomId;
        }

        @CalledByNative("EnterRoomParams")
        public int getSdkAppId() {
            return this.f31319a.sdkAppId;
        }

        @CalledByNative("EnterRoomParams")
        public String getStrRoomId() {
            return this.f31319a.strRoomId;
        }

        @CalledByNative("EnterRoomParams")
        public String getStreamId() {
            return this.f31319a.streamId;
        }

        @CalledByNative("EnterRoomParams")
        public String getUserId() {
            return this.f31319a.userId;
        }

        @CalledByNative("EnterRoomParams")
        public String getUserSig() {
            return this.f31319a.userSig;
        }
    }

    /* loaded from: classes4.dex */
    static class LocalRecordingParams {

        /* renamed from: a  reason: collision with root package name */
        private final TRTCCloudDef.TRTCLocalRecordingParams f31320a;

        public LocalRecordingParams(TRTCCloudDef.TRTCLocalRecordingParams tRTCLocalRecordingParams) {
            this.f31320a = tRTCLocalRecordingParams;
        }

        @CalledByNative("LocalRecordingParams")
        public String getFilePath() {
            return this.f31320a.filePath;
        }

        @CalledByNative("LocalRecordingParams")
        public int getInterval() {
            return this.f31320a.interval;
        }

        @CalledByNative("LocalRecordingParams")
        public int getRecordType() {
            return this.f31320a.recordType;
        }
    }

    /* loaded from: classes4.dex */
    static class LocalStatistics {

        /* renamed from: a  reason: collision with root package name */
        private TRTCStatistics.TRTCLocalStatistics f31321a = new TRTCStatistics.TRTCLocalStatistics();

        LocalStatistics() {
        }

        @CalledByNative("LocalStatistics")
        public static void addLocalStatistics(LocalStatistics localStatistics, ArrayList<LocalStatistics> arrayList) {
            arrayList.add(localStatistics);
        }

        @CalledByNative("LocalStatistics")
        public static LocalStatistics createLocalStatistics(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            LocalStatistics localStatistics = new LocalStatistics();
            TRTCStatistics.TRTCLocalStatistics tRTCLocalStatistics = localStatistics.f31321a;
            tRTCLocalStatistics.streamType = i9;
            tRTCLocalStatistics.width = i10;
            tRTCLocalStatistics.height = i11;
            tRTCLocalStatistics.frameRate = i12;
            tRTCLocalStatistics.videoBitrate = i13;
            tRTCLocalStatistics.audioBitrate = i15;
            tRTCLocalStatistics.audioSampleRate = i14;
            tRTCLocalStatistics.audioCaptureState = i16;
            return localStatistics;
        }

        @CalledByNative("LocalStatistics")
        public static ArrayList<LocalStatistics> createLocalStatisticsArray() {
            return new ArrayList<>();
        }
    }

    /* loaded from: classes4.dex */
    static class MixUser {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCMixUser f31322a;

        /* synthetic */ MixUser(TRTCCloudDef.TRTCMixUser tRTCMixUser, byte b10) {
            this(tRTCMixUser);
        }

        @CalledByNative("MixUser")
        public int getHeight() {
            return this.f31322a.height;
        }

        @CalledByNative("MixUser")
        public String getImage() {
            return TextUtils.isEmpty(this.f31322a.image) ? "" : this.f31322a.image;
        }

        @CalledByNative("MixUser")
        public int getInputType() {
            return this.f31322a.inputType;
        }

        @CalledByNative("MixUser")
        public boolean getPureAudio() {
            return this.f31322a.pureAudio;
        }

        @CalledByNative("MixUser")
        public int getRenderMode() {
            return this.f31322a.renderMode;
        }

        @CalledByNative("MixUser")
        public String getRoomId() {
            return TextUtils.isEmpty(this.f31322a.roomId) ? "" : this.f31322a.roomId;
        }

        @CalledByNative("MixUser")
        public int getSoundLevel() {
            return this.f31322a.soundLevel;
        }

        @CalledByNative("MixUser")
        public int getStreamType() {
            return this.f31322a.streamType;
        }

        @CalledByNative("MixUser")
        public String getUserId() {
            return TextUtils.isEmpty(this.f31322a.userId) ? "" : this.f31322a.userId;
        }

        @CalledByNative("MixUser")
        public int getWidth() {
            return this.f31322a.width;
        }

        @CalledByNative("MixUser")
        public int getX() {
            return this.f31322a.f34637x;
        }

        @CalledByNative("MixUser")
        public int getY() {
            return this.f31322a.f34638y;
        }

        @CalledByNative("MixUser")
        public int getZOrder() {
            return this.f31322a.zOrder;
        }

        private MixUser(TRTCCloudDef.TRTCMixUser tRTCMixUser) {
            this.f31322a = tRTCMixUser;
        }
    }

    /* loaded from: classes4.dex */
    public static class PublishCDNParams {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCPublishCDNParam f31323a;

        public PublishCDNParams(TRTCCloudDef.TRTCPublishCDNParam tRTCPublishCDNParam) {
            this.f31323a = tRTCPublishCDNParam;
        }

        @CalledByNative("PublishCDNParams")
        public int getAppId() {
            return this.f31323a.appId;
        }

        @CalledByNative("PublishCDNParams")
        public int getBizId() {
            return this.f31323a.bizId;
        }

        @CalledByNative("PublishCDNParams")
        public String getStreamId() {
            return TextUtils.isEmpty(this.f31323a.streamId) ? "" : this.f31323a.streamId;
        }

        @CalledByNative("PublishCDNParams")
        public String getUrl() {
            return TextUtils.isEmpty(this.f31323a.url) ? "" : this.f31323a.url;
        }
    }

    /* loaded from: classes4.dex */
    static class PublishCdnUrl {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCPublishCdnUrl f31324a;

        public PublishCdnUrl(TRTCCloudDef.TRTCPublishCdnUrl tRTCPublishCdnUrl) {
            this.f31324a = tRTCPublishCdnUrl;
        }

        @CalledByNative("PublishCdnUrl")
        public boolean getIsInternalLine() {
            return this.f31324a.isInternalLine;
        }

        @CalledByNative("PublishCdnUrl")
        public String getRtmpUrl() {
            String str = this.f31324a.rtmpUrl;
            return str != null ? str : "";
        }
    }

    /* loaded from: classes4.dex */
    static class PublishTarget {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCPublishTarget f31325a;

        public PublishTarget(TRTCCloudDef.TRTCPublishTarget tRTCPublishTarget) {
            this.f31325a = tRTCPublishTarget;
        }

        @CalledByNative("PublishTarget")
        public int getMode() {
            return this.f31325a.mode;
        }

        @CalledByNative("PublishTarget")
        public PublishCdnUrl[] getPublishCdnUrls() {
            ArrayList<TRTCCloudDef.TRTCPublishCdnUrl> arrayList = this.f31325a.cdnUrlList;
            if (arrayList == null) {
                return null;
            }
            PublishCdnUrl[] publishCdnUrlArr = new PublishCdnUrl[arrayList.size()];
            for (int i9 = 0; i9 < this.f31325a.cdnUrlList.size(); i9++) {
                publishCdnUrlArr[i9] = new PublishCdnUrl(this.f31325a.cdnUrlList.get(i9));
            }
            return publishCdnUrlArr;
        }

        @CalledByNative("PublishTarget")
        public TRTCUser getTRTCUser() {
            return new TRTCUser(this.f31325a.mixStreamIdentity);
        }
    }

    /* loaded from: classes4.dex */
    static class RemoteStatistics {

        /* renamed from: a  reason: collision with root package name */
        public TRTCStatistics.TRTCRemoteStatistics f31326a = new TRTCStatistics.TRTCRemoteStatistics();

        RemoteStatistics() {
        }

        @CalledByNative("RemoteStatistics")
        public static void addRemoteStatistics(RemoteStatistics remoteStatistics, ArrayList<RemoteStatistics> arrayList) {
            arrayList.add(remoteStatistics);
        }

        @CalledByNative("RemoteStatistics")
        public static RemoteStatistics createRemoteStatistics(String str, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24) {
            RemoteStatistics remoteStatistics = new RemoteStatistics();
            TRTCStatistics.TRTCRemoteStatistics tRTCRemoteStatistics = remoteStatistics.f31326a;
            tRTCRemoteStatistics.userId = str;
            tRTCRemoteStatistics.streamType = i9;
            tRTCRemoteStatistics.width = i10;
            tRTCRemoteStatistics.height = i11;
            tRTCRemoteStatistics.frameRate = i12;
            tRTCRemoteStatistics.audioPacketLoss = i19;
            tRTCRemoteStatistics.videoPacketLoss = i13;
            tRTCRemoteStatistics.videoBlockRate = i16;
            tRTCRemoteStatistics.videoTotalBlockTime = i15;
            tRTCRemoteStatistics.videoBitrate = i14;
            tRTCRemoteStatistics.audioBitrate = i18;
            tRTCRemoteStatistics.audioSampleRate = i17;
            tRTCRemoteStatistics.audioTotalBlockTime = i20;
            tRTCRemoteStatistics.audioBlockRate = i21;
            tRTCRemoteStatistics.jitterBufferDelay = i22;
            tRTCRemoteStatistics.point2PointDelay = i23;
            tRTCRemoteStatistics.finalLoss = i24;
            return remoteStatistics;
        }

        @CalledByNative("RemoteStatistics")
        public static ArrayList<RemoteStatistics> createRemoteStatisticsArray() {
            return new ArrayList<>();
        }
    }

    /* loaded from: classes4.dex */
    static class ScreenShareParams {

        /* renamed from: a  reason: collision with root package name */
        private final TRTCCloudDef.TRTCScreenShareParams f31327a;

        public ScreenShareParams(TRTCCloudDef.TRTCScreenShareParams tRTCScreenShareParams) {
            this.f31327a = tRTCScreenShareParams;
        }

        @CalledByNative("ScreenShareParams")
        public Object getMediaProjection() {
            return this.f31327a.mediaProjection;
        }
    }

    /* loaded from: classes4.dex */
    static class SpeedTestParams {

        /* renamed from: a  reason: collision with root package name */
        private final TRTCCloudDef.TRTCSpeedTestParams f31328a;

        public SpeedTestParams(TRTCCloudDef.TRTCSpeedTestParams tRTCSpeedTestParams) {
            this.f31328a = tRTCSpeedTestParams;
        }

        @CalledByNative("SpeedTestParams")
        public int getExpectedDownBandwidth() {
            return this.f31328a.expectedDownBandwidth;
        }

        @CalledByNative("SpeedTestParams")
        public int getExpectedUpBandwidth() {
            return this.f31328a.expectedUpBandwidth;
        }

        @CalledByNative("SpeedTestParams")
        public int getSDKAppId() {
            return this.f31328a.sdkAppId;
        }

        @CalledByNative("SpeedTestParams")
        public String getUserId() {
            return this.f31328a.userId;
        }

        @CalledByNative("SpeedTestParams")
        public String getUserSig() {
            return this.f31328a.userSig;
        }
    }

    /* loaded from: classes4.dex */
    static class SpeedTestResult {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCSpeedTestResult f31329a = new TRTCCloudDef.TRTCSpeedTestResult();

        SpeedTestResult() {
        }

        @CalledByNative("SpeedTestResult")
        public static SpeedTestResult createSpeedTestResult(boolean z10, String str, String str2, int i9, float f10, float f11, int i10, int i11, int i12) {
            SpeedTestResult speedTestResult = new SpeedTestResult();
            TRTCCloudDef.TRTCSpeedTestResult tRTCSpeedTestResult = speedTestResult.f31329a;
            tRTCSpeedTestResult.success = z10;
            tRTCSpeedTestResult.errMsg = str;
            tRTCSpeedTestResult.ip = str2;
            tRTCSpeedTestResult.quality = i9;
            tRTCSpeedTestResult.upLostRate = f10;
            tRTCSpeedTestResult.downLostRate = f11;
            tRTCSpeedTestResult.rtt = i10;
            tRTCSpeedTestResult.availableUpBandwidth = i11;
            tRTCSpeedTestResult.availableDownBandwidth = i12;
            return speedTestResult;
        }
    }

    /* loaded from: classes4.dex */
    static class Statistics {

        /* renamed from: a  reason: collision with root package name */
        private TRTCStatistics f31330a = new TRTCStatistics();

        Statistics() {
        }

        @CalledByNative("Statistics")
        public static Statistics createStatistics(int i9, int i10, int i11, int i12, int i13, int i14, long j10, long j11, ArrayList<LocalStatistics> arrayList, ArrayList<RemoteStatistics> arrayList2) {
            Statistics statistics = new Statistics();
            TRTCStatistics tRTCStatistics = statistics.f31330a;
            tRTCStatistics.appCpu = i9;
            tRTCStatistics.systemCpu = i10;
            tRTCStatistics.upLoss = i11;
            tRTCStatistics.downLoss = i12;
            tRTCStatistics.rtt = i13;
            tRTCStatistics.gatewayRtt = i14;
            tRTCStatistics.sendBytes = j10;
            tRTCStatistics.receiveBytes = j11;
            tRTCStatistics.localArray = new ArrayList<>();
            statistics.f31330a.remoteArray = new ArrayList<>();
            if (arrayList != null) {
                Iterator<LocalStatistics> it = arrayList.iterator();
                while (it.hasNext()) {
                    statistics.f31330a.localArray.add(it.next().f31321a);
                }
            }
            if (arrayList2 != null) {
                Iterator<RemoteStatistics> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    statistics.f31330a.remoteArray.add(it2.next().f31326a);
                }
            }
            return statistics;
        }
    }

    /* loaded from: classes4.dex */
    static class StreamEncoderParam {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCStreamEncoderParam f31331a;

        public StreamEncoderParam(TRTCCloudDef.TRTCStreamEncoderParam tRTCStreamEncoderParam) {
            this.f31331a = tRTCStreamEncoderParam;
        }

        @CalledByNative("StreamEncoderParam")
        public int getAudioEncodedChannelNum() {
            return this.f31331a.audioEncodedChannelNum;
        }

        @CalledByNative("StreamEncoderParam")
        public int getAudioEncodedCodecType() {
            return this.f31331a.audioEncodedCodecType;
        }

        @CalledByNative("StreamEncoderParam")
        public int getAudioEncodedKbps() {
            return this.f31331a.audioEncodedKbps;
        }

        @CalledByNative("StreamEncoderParam")
        public int getAudioEncodedSampleRate() {
            return this.f31331a.audioEncodedSampleRate;
        }

        @CalledByNative("StreamEncoderParam")
        public int getVideoEncodedFPS() {
            return this.f31331a.videoEncodedFPS;
        }

        @CalledByNative("StreamEncoderParam")
        public int getVideoEncodedGOP() {
            return this.f31331a.videoEncodedGOP;
        }

        @CalledByNative("StreamEncoderParam")
        public int getVideoEncodedHeight() {
            return this.f31331a.videoEncodedHeight;
        }

        @CalledByNative("StreamEncoderParam")
        public int getVideoEncodedKbps() {
            return this.f31331a.videoEncodedKbps;
        }

        @CalledByNative("StreamEncoderParam")
        public int getVideoEncodedWidth() {
            return this.f31331a.videoEncodedWidth;
        }
    }

    /* loaded from: classes4.dex */
    static class StreamMixingConfig {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCStreamMixingConfig f31332a;

        public StreamMixingConfig(TRTCCloudDef.TRTCStreamMixingConfig tRTCStreamMixingConfig) {
            this.f31332a = tRTCStreamMixingConfig;
        }

        @CalledByNative("StreamMixingConfig")
        public TRTCUser[] getAudioMixUserList() {
            ArrayList<TRTCCloudDef.TRTCUser> arrayList = this.f31332a.audioMixUserList;
            if (arrayList == null) {
                return null;
            }
            TRTCUser[] tRTCUserArr = new TRTCUser[arrayList.size()];
            for (int i9 = 0; i9 < this.f31332a.audioMixUserList.size(); i9++) {
                tRTCUserArr[i9] = new TRTCUser(this.f31332a.audioMixUserList.get(i9));
            }
            return tRTCUserArr;
        }

        @CalledByNative("StreamMixingConfig")
        public int getBackgroundColor() {
            return this.f31332a.backgroundColor;
        }

        @CalledByNative("StreamMixingConfig")
        public String getBackgroundImage() {
            String str = this.f31332a.backgroundImage;
            return str != null ? str : "";
        }

        @CalledByNative("StreamMixingConfig")
        public VideoLayout[] getVideoLayoutList() {
            ArrayList<TRTCCloudDef.TRTCVideoLayout> arrayList = this.f31332a.videoLayoutList;
            if (arrayList == null) {
                return null;
            }
            VideoLayout[] videoLayoutArr = new VideoLayout[arrayList.size()];
            for (int i9 = 0; i9 < this.f31332a.videoLayoutList.size(); i9++) {
                videoLayoutArr[i9] = new VideoLayout(this.f31332a.videoLayoutList.get(i9));
            }
            return videoLayoutArr;
        }

        @CalledByNative("StreamMixingConfig")
        public Watermark[] getWatermarkList() {
            ArrayList<TRTCCloudDef.TRTCWatermark> arrayList = this.f31332a.watermarkList;
            if (arrayList == null) {
                return null;
            }
            Watermark[] watermarkArr = new Watermark[arrayList.size()];
            for (int i9 = 0; i9 < this.f31332a.watermarkList.size(); i9++) {
                watermarkArr[i9] = new Watermark(this.f31332a.watermarkList.get(i9));
            }
            return watermarkArr;
        }
    }

    /* loaded from: classes4.dex */
    static class SwitchRoomConfig {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCSwitchRoomConfig f31333a;

        public SwitchRoomConfig(TRTCCloudDef.TRTCSwitchRoomConfig tRTCSwitchRoomConfig) {
            this.f31333a = tRTCSwitchRoomConfig;
        }

        @CalledByNative("SwitchRoomConfig")
        public String getPrivateMapKey() {
            String str = this.f31333a.privateMapKey;
            return str != null ? str : "";
        }

        @CalledByNative("SwitchRoomConfig")
        public int getRoomId() {
            return this.f31333a.roomId;
        }

        @CalledByNative("SwitchRoomConfig")
        public String getStringRoomId() {
            String str = this.f31333a.strRoomId;
            return str != null ? str : "";
        }

        @CalledByNative("SwitchRoomConfig")
        public String getUserSig() {
            String str = this.f31333a.userSig;
            return str != null ? str : "";
        }
    }

    /* loaded from: classes4.dex */
    static class TRTCUser {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCUser f31334a;

        public TRTCUser(TRTCCloudDef.TRTCUser tRTCUser) {
            this.f31334a = tRTCUser;
        }

        @CalledByNative("TRTCUser")
        public int getIntRoomId() {
            return this.f31334a.intRoomId;
        }

        @CalledByNative("TRTCUser")
        public String getStrRoomId() {
            String str = this.f31334a.strRoomId;
            return str != null ? str : "";
        }

        @CalledByNative("TRTCUser")
        public String getUserId() {
            String str = this.f31334a.userId;
            return str != null ? str : "";
        }
    }

    /* loaded from: classes4.dex */
    static class TranscodingConfig {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCTranscodingConfig f31335a;

        public TranscodingConfig(TRTCCloudDef.TRTCTranscodingConfig tRTCTranscodingConfig) {
            this.f31335a = tRTCTranscodingConfig;
        }

        @CalledByNative("TranscodingConfig")
        public int getAppId() {
            return this.f31335a.appId;
        }

        @CalledByNative("TranscodingConfig")
        public int getAudioBitrate() {
            return this.f31335a.audioBitrate;
        }

        @CalledByNative("TranscodingConfig")
        public int getAudioChannels() {
            return this.f31335a.audioChannels;
        }

        @CalledByNative("TranscodingConfig")
        public int getAudioSampleRate() {
            return this.f31335a.audioSampleRate;
        }

        @CalledByNative("TranscodingConfig")
        public int getBackgroundColor() {
            return this.f31335a.backgroundColor;
        }

        @CalledByNative("TranscodingConfig")
        public String getBackgroundImage() {
            return TextUtils.isEmpty(this.f31335a.backgroundImage) ? "" : this.f31335a.backgroundImage;
        }

        @CalledByNative("TranscodingConfig")
        public int getBizId() {
            return this.f31335a.bizId;
        }

        @CalledByNative("TranscodingConfig")
        public MixUser[] getMixUsers() {
            ArrayList<TRTCCloudDef.TRTCMixUser> arrayList = this.f31335a.mixUsers;
            if (arrayList == null) {
                return null;
            }
            MixUser[] mixUserArr = new MixUser[arrayList.size()];
            for (int i9 = 0; i9 < this.f31335a.mixUsers.size(); i9++) {
                mixUserArr[i9] = new MixUser(this.f31335a.mixUsers.get(i9), (byte) 0);
            }
            return mixUserArr;
        }

        @CalledByNative("TranscodingConfig")
        public int getMode() {
            return this.f31335a.mode;
        }

        @CalledByNative("TranscodingConfig")
        public String getStreamId() {
            return TextUtils.isEmpty(this.f31335a.streamId) ? "" : this.f31335a.streamId;
        }

        @CalledByNative("TranscodingConfig")
        public int getVideoBitrate() {
            return this.f31335a.videoBitrate;
        }

        @CalledByNative("TranscodingConfig")
        public int getVideoFramerate() {
            return this.f31335a.videoFramerate;
        }

        @CalledByNative("TranscodingConfig")
        public int getVideoGOP() {
            return this.f31335a.videoGOP;
        }

        @CalledByNative("TranscodingConfig")
        public int getVideoHeight() {
            return this.f31335a.videoHeight;
        }

        @CalledByNative("TranscodingConfig")
        public int getVideoWidth() {
            return this.f31335a.videoWidth;
        }
    }

    /* loaded from: classes4.dex */
    static class VideoEncParams {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCVideoEncParam f31336a;

        public VideoEncParams(TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam) {
            this.f31336a = tRTCVideoEncParam;
        }

        @CalledByNative("VideoEncParams")
        public int getMinVideoBitrate() {
            return this.f31336a.minVideoBitrate;
        }

        @CalledByNative("VideoEncParams")
        public int getVideoBitrate() {
            return this.f31336a.videoBitrate;
        }

        @CalledByNative("VideoEncParams")
        public int getVideoFps() {
            return this.f31336a.videoFps;
        }

        @CalledByNative("VideoEncParams")
        public int getVideoResolution() {
            return this.f31336a.videoResolution;
        }

        @CalledByNative("VideoEncParams")
        public int getVideoResolutionMode() {
            return this.f31336a.videoResolutionMode;
        }

        @CalledByNative("VideoEncParams")
        public boolean isEnableAdjustRes() {
            return this.f31336a.enableAdjustRes;
        }
    }

    /* loaded from: classes4.dex */
    static class VideoLayout {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCVideoLayout f31337a;

        public VideoLayout(TRTCCloudDef.TRTCVideoLayout tRTCVideoLayout) {
            this.f31337a = tRTCVideoLayout;
        }

        @CalledByNative("VideoLayout")
        public int getBackgroundColor() {
            return this.f31337a.backgroundColor;
        }

        @CalledByNative("VideoLayout")
        public int getFillMode() {
            return this.f31337a.fillMode;
        }

        @CalledByNative("VideoLayout")
        public int getHeight() {
            return this.f31337a.height;
        }

        @CalledByNative("VideoLayout")
        public String getPlaceHolderImage() {
            String str = this.f31337a.placeHolderImage;
            return str != null ? str : "";
        }

        @CalledByNative("VideoLayout")
        public TRTCUser getTRTCUser() {
            return new TRTCUser(this.f31337a.fixedVideoUser);
        }

        @CalledByNative("VideoLayout")
        public int getVideoStreamType() {
            return this.f31337a.fixedVideoStreamType;
        }

        @CalledByNative("VideoLayout")
        public int getWidth() {
            return this.f31337a.width;
        }

        @CalledByNative("VideoLayout")
        public int getX() {
            return this.f31337a.f34639x;
        }

        @CalledByNative("VideoLayout")
        public int getY() {
            return this.f31337a.f34640y;
        }

        @CalledByNative("VideoLayout")
        public int getZOrder() {
            return this.f31337a.zOrder;
        }
    }

    /* loaded from: classes4.dex */
    static class Watermark {

        /* renamed from: a  reason: collision with root package name */
        private TRTCCloudDef.TRTCWatermark f31338a;

        public Watermark(TRTCCloudDef.TRTCWatermark tRTCWatermark) {
            this.f31338a = tRTCWatermark;
        }

        @CalledByNative("Watermark")
        public int getHeight() {
            return this.f31338a.height;
        }

        @CalledByNative("Watermark")
        public String getWatermarkUrl() {
            String str = this.f31338a.watermarkUrl;
            return str != null ? str : "";
        }

        @CalledByNative("Watermark")
        public int getWidth() {
            return this.f31338a.width;
        }

        @CalledByNative("Watermark")
        public int getX() {
            return this.f31338a.f34641x;
        }

        @CalledByNative("Watermark")
        public int getY() {
            return this.f31338a.f34642y;
        }

        @CalledByNative("Watermark")
        public int getZOrder() {
            return this.f31338a.zOrder;
        }
    }

    /* loaded from: classes4.dex */
    static class a<T> {

        /* renamed from: a  reason: collision with root package name */
        public int f31339a;

        /* renamed from: b  reason: collision with root package name */
        public GLConstants.PixelFormatType f31340b;

        /* renamed from: c  reason: collision with root package name */
        public GLConstants.PixelBufferType f31341c;

        /* renamed from: d  reason: collision with root package name */
        public T f31342d;

        private a() {
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }

    static {
        r.a();
    }

    public TrtcCloudJni(boolean z10) {
        this(0L, z10);
    }

    private static int convertPixelBufferTypeToTRTCBufferType(GLConstants.PixelBufferType pixelBufferType) {
        if (pixelBufferType == GLConstants.PixelBufferType.BYTE_BUFFER) {
            return 1;
        }
        if (pixelBufferType == GLConstants.PixelBufferType.BYTE_ARRAY) {
            return 2;
        }
        return pixelBufferType == GLConstants.PixelBufferType.TEXTURE_2D ? 3 : 0;
    }

    private static int convertPixelFormatTypeToTRTCFormatType(GLConstants.PixelFormatType pixelFormatType) {
        if (pixelFormatType == GLConstants.PixelFormatType.I420) {
            return 1;
        }
        if (pixelFormatType == GLConstants.PixelFormatType.NV21) {
            return 4;
        }
        return pixelFormatType == GLConstants.PixelFormatType.RGBA ? 5 : 0;
    }

    private static int convertPixelFrameRotationToTRTCVideoRotation(Rotation rotation) {
        int i9 = AnonymousClass3.f31315a[rotation.ordinal()];
        int i10 = 1;
        if (i9 != 1) {
            i10 = 2;
            if (i9 != 2) {
                i10 = 3;
                if (i9 != 3) {
                    return 0;
                }
            }
        }
        return i10;
    }

    private static GLConstants.PixelBufferType convertTRTCBufferTypeToPixelBufferType(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                return GLConstants.PixelBufferType.TEXTURE_2D;
            }
            return GLConstants.PixelBufferType.BYTE_ARRAY;
        }
        return GLConstants.PixelBufferType.BYTE_BUFFER;
    }

    private static GLConstants.PixelFormatType convertTRTCFormatTypeToPixelFormatType(int i9) {
        if (i9 != 2) {
            if (i9 == 4) {
                return GLConstants.PixelFormatType.NV21;
            }
            if (i9 != 5) {
                return GLConstants.PixelFormatType.I420;
            }
        }
        return GLConstants.PixelFormatType.RGBA;
    }

    private static Rotation covertTRTCVideoRotationToPixelFrameRotation(int i9) {
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    return Rotation.NORMAL;
                }
                return Rotation.ROTATION_270;
            }
            return Rotation.ROTATION_180;
        }
        return Rotation.ROTATION_90;
    }

    @CalledByNative
    public static Bundle createExtraInfoBundle(String str, int i9) {
        Bundle bundle = new Bundle();
        bundle.putInt(str, i9);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingWindow() {
        WindowManager windowManager;
        if (this.mFloatingWindowSet.isEmpty()) {
            return;
        }
        Iterator<View> it = this.mFloatingWindowSet.iterator();
        while (it.hasNext()) {
            View next = it.next();
            if (next != null && (windowManager = (WindowManager) next.getContext().getSystemService("window")) != null) {
                windowManager.removeViewImmediate(next);
            }
        }
        this.mFloatingWindowSet.clear();
    }

    public static void init(int i9) {
        synchronized (INIT_LOCK) {
            if (!mHasInited) {
                mHasInited = true;
                nativeGlobalInit(i9);
            }
        }
    }

    private static boolean isCustomPreprocessSupportedBufferType(GLConstants.PixelBufferType pixelBufferType) {
        return pixelBufferType == GLConstants.PixelBufferType.BYTE_BUFFER || pixelBufferType == GLConstants.PixelBufferType.BYTE_ARRAY || pixelBufferType == GLConstants.PixelBufferType.TEXTURE_2D;
    }

    private static boolean isCustomPreprocessSupportedFormatType(GLConstants.PixelFormatType pixelFormatType) {
        return pixelFormatType == GLConstants.PixelFormatType.I420 || pixelFormatType == GLConstants.PixelFormatType.NV21 || pixelFormatType == GLConstants.PixelFormatType.RGBA;
    }

    private static boolean isCustomRenderSupportedBufferType(GLConstants.PixelBufferType pixelBufferType) {
        return pixelBufferType == GLConstants.PixelBufferType.BYTE_BUFFER || pixelBufferType == GLConstants.PixelBufferType.BYTE_ARRAY || pixelBufferType == GLConstants.PixelBufferType.TEXTURE_2D;
    }

    private static boolean isCustomRenderSupportedFormatType(GLConstants.PixelFormatType pixelFormatType) {
        return pixelFormatType == GLConstants.PixelFormatType.I420 || pixelFormatType == GLConstants.PixelFormatType.NV21 || pixelFormatType == GLConstants.PixelFormatType.RGBA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$enterRoom$0(TrtcCloudJni trtcCloudJni) {
        trtcCloudJni.onEnterRoom(-3316);
        trtcCloudJni.onError(-3316, "enter room param null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onSnapshotComplete$1(TRTCCloudListener.TRTCSnapshotListener tRTCSnapshotListener, Bitmap bitmap) {
        if (tRTCSnapshotListener != null) {
            tRTCSnapshotListener.onSnapshotComplete(bitmap);
        }
    }

    private static native void nativeCallExperimentalAPI(long j10, String str);

    private static native void nativeConnectOtherRoom(long j10, String str);

    private static native long nativeCreateAudioEffectManager(long j10);

    private static native long nativeCreateBeautyManager(long j10);

    private static native long nativeCreateDeviceManager(long j10);

    private static native long nativeCreatePipeline(TrtcCloudJni trtcCloudJni, boolean z10);

    private static native long nativeCreateSubCloud(TrtcCloudJni trtcCloudJni, long j10);

    private static native void nativeDestroyPipeline(long j10);

    private static native void nativeDisconnectOtherRoom(long j10);

    private static native void nativeEnable3DSpatialAudioEffect(long j10, boolean z10);

    private static native void nativeEnableAudioFrameNotification(long j10, boolean z10);

    private static native void nativeEnableAudioVolumeEvaluation(long j10, int i9, boolean z10);

    private static native void nativeEnableCustomAudioCapture(long j10, boolean z10);

    private static native void nativeEnableCustomAudioRendering(long j10, boolean z10);

    private static native void nativeEnableCustomVideoCapture(long j10, int i9, boolean z10);

    private static native void nativeEnableEncSmallVideoStream(long j10, boolean z10, VideoEncParams videoEncParams);

    private static native void nativeEnableMixExternalAudioFrame(long j10, boolean z10, boolean z11);

    private static native void nativeEnableVideoCustomPreprocess(long j10, boolean z10, int i9, int i10, int i11);

    private static native void nativeEnableVideoCustomRender(long j10, boolean z10, String str, int i9, int i10, int i11);

    private static native void nativeEnterRoom(long j10, EnterRoomParams enterRoomParams, int i9);

    private static native void nativeExitRoom(long j10);

    private static native int nativeGetAudioCaptureVolume(long j10);

    private static native int nativeGetAudioPlayoutVolume(long j10);

    private static native void nativeGetCustomAudioRenderingFrame(long j10, byte[] bArr, int i9, int i10);

    private static native void nativeGlobalInit(int i9);

    private static native void nativeGlobalUninit();

    private static native int nativeMixExternalAudioFrame(long j10, AudioFrame audioFrame);

    private static native void nativeMuteAllRemoteAudio(long j10, boolean z10);

    private static native void nativeMuteAllRemoteVideoStreams(long j10, boolean z10);

    private static native void nativeMuteLocalAudio(long j10, boolean z10);

    private static native void nativeMuteLocalVideo(long j10, int i9, boolean z10);

    private static native void nativeMuteRemoteAudio(long j10, String str, boolean z10);

    private static native void nativeMuteRemoteVideoStream(long j10, String str, int i9, boolean z10);

    private static native void nativePauseScreenCapture(long j10, int i9);

    private static native void nativeResumeScreenCapture(long j10, int i9);

    private static native void nativeSendCustomAudioData(long j10, AudioFrame audioFrame);

    private static native boolean nativeSendCustomCmdMsg(long j10, int i9, byte[] bArr, boolean z10, boolean z11);

    private static native void nativeSendCustomVideoData(long j10, int i9, PixelFrame pixelFrame);

    private static native boolean nativeSendSEIMsg(long j10, byte[] bArr, int i9);

    private static native void nativeSet3DSpatialReceivingRange(long j10, String str, int i9);

    private static native void nativeSetAudioCaptureVolume(long j10, int i9);

    private static native void nativeSetAudioPlayoutVolume(long j10, int i9);

    private static native void nativeSetAudioQuality(long j10, int i9);

    private static native int nativeSetCapturedRawAudioFrameCallbackFormat(long j10, int i9, int i10, int i11, int i12);

    private static native void nativeSetConsoleEnabled(boolean z10);

    private static native void nativeSetDefaultStreamRecvMode(long j10, boolean z10, boolean z11);

    private static native void nativeSetGSensorMode(long j10, int i9, int i10);

    private static native void nativeSetListenerHandler(long j10, Handler handler);

    private static native int nativeSetLocalProcessedAudioFrameCallbackFormat(long j10, int i9, int i10, int i11, int i12);

    private static native void nativeSetLocalViewFillMode(long j10, int i9);

    private static native void nativeSetLocalViewMirror(long j10, int i9);

    private static native void nativeSetLocalViewRotation(long j10, int i9);

    private static native void nativeSetLogCompressEnabled(boolean z10);

    private static native void nativeSetLogLevel(int i9);

    private static native void nativeSetLogPath(String str);

    private static native void nativeSetMixExternalAudioVolume(long j10, int i9, int i10);

    private static native void nativeSetMixTranscodingConfig(long j10, TranscodingConfig transcodingConfig);

    private static native int nativeSetMixedPlayAudioFrameCallbackFormat(long j10, int i9, int i10, int i11, int i12);

    private static native void nativeSetNetworkQosParam(long j10, int i9, int i10);

    private static native void nativeSetPriorRemoteVideoStreamType(long j10, int i9);

    private static native void nativeSetRemoteAudioParallelParams(long j10, AudioParallelParams audioParallelParams);

    private static native void nativeSetRemoteAudioVolume(long j10, String str, int i9);

    private static native void nativeSetRemoteVideoStreamType(long j10, String str, int i9);

    private static native void nativeSetRemoteViewFillMode(long j10, String str, int i9, int i10);

    private static native void nativeSetRemoteViewMirror(long j10, String str, int i9, int i10);

    private static native void nativeSetRemoteViewRotation(long j10, String str, int i9, int i10);

    private static native void nativeSetVideoEncoderMirror(long j10, boolean z10);

    private static native void nativeSetVideoEncoderParams(long j10, int i9, VideoEncParams videoEncParams);

    private static native void nativeSetVideoEncoderRotation(long j10, int i9);

    private static native void nativeSetVideoMuteImage(long j10, int i9, Bitmap bitmap, int i10);

    private static native void nativeSetWatermark(long j10, Bitmap bitmap, int i9, float f10, float f11, float f12);

    private static native void nativeShowDashboardManager(long j10, int i9);

    private static native void nativeSnapshotVideo(long j10, String str, int i9, TRTCCloudListener.TRTCSnapshotListener tRTCSnapshotListener);

    private static native int nativeStartAudioRecording(long j10, AudioRecordingParams audioRecordingParams);

    private static native void nativeStartLocalAudio(long j10);

    private static native void nativeStartLocalAudioWithQuality(long j10, int i9);

    private static native void nativeStartLocalPreview(long j10, boolean z10, DisplayTarget displayTarget);

    private static native void nativeStartLocalRecording(long j10, LocalRecordingParams localRecordingParams);

    private static native void nativeStartPublishCDNStream(long j10, PublishCDNParams publishCDNParams);

    private static native void nativeStartPublishMediaStream(long j10, PublishTarget publishTarget, StreamEncoderParam streamEncoderParam, StreamMixingConfig streamMixingConfig);

    private static native void nativeStartPublishing(long j10, String str, int i9);

    private static native void nativeStartRemoteView(long j10, String str, int i9, DisplayTarget displayTarget);

    private static native void nativeStartRemoteViewWithoutStreamType(long j10, String str, DisplayTarget displayTarget);

    private static native void nativeStartScreenCapture(long j10, int i9, VideoEncParams videoEncParams, ScreenShareParams screenShareParams);

    private static native void nativeStartSpeedTest(long j10, boolean z10, SpeedTestParams speedTestParams);

    private static native void nativeStartSystemAudioLoopback(long j10);

    private static native void nativeStopAllRemoteView(long j10);

    private static native void nativeStopAudioRecording(long j10);

    private static native void nativeStopLocalAudio(long j10);

    private static native void nativeStopLocalPreview(long j10);

    private static native void nativeStopLocalRecording(long j10);

    private static native void nativeStopPublishCDNStream(long j10);

    private static native void nativeStopPublishMediaStream(long j10, String str);

    private static native void nativeStopPublishing(long j10);

    private static native void nativeStopRemoteView(long j10, String str, int i9);

    private static native void nativeStopRemoteViewWithoutStreamType(long j10, String str);

    private static native void nativeStopScreenCapture(long j10, int i9);

    private static native void nativeStopSpeedTest(long j10);

    private static native void nativeStopSystemAudioLoopback(long j10);

    private static native void nativeSwitchRole(long j10, int i9);

    private static native void nativeSwitchRoleWithPrivateMapKey(long j10, int i9, String str);

    private static native void nativeSwitchRoom(long j10, SwitchRoomConfig switchRoomConfig);

    private static native void nativeUpdateLocalView(long j10, DisplayTarget displayTarget);

    private static native void nativeUpdatePublishMediaStream(long j10, String str, PublishTarget publishTarget, StreamEncoderParam streamEncoderParam, StreamMixingConfig streamMixingConfig);

    private static native void nativeUpdateRemote3DSpatialPosition(long j10, String str, int[] iArr);

    private static native void nativeUpdateRemoteView(long j10, String str, int i9, DisplayTarget displayTarget);

    private static native void nativeUpdateSelf3DSpatialPosition(long j10, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3);

    private void runOnListenerThread(Runnable runnable) {
        Handler handler = this.mListenerHandler;
        if (Looper.myLooper() != handler.getLooper()) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void setConsoleEnabled(boolean z10) {
        nativeSetConsoleEnabled(z10);
    }

    public static void setLogCompressEnabled(boolean z10) {
        nativeSetLogCompressEnabled(z10);
    }

    public static void setLogDirPath(String str) {
        nativeSetLogPath(str);
    }

    public static void setLogLevel(int i9) {
        nativeSetLogLevel(i9);
    }

    private static void shadowCopy(@NonNull PixelFrame pixelFrame, @NonNull TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame) {
        tRTCVideoFrame.pixelFormat = convertPixelFormatTypeToTRTCFormatType(pixelFrame.getPixelFormatType());
        tRTCVideoFrame.bufferType = convertPixelBufferTypeToTRTCBufferType(pixelFrame.getPixelBufferType());
        TRTCCloudDef.TRTCTexture tRTCTexture = new TRTCCloudDef.TRTCTexture();
        tRTCVideoFrame.texture = tRTCTexture;
        tRTCTexture.textureId = pixelFrame.getTextureId();
        if (pixelFrame.getGLContext() instanceof EGLContext) {
            tRTCVideoFrame.texture.eglContext10 = (EGLContext) pixelFrame.getGLContext();
        } else if (LiteavSystemInfo.getSystemOSVersionInt() >= 17 && (pixelFrame.getGLContext() instanceof android.opengl.EGLContext)) {
            tRTCVideoFrame.texture.eglContext14 = (android.opengl.EGLContext) pixelFrame.getGLContext();
        }
        tRTCVideoFrame.data = pixelFrame.getData();
        tRTCVideoFrame.buffer = pixelFrame.getBuffer();
        tRTCVideoFrame.width = pixelFrame.getWidth();
        tRTCVideoFrame.height = pixelFrame.getHeight();
        tRTCVideoFrame.timestamp = pixelFrame.getTimestamp();
        tRTCVideoFrame.rotation = convertPixelFrameRotationToTRTCVideoRotation(pixelFrame.getRotation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFloatingWindow(View view) {
        if (view == null) {
            return;
        }
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 23 && !Settings.canDrawOverlays(view.getContext())) {
            LiteavLog.e(TAG, "can't show floating window for no drawing overlay permission");
        } else if (this.mFloatingWindowSet.contains(view)) {
            LiteavLog.i(TAG, "the window has been added");
        } else {
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService("window");
            if (windowManager == null) {
                LiteavLog.e(TAG, "get windowManager error");
                return;
            }
            this.mFloatingWindowSet.add(view);
            int i9 = 2005;
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 26) {
                i9 = 2038;
            } else if (LiteavSystemInfo.getSystemOSVersionInt() > 24) {
                i9 = 2002;
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i9);
            layoutParams.flags = 8 | 262144;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -3;
            windowManager.addView(view, layoutParams);
        }
    }

    public static void uninit() {
        synchronized (INIT_LOCK) {
            if (mHasInited) {
                mHasInited = false;
                nativeGlobalUninit();
            }
        }
    }

    public void callExperimentalAPI(String str) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeCallExperimentalAPI(j10, str);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void connectOtherRoom(String str) {
        long j10 = this.mNativeTrtcCloudJni;
        if (j10 != 0) {
            nativeConnectOtherRoom(j10, str);
        }
    }

    public long createAudioEffectManager() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeCreateAudioEffectManager(j10) : 0L;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public long createBeautyManager() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeCreateBeautyManager(j10) : 0L;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public long createDeviceManager() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeCreateDeviceManager(j10) : 0L;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void destroy() {
        this.mJniWriteLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeDestroyPipeline(j10);
                this.mNativeTrtcCloudJni = 0L;
            }
        } finally {
            this.mJniWriteLock.unlock();
        }
    }

    public void disconnectOtherRoom() {
        long j10 = this.mNativeTrtcCloudJni;
        if (j10 != 0) {
            nativeDisconnectOtherRoom(j10);
        }
    }

    public void enable3DSpatialAudioEffect(boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnable3DSpatialAudioEffect(j10, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void enableAudioVolumeEvaluation(int i9, boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnableAudioVolumeEvaluation(j10, i9, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void enableCustomAudioCapture(boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnableCustomAudioCapture(j10, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void enableCustomAudioRendering(boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnableCustomAudioRendering(j10, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void enableCustomVideoCapture(int i9, boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnableCustomVideoCapture(j10, i9, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int enableEncSmallVideoStream(boolean z10, TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnableEncSmallVideoStream(j10, z10, new VideoEncParams(tRTCVideoEncParam));
            }
            this.mJniReadLock.unlock();
            return 0;
        } catch (Throwable th2) {
            this.mJniReadLock.unlock();
            throw th2;
        }
    }

    public void enableMixExternalAudioFrame(boolean z10, boolean z11) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnableMixExternalAudioFrame(j10, z10, z11);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void enterRoom(TRTCCloudDef.TRTCParams tRTCParams, int i9) {
        if (tRTCParams == null) {
            LiteavLog.e(TAG, "enterRoom param is null");
            runOnListenerThread(com.tencent.liteav.trtc.a.a(this));
            return;
        }
        this.mJniReadLock.lock();
        try {
            this.mLocalUserId = tRTCParams.userId;
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeEnterRoom(j10, new EnterRoomParams(tRTCParams), i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void exitRoom() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeExitRoom(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int getAudioCaptureVolume() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeGetAudioCaptureVolume(j10) : 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int getAudioPlayoutVolume() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeGetAudioPlayoutVolume(j10) : 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void getCustomAudioRenderingFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeGetCustomAudioRenderingFrame(j10, tRTCAudioFrame.data, tRTCAudioFrame.sampleRate, tRTCAudioFrame.channel);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public long getTrtcCloudJni() {
        this.mJniReadLock.lock();
        try {
            return this.mNativeTrtcCloudJni;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int mixExternalAudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                return nativeMixExternalAudioFrame(j10, new AudioFrame(tRTCAudioFrame));
            }
            this.mJniReadLock.unlock();
            return -1;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void muteAllRemoteAudio(boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeMuteAllRemoteAudio(j10, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void muteAllRemoteVideoStreams(boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeMuteAllRemoteVideoStreams(j10, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void muteLocalAudio(boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeMuteLocalAudio(j10, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void muteLocalVideo(int i9, boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeMuteLocalVideo(j10, i9, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void muteRemoteAudio(String str, boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeMuteRemoteAudio(j10, str, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void muteRemoteVideoStream(String str, int i9, boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeMuteRemoteVideoStream(j10, str, i9, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    @CalledByNative
    public void onAudioCaptureProcessedData(byte[] bArr, long j10, int i9, int i10) {
        TRTCCloudListener.TRTCAudioFrameListener tRTCAudioFrameListener = this.mAudioFrameListener;
        if (tRTCAudioFrameListener == null) {
            return;
        }
        TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame = new TRTCCloudDef.TRTCAudioFrame();
        tRTCAudioFrame.data = bArr;
        tRTCAudioFrame.timestamp = j10;
        tRTCAudioFrame.sampleRate = i9;
        tRTCAudioFrame.channel = i10;
        tRTCAudioFrameListener.onCapturedRawAudioFrame(tRTCAudioFrame);
    }

    @CalledByNative
    public void onAudioMixedAllData(byte[] bArr, int i9, int i10) {
        TRTCCloudListener.TRTCAudioFrameListener tRTCAudioFrameListener = this.mAudioFrameListener;
        if (tRTCAudioFrameListener == null) {
            return;
        }
        TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame = new TRTCCloudDef.TRTCAudioFrame();
        tRTCAudioFrame.data = bArr;
        tRTCAudioFrame.timestamp = 0L;
        tRTCAudioFrame.sampleRate = i9;
        tRTCAudioFrame.channel = i10;
        tRTCAudioFrameListener.onMixedAllAudioFrame(tRTCAudioFrame);
    }

    @CalledByNative
    public void onAudioPlayoutData(byte[] bArr, long j10, int i9, int i10) {
        TRTCCloudListener.TRTCAudioFrameListener tRTCAudioFrameListener = this.mAudioFrameListener;
        if (tRTCAudioFrameListener == null) {
            return;
        }
        TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame = new TRTCCloudDef.TRTCAudioFrame();
        tRTCAudioFrame.data = bArr;
        tRTCAudioFrame.timestamp = j10;
        tRTCAudioFrame.sampleRate = i9;
        tRTCAudioFrame.channel = i10;
        tRTCAudioFrameListener.onMixedPlayAudioFrame(tRTCAudioFrame);
    }

    @CalledByNative
    public void onAudioRemoteStreamData(String str, byte[] bArr, long j10, int i9, int i10, byte[] bArr2) {
        TRTCCloudListener.TRTCAudioFrameListener tRTCAudioFrameListener = this.mAudioFrameListener;
        if (tRTCAudioFrameListener == null) {
            return;
        }
        TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame = new TRTCCloudDef.TRTCAudioFrame();
        tRTCAudioFrame.data = bArr;
        tRTCAudioFrame.timestamp = j10;
        tRTCAudioFrame.sampleRate = i9;
        tRTCAudioFrame.channel = i10;
        tRTCAudioFrame.extraData = bArr2;
        tRTCAudioFrameListener.onRemoteUserAudioFrame(tRTCAudioFrame, str);
    }

    @CalledByNative
    public void onAudioRouteChanged(int i9, int i10) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onAudioRouteChanged(i9, i10);
        }
    }

    @CalledByNative
    void onCameraDidReady() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onCameraDidReady();
        }
    }

    @CalledByNative
    public void onCdnStreamStateChanged(String str, int i9, int i10, String str2, String str3) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onCdnStreamStateChanged(str, i9, i10, str2, null);
        }
    }

    @CalledByNative
    public void onConnectOtherRoom(String str, int i9, String str2) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onConnectOtherRoom(str, i9, str2);
        }
    }

    @CalledByNative
    void onConnectionLost() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onConnectionLost();
        }
    }

    @CalledByNative
    void onConnectionRecovery() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onConnectionRecovery();
        }
    }

    @CalledByNative
    public void onDisConnectOtherRoom(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onDisConnectOtherRoom(i9, str);
        }
    }

    @CalledByNative
    public void onEnterRoom(int i9) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onEnterRoom(i9);
        }
    }

    @CalledByNative
    public void onError(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onError(i9, str, null);
        }
    }

    @CalledByNative
    public void onExitRoom(int i9) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onExitRoom(i9);
        }
        synchronized (this.mLocalVideoRenderListenerWrapper) {
            this.mLocalVideoRenderListenerWrapper.f31342d = null;
        }
        synchronized (this.mRemoteVideoRenderListenerMap) {
            this.mRemoteVideoRenderListenerMap.clear();
        }
    }

    @CalledByNative
    void onFirstAudioFrame(String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onFirstAudioFrame(str);
        }
    }

    @CalledByNative
    void onFirstVideoFrame(String str, int i9, int i10, int i11) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onFirstVideoFrame(str, i9, i10, i11);
        }
    }

    @CalledByNative
    public void onGLContextCreated() {
        synchronized (this.mVideoFrameListenerWrapper) {
            this.mCalledGLCreatedFrameListener = this.mVideoFrameListenerWrapper.f31342d;
        }
        LiteavLog.i(TAG, "onGLContextCreated " + this.mCalledGLCreatedFrameListener);
        TRTCCloudListener.TRTCVideoFrameListener tRTCVideoFrameListener = this.mCalledGLCreatedFrameListener;
        if (tRTCVideoFrameListener != null) {
            tRTCVideoFrameListener.onGLContextCreated();
        }
    }

    @CalledByNative
    public void onGLContextDestroy() {
        LiteavLog.i(TAG, "onGLContextDestroy " + this.mCalledGLCreatedFrameListener);
        TRTCCloudListener.TRTCVideoFrameListener tRTCVideoFrameListener = this.mCalledGLCreatedFrameListener;
        if (tRTCVideoFrameListener != null) {
            tRTCVideoFrameListener.onGLContextDestory();
            this.mCalledGLCreatedFrameListener = null;
        }
    }

    @CalledByNative
    public byte[] onLocalAudioStreamData(byte[] bArr, long j10, int i9, int i10) {
        TRTCCloudListener.TRTCAudioFrameListener tRTCAudioFrameListener = this.mAudioFrameListener;
        if (tRTCAudioFrameListener == null) {
            return null;
        }
        TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame = new TRTCCloudDef.TRTCAudioFrame();
        tRTCAudioFrame.data = bArr;
        tRTCAudioFrame.timestamp = j10;
        tRTCAudioFrame.sampleRate = i9;
        tRTCAudioFrame.channel = i10;
        tRTCAudioFrameListener.onLocalProcessedAudioFrame(tRTCAudioFrame);
        byte[] bArr2 = tRTCAudioFrame.extraData;
        if (bArr2 == null) {
            return null;
        }
        if (bArr2.length > 100) {
            LiteavLog.w(TAG, "Audioframe.extraData length need to be under 100!");
            return null;
        }
        return bArr2;
    }

    @CalledByNative
    public void onLocalRecordBegin(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onLocalRecordBegin(i9, str);
        }
    }

    @CalledByNative
    public void onLocalRecordComplete(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onLocalRecordComplete(i9, str);
        }
    }

    @CalledByNative
    public void onLocalRecording(long j10, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onLocalRecording(j10, str);
        }
    }

    @CalledByNative
    void onMicDidReady() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onMicDidReady();
        }
    }

    @CalledByNative
    public void onMissCustomCmdMsg(String str, int i9, int i10, int i11) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onMissCustomCmdMsg(str, i9, i10, i11);
        }
    }

    @CalledByNative
    public void onNetworkQuality(int i9, String[] strArr, int[] iArr) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            TRTCCloudDef.TRTCQuality tRTCQuality = new TRTCCloudDef.TRTCQuality();
            tRTCQuality.userId = "";
            tRTCQuality.quality = i9;
            ArrayList<TRTCCloudDef.TRTCQuality> arrayList = new ArrayList<>();
            if (strArr != null && strArr.length != 0 && iArr != null && iArr.length != 0 && iArr.length == strArr.length) {
                for (int i10 = 0; i10 < strArr.length; i10++) {
                    TRTCCloudDef.TRTCQuality tRTCQuality2 = new TRTCCloudDef.TRTCQuality();
                    tRTCQuality2.userId = strArr[i10];
                    tRTCQuality2.quality = iArr[i10];
                    arrayList.add(tRTCQuality2);
                }
            }
            tRTCCloudListener.onNetworkQuality(tRTCQuality, arrayList);
        }
    }

    @CalledByNative
    public void onPreprocessVideoFrame(int i9, PixelFrame pixelFrame, PixelFrame pixelFrame2) {
        TRTCCloudListener.TRTCVideoFrameListener tRTCVideoFrameListener = this.mCalledGLCreatedFrameListener;
        if (tRTCVideoFrameListener == null || tRTCVideoFrameListener == null) {
            return;
        }
        TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame = new TRTCCloudDef.TRTCVideoFrame();
        TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame2 = new TRTCCloudDef.TRTCVideoFrame();
        shadowCopy(pixelFrame, tRTCVideoFrame);
        shadowCopy(pixelFrame2, tRTCVideoFrame2);
        tRTCVideoFrameListener.onProcessVideoFrame(tRTCVideoFrame, tRTCVideoFrame2);
        shadowCopy(tRTCVideoFrame, pixelFrame);
        shadowCopy(tRTCVideoFrame2, pixelFrame2);
    }

    @CalledByNative
    public void onRecvCustomCmdMsg(String str, int i9, int i10, byte[] bArr) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onRecvCustomCmdMsg(str, i9, i10, bArr);
        }
    }

    @CalledByNative
    public void onRemoteAudioStatusUpdated(String str, int i9, int i10) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onRemoteAudioStatusUpdated(str, i9, i10, null);
        }
    }

    @CalledByNative
    public void onRemoteVideoStatusUpdated(String str, int i9, int i10, int i11) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onRemoteVideoStatusUpdated(str, i9, i10, i11, null);
        }
    }

    @CalledByNative
    public void onRenderVideoFrame(String str, int i9, PixelFrame pixelFrame) {
        TRTCCloudListener.TRTCVideoRenderListener tRTCVideoRenderListener;
        if (TextUtils.isEmpty(str)) {
            str = this.mLocalUserId;
            tRTCVideoRenderListener = this.mLocalVideoRenderListenerWrapper.f31342d;
        } else {
            a<TRTCCloudListener.TRTCVideoRenderListener> aVar = this.mRemoteVideoRenderListenerMap.get(str);
            tRTCVideoRenderListener = aVar == null ? null : aVar.f31342d;
        }
        if (tRTCVideoRenderListener != null) {
            TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame = new TRTCCloudDef.TRTCVideoFrame();
            shadowCopy(pixelFrame, tRTCVideoFrame);
            tRTCVideoRenderListener.onRenderVideoFrame(str, i9, tRTCVideoFrame);
        }
    }

    @CalledByNative
    public void onSEIMessageReceived(byte[] bArr, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onRecvSEIMsg(str, bArr);
        }
    }

    @CalledByNative
    void onScreenCapturePaused() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onScreenCapturePaused();
        }
    }

    @CalledByNative
    void onScreenCaptureResumed() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onScreenCaptureResumed();
        }
    }

    @CalledByNative
    void onScreenCaptureStarted() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onScreenCaptureStarted();
        }
    }

    @CalledByNative
    void onScreenCaptureStopped(int i9) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onScreenCaptureStopped(i9);
        }
    }

    @CalledByNative
    void onSendFirstLocalAudioFrame() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onSendFirstLocalAudioFrame();
        }
    }

    @CalledByNative
    void onSendFirstLocalVideoFrame(int i9) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onSendFirstLocalVideoFrame(i9);
        }
    }

    @CalledByNative
    void onSetMixTranscodingConfig(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onSetMixTranscodingConfig(i9, str);
        }
    }

    @CalledByNative
    public void onSnapshotComplete(TRTCCloudListener.TRTCSnapshotListener tRTCSnapshotListener, Bitmap bitmap) {
        runOnListenerThread(b.a(tRTCSnapshotListener, bitmap));
    }

    @CalledByNative
    public void onSpeedTest(SpeedTestResult speedTestResult, int i9, int i10) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onSpeedTest(speedTestResult.f31329a, i9, i10);
        }
    }

    @CalledByNative
    public void onSpeedTestResult(SpeedTestResult speedTestResult) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onSpeedTestResult(speedTestResult.f31329a);
        }
    }

    @CalledByNative
    void onStartPublishCDNStream(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onStartPublishCDNStream(i9, str);
        }
    }

    @CalledByNative
    public void onStartPublishMediaStream(String str, int i9, String str2, String str3) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onStartPublishMediaStream(str, i9, str2, null);
        }
    }

    @CalledByNative
    void onStartPublishing(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onStartPublishing(i9, str);
        }
    }

    @CalledByNative
    public void onStatistics(Statistics statistics) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onStatistics(statistics.f31330a);
        }
    }

    @CalledByNative
    void onStopPublishCDNStream(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onStopPublishCDNStream(i9, str);
        }
    }

    @CalledByNative
    public void onStopPublishMediaStream(String str, int i9, String str2, String str3) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onStopPublishMediaStream(str, i9, str2, null);
        }
    }

    @CalledByNative
    void onStopPublishing(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onStopPublishing(i9, str);
        }
    }

    @CalledByNative
    public void onSwitchRole(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onSwitchRole(i9, str);
        }
    }

    @CalledByNative
    public void onSwitchRoom(int i9, String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onSwitchRoom(i9, str);
        }
    }

    @CalledByNative
    void onTryToReconnect() {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onTryToReconnect();
        }
    }

    @CalledByNative
    public void onUpdatePublishMediaStream(String str, int i9, String str2, String str3) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onUpdatePublishMediaStream(str, i9, str2, null);
        }
    }

    @CalledByNative
    void onUserAudioAvailable(String str, boolean z10) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onUserAudioAvailable(str, z10);
        }
    }

    @CalledByNative
    public void onUserEnter(String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onUserEnter(str);
        }
    }

    @CalledByNative
    public void onUserExit(String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onUserExit(str, 0);
        }
    }

    @CalledByNative
    public void onUserOffline(String str, int i9) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onRemoteUserLeaveRoom(str, i9);
        }
    }

    @CalledByNative
    public void onUserOnline(String str) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onRemoteUserEnterRoom(str);
        }
    }

    @CalledByNative
    void onUserSubStreamAvailable(String str, boolean z10) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onUserSubStreamAvailable(str, z10);
        }
    }

    @CalledByNative
    void onUserVideoAvailable(String str, boolean z10) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onUserVideoAvailable(str, z10);
        }
    }

    @CalledByNative
    public void onUserVideoSizeChanged(String str, int i9, int i10, int i11) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onUserVideoSizeChanged(str, i9, i10, i11);
        }
    }

    @CalledByNative
    public void onUserVoiceVolume(String[] strArr, int[] iArr, int[] iArr2, int i9) {
        String str;
        if (strArr == null || iArr == null) {
            return;
        }
        if (strArr.length == iArr.length) {
            ArrayList<TRTCCloudDef.TRTCVolumeInfo> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < strArr.length; i10++) {
                TRTCCloudDef.TRTCVolumeInfo tRTCVolumeInfo = new TRTCCloudDef.TRTCVolumeInfo();
                if (strArr[i10].isEmpty() && (str = this.mLocalUserId) != null && !str.isEmpty()) {
                    tRTCVolumeInfo.userId = this.mLocalUserId;
                } else {
                    tRTCVolumeInfo.userId = strArr[i10];
                }
                tRTCVolumeInfo.volume = iArr[i10];
                tRTCVolumeInfo.vad = iArr2[i10];
                arrayList.add(tRTCVolumeInfo);
            }
            TRTCCloudListener tRTCCloudListener = this.mListener;
            if (tRTCCloudListener != null) {
                tRTCCloudListener.onUserVoiceVolume(arrayList, i9);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Invalid parameter, userIds and volumes do not match.");
    }

    @CalledByNative
    public void onWarning(int i9, String str, Bundle bundle) {
        TRTCCloudListener tRTCCloudListener = this.mListener;
        if (tRTCCloudListener != null) {
            tRTCCloudListener.onWarning(i9, str, bundle);
        }
    }

    public void pauseScreenCapture(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativePauseScreenCapture(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void resumeScreenCapture(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeResumeScreenCapture(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void sendCustomAudioData(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSendCustomAudioData(j10, new AudioFrame(tRTCAudioFrame));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public boolean sendCustomCmdMsg(int i9, byte[] bArr, boolean z10, boolean z11) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                return nativeSendCustomCmdMsg(j10, i9, bArr, z10, z11);
            }
            this.mJniReadLock.unlock();
            return false;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void sendCustomVideoData(int i9, TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame) {
        this.mJniReadLock.lock();
        try {
            if (this.mNativeTrtcCloudJni != 0) {
                PixelFrame pixelFrame = new PixelFrame();
                shadowCopy(tRTCVideoFrame, pixelFrame);
                nativeSendCustomVideoData(this.mNativeTrtcCloudJni, i9, pixelFrame);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public boolean sendSEIMsg(byte[] bArr, int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                return nativeSendSEIMsg(j10, bArr, i9);
            }
            this.mJniReadLock.unlock();
            return false;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void set3DSpatialReceivingRange(String str, int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSet3DSpatialReceivingRange(j10, str, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setAudioCaptureVolume(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetAudioCaptureVolume(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setAudioFrameListener(TRTCCloudListener.TRTCAudioFrameListener tRTCAudioFrameListener) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                this.mAudioFrameListener = tRTCAudioFrameListener;
                nativeEnableAudioFrameNotification(j10, tRTCAudioFrameListener != null);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setAudioPlayoutVolume(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetAudioPlayoutVolume(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setAudioQuality(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetAudioQuality(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int setCapturedRawAudioFrameCallbackFormat(int i9, int i10, int i11, int i12) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeSetCapturedRawAudioFrameCallbackFormat(j10, i9, i10, i11, i12) : 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setDefaultStreamRecvMode(boolean z10, boolean z11) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetDefaultStreamRecvMode(j10, z10, z11);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setGSensorMode(int i9, int i10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetGSensorMode(j10, i9, i10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setListener(TRTCCloudListener tRTCCloudListener) {
        this.mListener = tRTCCloudListener;
    }

    public void setListenerHandler(Handler handler) {
        this.mJniReadLock.lock();
        if (handler == null) {
            this.mListenerHandler = new Handler(Looper.getMainLooper());
        } else {
            this.mListenerHandler = handler;
        }
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetListenerHandler(j10, handler);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int setLocalProcessedAudioFrameCallbackFormat(int i9, int i10, int i11, int i12) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeSetLocalProcessedAudioFrameCallbackFormat(j10, i9, i10, i11, i12) : 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int setLocalVideoProcessListener(int i9, int i10, int i11, TRTCCloudListener.TRTCVideoFrameListener tRTCVideoFrameListener) {
        this.mJniReadLock.lock();
        try {
            if (this.mNativeTrtcCloudJni != 0) {
                GLConstants.PixelFormatType convertTRTCFormatTypeToPixelFormatType = convertTRTCFormatTypeToPixelFormatType(i10);
                GLConstants.PixelBufferType convertTRTCBufferTypeToPixelBufferType = convertTRTCBufferTypeToPixelBufferType(i11);
                if (!isCustomPreprocessSupportedFormatType(convertTRTCFormatTypeToPixelFormatType)) {
                    this.mJniReadLock.unlock();
                    return TXLiteAVCode.ERR_PIXEL_FORMAT_UNSUPPORTED;
                } else if (!isCustomPreprocessSupportedBufferType(convertTRTCBufferTypeToPixelBufferType)) {
                    this.mJniReadLock.unlock();
                    return TXLiteAVCode.ERR_BUFFER_TYPE_UNSUPPORTED;
                } else {
                    synchronized (this.mVideoFrameListenerWrapper) {
                        a<TRTCCloudListener.TRTCVideoFrameListener> aVar = this.mVideoFrameListenerWrapper;
                        if (aVar.f31342d != null) {
                            nativeEnableVideoCustomPreprocess(this.mNativeTrtcCloudJni, false, aVar.f31339a, aVar.f31340b.getValue(), this.mVideoFrameListenerWrapper.f31341c.mValue);
                        }
                        a<TRTCCloudListener.TRTCVideoFrameListener> aVar2 = this.mVideoFrameListenerWrapper;
                        aVar2.f31342d = tRTCVideoFrameListener;
                        aVar2.f31339a = i9;
                        aVar2.f31340b = convertTRTCFormatTypeToPixelFormatType;
                        aVar2.f31341c = convertTRTCBufferTypeToPixelBufferType;
                        if (tRTCVideoFrameListener != 0) {
                            nativeEnableVideoCustomPreprocess(this.mNativeTrtcCloudJni, true, i9, convertTRTCFormatTypeToPixelFormatType.getValue(), this.mVideoFrameListenerWrapper.f31341c.mValue);
                        }
                    }
                }
            }
            return 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int setLocalVideoRenderListener(int i9, int i10, TRTCCloudListener.TRTCVideoRenderListener tRTCVideoRenderListener) {
        boolean z10;
        this.mJniReadLock.lock();
        try {
            if (this.mNativeTrtcCloudJni != 0) {
                GLConstants.PixelFormatType convertTRTCFormatTypeToPixelFormatType = convertTRTCFormatTypeToPixelFormatType(i9);
                GLConstants.PixelBufferType convertTRTCBufferTypeToPixelBufferType = convertTRTCBufferTypeToPixelBufferType(i10);
                if (!isCustomRenderSupportedFormatType(convertTRTCFormatTypeToPixelFormatType)) {
                    this.mJniReadLock.unlock();
                    return TXLiteAVCode.ERR_PIXEL_FORMAT_UNSUPPORTED;
                } else if (!isCustomRenderSupportedBufferType(convertTRTCBufferTypeToPixelBufferType)) {
                    this.mJniReadLock.unlock();
                    return TXLiteAVCode.ERR_BUFFER_TYPE_UNSUPPORTED;
                } else {
                    synchronized (this.mLocalVideoRenderListenerWrapper) {
                        a<TRTCCloudListener.TRTCVideoRenderListener> aVar = this.mLocalVideoRenderListenerWrapper;
                        if (aVar.f31342d != null) {
                            GLConstants.PixelFormatType pixelFormatType = aVar.f31340b;
                            if (pixelFormatType == convertTRTCFormatTypeToPixelFormatType && aVar.f31341c == convertTRTCBufferTypeToPixelBufferType) {
                                z10 = false;
                                if (!z10 && tRTCVideoRenderListener != 0) {
                                    aVar.f31342d = tRTCVideoRenderListener;
                                }
                                nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 0, pixelFormatType.getValue(), this.mLocalVideoRenderListenerWrapper.f31341c.mValue);
                                nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 2, this.mLocalVideoRenderListenerWrapper.f31340b.getValue(), this.mLocalVideoRenderListenerWrapper.f31341c.mValue);
                            }
                            z10 = true;
                            if (!z10) {
                                aVar.f31342d = tRTCVideoRenderListener;
                            }
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 0, pixelFormatType.getValue(), this.mLocalVideoRenderListenerWrapper.f31341c.mValue);
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 2, this.mLocalVideoRenderListenerWrapper.f31340b.getValue(), this.mLocalVideoRenderListenerWrapper.f31341c.mValue);
                        }
                        a<TRTCCloudListener.TRTCVideoRenderListener> aVar2 = this.mLocalVideoRenderListenerWrapper;
                        aVar2.f31342d = tRTCVideoRenderListener;
                        aVar2.f31340b = convertTRTCFormatTypeToPixelFormatType;
                        aVar2.f31341c = convertTRTCBufferTypeToPixelBufferType;
                        if (tRTCVideoRenderListener != 0) {
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, true, "", 0, convertTRTCFormatTypeToPixelFormatType.getValue(), this.mLocalVideoRenderListenerWrapper.f31341c.mValue);
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, true, "", 2, this.mLocalVideoRenderListenerWrapper.f31340b.getValue(), this.mLocalVideoRenderListenerWrapper.f31341c.mValue);
                        }
                    }
                }
            }
            return 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setLocalViewFillMode(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetLocalViewFillMode(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setLocalViewMirror(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetLocalViewMirror(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setLocalViewRotation(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetLocalViewRotation(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setMixExternalAudioVolume(int i9, int i10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetMixExternalAudioVolume(j10, i9, i10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setMixTranscodingConfig(TRTCCloudDef.TRTCTranscodingConfig tRTCTranscodingConfig) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetMixTranscodingConfig(j10, tRTCTranscodingConfig == null ? null : new TranscodingConfig(tRTCTranscodingConfig));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int setMixedPlayAudioFrameCallbackFormat(int i9, int i10, int i11, int i12) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            return j10 != 0 ? nativeSetMixedPlayAudioFrameCallbackFormat(j10, i9, i10, i11, i12) : 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setNetworkQosParam(TRTCCloudDef.TRTCNetworkQosParam tRTCNetworkQosParam) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetNetworkQosParam(j10, tRTCNetworkQosParam.preference, tRTCNetworkQosParam.controlMode);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int setPriorRemoteVideoStreamType(int i9) {
        long j10 = this.mNativeTrtcCloudJni;
        if (j10 != 0) {
            nativeSetPriorRemoteVideoStreamType(j10, i9);
            return 0;
        }
        return 0;
    }

    public void setRemoteAudioParallelParams(TRTCCloudDef.TRTCAudioParallelParams tRTCAudioParallelParams) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetRemoteAudioParallelParams(j10, new AudioParallelParams(tRTCAudioParallelParams));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setRemoteAudioVolume(String str, int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetRemoteAudioVolume(j10, str, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int setRemoteVideoRenderListener(String str, int i9, int i10, TRTCCloudListener.TRTCVideoRenderListener tRTCVideoRenderListener) {
        boolean z10;
        this.mJniReadLock.lock();
        try {
            if (this.mNativeTrtcCloudJni != 0) {
                if (TextUtils.isEmpty(str)) {
                    this.mJniReadLock.unlock();
                    return -3319;
                }
                GLConstants.PixelFormatType convertTRTCFormatTypeToPixelFormatType = convertTRTCFormatTypeToPixelFormatType(i9);
                GLConstants.PixelBufferType convertTRTCBufferTypeToPixelBufferType = convertTRTCBufferTypeToPixelBufferType(i10);
                if (!isCustomRenderSupportedFormatType(convertTRTCFormatTypeToPixelFormatType)) {
                    this.mJniReadLock.unlock();
                    return TXLiteAVCode.ERR_PIXEL_FORMAT_UNSUPPORTED;
                } else if (!isCustomRenderSupportedBufferType(convertTRTCBufferTypeToPixelBufferType)) {
                    this.mJniReadLock.unlock();
                    return TXLiteAVCode.ERR_BUFFER_TYPE_UNSUPPORTED;
                } else {
                    synchronized (this.mRemoteVideoRenderListenerMap) {
                        a<TRTCCloudListener.TRTCVideoRenderListener> aVar = this.mRemoteVideoRenderListenerMap.get(str);
                        if (aVar != null) {
                            GLConstants.PixelFormatType pixelFormatType = aVar.f31340b;
                            if (pixelFormatType == convertTRTCFormatTypeToPixelFormatType && aVar.f31341c == convertTRTCBufferTypeToPixelBufferType) {
                                z10 = false;
                                if (!z10 && tRTCVideoRenderListener != 0) {
                                    aVar.f31342d = tRTCVideoRenderListener;
                                    this.mRemoteVideoRenderListenerMap.put(str, aVar);
                                }
                                nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 0, pixelFormatType.getValue(), aVar.f31341c.mValue);
                                nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 2, aVar.f31340b.getValue(), aVar.f31341c.mValue);
                            }
                            z10 = true;
                            if (!z10) {
                                aVar.f31342d = tRTCVideoRenderListener;
                                this.mRemoteVideoRenderListenerMap.put(str, aVar);
                            }
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 0, pixelFormatType.getValue(), aVar.f31341c.mValue);
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, false, "", 2, aVar.f31340b.getValue(), aVar.f31341c.mValue);
                        }
                        if (tRTCVideoRenderListener != 0) {
                            a<TRTCCloudListener.TRTCVideoRenderListener> aVar2 = new a<>((byte) 0);
                            aVar2.f31342d = tRTCVideoRenderListener;
                            aVar2.f31340b = convertTRTCFormatTypeToPixelFormatType;
                            aVar2.f31341c = convertTRTCBufferTypeToPixelBufferType;
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, true, str, 0, convertTRTCFormatTypeToPixelFormatType.getValue(), aVar2.f31341c.mValue);
                            nativeEnableVideoCustomRender(this.mNativeTrtcCloudJni, true, str, 2, aVar2.f31340b.getValue(), aVar2.f31341c.mValue);
                            this.mRemoteVideoRenderListenerMap.put(str, aVar2);
                        } else {
                            this.mRemoteVideoRenderListenerMap.remove(str);
                        }
                    }
                }
            }
            return 0;
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int setRemoteVideoStreamType(String str, int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetRemoteVideoStreamType(j10, str, i9);
            }
            this.mJniReadLock.unlock();
            return 0;
        } catch (Throwable th2) {
            this.mJniReadLock.unlock();
            throw th2;
        }
    }

    public void setRemoteViewFillMode(String str, int i9, int i10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetRemoteViewFillMode(j10, str, i9, i10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setRemoteViewMirror(String str, int i9, int i10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetRemoteViewMirror(j10, str, i9, i10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setRemoteViewRotation(String str, int i9, int i10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                if (i10 == 1) {
                    i10 = 3;
                } else if (i10 == 3) {
                    i10 = 1;
                }
                nativeSetRemoteViewRotation(j10, str, i9, i10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setVideoEncoderMirror(boolean z10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetVideoEncoderMirror(j10, z10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setVideoEncoderParams(int i9, TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetVideoEncoderParams(j10, i9, new VideoEncParams(tRTCVideoEncParam));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setVideoEncoderRotation(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetVideoEncoderRotation(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setVideoMuteImage(int i9, Bitmap bitmap, int i10) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetVideoMuteImage(j10, i9, bitmap, i10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void setWatermark(Bitmap bitmap, int i9, float f10, float f11, float f12) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSetWatermark(j10, bitmap, i9, f10, f11, f12);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void showDashboardManager(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeShowDashboardManager(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void snapshotVideo(String str, int i9, TRTCCloudListener.TRTCSnapshotListener tRTCSnapshotListener) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSnapshotVideo(j10, str, i9, tRTCSnapshotListener);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public int startAudioRecording(TRTCCloudDef.TRTCAudioRecordingParams tRTCAudioRecordingParams) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 == 0) {
                this.mJniReadLock.unlock();
                return 0;
            }
            return nativeStartAudioRecording(j10, new AudioRecordingParams(tRTCAudioRecordingParams));
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startLocalAudio(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartLocalAudioWithQuality(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startLocalPreview(boolean z10, TXCloudVideoView tXCloudVideoView) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartLocalPreview(j10, z10, new DisplayTarget(tXCloudVideoView));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startLocalRecording(TRTCCloudDef.TRTCLocalRecordingParams tRTCLocalRecordingParams) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartLocalRecording(j10, new LocalRecordingParams(tRTCLocalRecordingParams));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startPublishCDNStream(TRTCCloudDef.TRTCPublishCDNParam tRTCPublishCDNParam) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartPublishCDNStream(j10, new PublishCDNParams(tRTCPublishCDNParam));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startPublishMediaStream(TRTCCloudDef.TRTCPublishTarget tRTCPublishTarget, TRTCCloudDef.TRTCStreamEncoderParam tRTCStreamEncoderParam, TRTCCloudDef.TRTCStreamMixingConfig tRTCStreamMixingConfig) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                StreamMixingConfig streamMixingConfig = null;
                PublishTarget publishTarget = tRTCPublishTarget == null ? null : new PublishTarget(tRTCPublishTarget);
                StreamEncoderParam streamEncoderParam = tRTCStreamEncoderParam == null ? null : new StreamEncoderParam(tRTCStreamEncoderParam);
                if (tRTCStreamMixingConfig != null) {
                    streamMixingConfig = new StreamMixingConfig(tRTCStreamMixingConfig);
                }
                nativeStartPublishMediaStream(j10, publishTarget, streamEncoderParam, streamMixingConfig);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startPublishing(String str, int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartPublishing(j10, str, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startRemoteView(String str, int i9, TXCloudVideoView tXCloudVideoView) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartRemoteView(j10, str, i9, new DisplayTarget(tXCloudVideoView));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startScreenCapture(int i9, TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam, final TRTCCloudDef.TRTCScreenShareParams tRTCScreenShareParams) {
        this.mJniReadLock.lock();
        try {
            if (this.mNativeTrtcCloudJni != 0) {
                ScreenShareParams screenShareParams = tRTCScreenShareParams != null ? new ScreenShareParams(tRTCScreenShareParams) : null;
                if (tRTCVideoEncParam == null) {
                    nativeStartScreenCapture(this.mNativeTrtcCloudJni, i9, null, screenShareParams);
                    LiteavLog.w(TAG, "startScreenCapture encParams is null");
                } else {
                    nativeStartScreenCapture(this.mNativeTrtcCloudJni, i9, new VideoEncParams(tRTCVideoEncParam), screenShareParams);
                }
            }
            if (tRTCScreenShareParams != null) {
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.liteav.trtc.TrtcCloudJni.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        TrtcCloudJni.this.showFloatingWindow(tRTCScreenShareParams.floatingView);
                    }
                });
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startSpeedTest(boolean z10, TRTCCloudDef.TRTCSpeedTestParams tRTCSpeedTestParams) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartSpeedTest(j10, z10, new SpeedTestParams(tRTCSpeedTestParams));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startSystemAudioLoopback() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartSystemAudioLoopback(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopAllRemoteView() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopAllRemoteView(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopAudioRecording() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopAudioRecording(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopLocalAudio() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopLocalAudio(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopLocalPreview() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopLocalPreview(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopLocalRecording() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopLocalRecording(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopPublishCDNStream() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopPublishCDNStream(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopPublishMediaStream(String str) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopPublishMediaStream(j10, str);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopPublishing() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopPublishing(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopRemoteView(String str, int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopRemoteView(j10, str, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopScreenCapture(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopScreenCapture(j10, i9);
            }
            this.mJniReadLock.unlock();
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.tencent.liteav.trtc.TrtcCloudJni.2
                @Override // java.lang.Runnable
                public final void run() {
                    TrtcCloudJni.this.hideFloatingWindow();
                }
            });
        } catch (Throwable th2) {
            this.mJniReadLock.unlock();
            throw th2;
        }
    }

    public void stopSpeedTest() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopSpeedTest(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopSystemAudioLoopback() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopSystemAudioLoopback(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void switchRole(int i9) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSwitchRole(j10, i9);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void switchRoom(TRTCCloudDef.TRTCSwitchRoomConfig tRTCSwitchRoomConfig) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSwitchRoom(j10, new SwitchRoomConfig(tRTCSwitchRoomConfig));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void updateLocalView(TXCloudVideoView tXCloudVideoView) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeUpdateLocalView(j10, new DisplayTarget(tXCloudVideoView));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void updatePublishMediaStream(String str, TRTCCloudDef.TRTCPublishTarget tRTCPublishTarget, TRTCCloudDef.TRTCStreamEncoderParam tRTCStreamEncoderParam, TRTCCloudDef.TRTCStreamMixingConfig tRTCStreamMixingConfig) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeUpdatePublishMediaStream(j10, str, tRTCPublishTarget == null ? null : new PublishTarget(tRTCPublishTarget), tRTCStreamEncoderParam == null ? null : new StreamEncoderParam(tRTCStreamEncoderParam), tRTCStreamMixingConfig == null ? null : new StreamMixingConfig(tRTCStreamMixingConfig));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void updateRemote3DSpatialPosition(String str, int[] iArr) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeUpdateRemote3DSpatialPosition(j10, str, iArr);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void updateRemoteView(String str, int i9, TXCloudVideoView tXCloudVideoView) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeUpdateRemoteView(j10, str, i9, new DisplayTarget(tXCloudVideoView));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void updateSelf3DSpatialPosition(int[] iArr, float[] fArr, float[] fArr2, float[] fArr3) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeUpdateSelf3DSpatialPosition(j10, iArr, fArr, fArr2, fArr3);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public TrtcCloudJni(long j10, boolean z10) {
        this.mNativeTrtcCloudJni = 0L;
        this.mLocalUserId = "";
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.mReadWriteLock = reentrantReadWriteLock;
        this.mJniReadLock = reentrantReadWriteLock.readLock();
        this.mJniWriteLock = reentrantReadWriteLock.writeLock();
        this.mFloatingWindowSet = new HashSet<>();
        if (j10 == 0) {
            this.mNativeTrtcCloudJni = nativeCreatePipeline(this, z10);
        } else {
            this.mNativeTrtcCloudJni = nativeCreateSubCloud(this, j10);
        }
        this.mVideoFrameListenerWrapper = new a<>((byte) 0);
        this.mLocalVideoRenderListenerWrapper = new a<>((byte) 0);
        this.mRemoteVideoRenderListenerMap = new HashMap();
        this.mListenerHandler = new Handler(Looper.getMainLooper());
    }

    public void startLocalAudio() {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartLocalAudio(j10);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void startRemoteView(String str, TXCloudVideoView tXCloudVideoView) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStartRemoteViewWithoutStreamType(j10, str, new DisplayTarget(tXCloudVideoView));
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void stopRemoteView(String str) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeStopRemoteViewWithoutStreamType(j10, str);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    public void switchRole(int i9, String str) {
        this.mJniReadLock.lock();
        try {
            long j10 = this.mNativeTrtcCloudJni;
            if (j10 != 0) {
                nativeSwitchRoleWithPrivateMapKey(j10, i9, str);
            }
        } finally {
            this.mJniReadLock.unlock();
        }
    }

    private static void shadowCopy(@NonNull TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame, @NonNull PixelFrame pixelFrame) {
        int i9;
        Object obj;
        TRTCCloudDef.TRTCTexture tRTCTexture = tRTCVideoFrame.texture;
        pixelFrame.setPixelFormatType(convertTRTCFormatTypeToPixelFormatType(tRTCVideoFrame.pixelFormat));
        pixelFrame.setPixelBufferType(convertTRTCBufferTypeToPixelBufferType(tRTCVideoFrame.bufferType));
        if (tRTCTexture != null) {
            i9 = tRTCTexture.textureId;
            obj = tRTCTexture.eglContext10;
            if (obj == null) {
                obj = tRTCTexture.eglContext14;
            }
        } else {
            i9 = -1;
            obj = null;
        }
        pixelFrame.setTextureId(i9);
        pixelFrame.setGLContext(obj);
        pixelFrame.setData(tRTCVideoFrame.data);
        pixelFrame.setBuffer(tRTCVideoFrame.buffer);
        pixelFrame.setWidth(tRTCVideoFrame.width);
        pixelFrame.setHeight(tRTCVideoFrame.height);
        pixelFrame.setTimestamp(tRTCVideoFrame.timestamp);
        pixelFrame.setRotation(covertTRTCVideoRotationToPixelFrameRotation(tRTCVideoFrame.rotation));
    }
}
