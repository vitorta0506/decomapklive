package com.tencent.thumbplayer.adapter.a.b;

import androidx.annotation.NonNull;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.api.TPAudioAttributes;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPDashFormat;
import com.tencent.thumbplayer.api.TPDrmInfo;
import com.tencent.thumbplayer.api.TPJitterBufferConfig;
import com.tencent.thumbplayer.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.api.TPPlayerMsg;
import com.tencent.thumbplayer.api.TPPostProcessFrameBuffer;
import com.tencent.thumbplayer.api.TPRemoteSdpInfo;
import com.tencent.thumbplayer.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPSurfaceDolbyVisionInfo;
import com.tencent.thumbplayer.api.TPSurfaceRenderInfo;
import com.tencent.thumbplayer.api.TPVideoFrameBuffer;
import com.tencent.thumbplayer.api.TPVideoPacketBuffer;
import com.tencent.thumbplayer.core.common.TPAudioFrame;
import com.tencent.thumbplayer.core.common.TPDetailInfo;
import com.tencent.thumbplayer.core.common.TPMediaTrackDashFormat;
import com.tencent.thumbplayer.core.common.TPNativeAudioAttributes;
import com.tencent.thumbplayer.core.common.TPPostProcessFrame;
import com.tencent.thumbplayer.core.common.TPSubtitleFrame;
import com.tencent.thumbplayer.core.common.TPVideoFrame;
import com.tencent.thumbplayer.core.common.TPVideoPacket;
import com.tencent.thumbplayer.core.demuxer.TPNativeJitterBufferConfig;
import com.tencent.thumbplayer.core.demuxer.TPNativeRemoteSdpInfo;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.core.player.TPNativePlayerSurfaceDolbyVisionInfo;
import com.tencent.thumbplayer.core.player.TPNativePlayerSurfaceRenderInfo;
import com.tencent.thumbplayer.core.subtitle.TPNativeSubtitleRenderParams;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static String f33623a = "TPThumbPlayerUtils";

    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f33624a;

        /* renamed from: b  reason: collision with root package name */
        private final int f33625b;

        public a() {
            this.f33624a = -1;
            this.f33625b = -1;
        }

        public a(int i9, int i10) {
            this.f33624a = i9;
            this.f33625b = i10;
        }

        public boolean a() {
            return this.f33624a == -1 || this.f33625b == -1;
        }

        public int b() {
            return this.f33624a;
        }

        public int c() {
            return this.f33625b;
        }
    }

    private static long a(long j10) {
        long j11 = 0;
        for (Map.Entry<Number, Number> entry : TPNativeKeyMapUtil.getEntrySetOfToNativeMap(TPNativeKeyMap.MapSubtitleRenderParams.class)) {
            if ((entry.getKey().longValue() & j10) > 0) {
                j11 |= entry.getValue().longValue();
            }
        }
        return j11;
    }

    public static TPAudioFrameBuffer a(TPAudioFrame tPAudioFrame) {
        if (tPAudioFrame == null) {
            return null;
        }
        TPAudioFrameBuffer tPAudioFrameBuffer = new TPAudioFrameBuffer();
        tPAudioFrameBuffer.format = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapAudioSampleFormat.class, tPAudioFrame.format);
        tPAudioFrameBuffer.data = tPAudioFrame.data;
        tPAudioFrameBuffer.size = tPAudioFrame.linesize;
        tPAudioFrameBuffer.sampleRate = tPAudioFrame.sampleRate;
        tPAudioFrameBuffer.channelLayout = tPAudioFrame.channelLayout;
        tPAudioFrameBuffer.ptsMs = tPAudioFrame.ptsUs / 1000;
        tPAudioFrameBuffer.nbSamples = tPAudioFrame.nbSamples;
        tPAudioFrameBuffer.channels = tPAudioFrame.channels;
        return tPAudioFrameBuffer;
    }

    public static TPDashFormat a(TPMediaTrackDashFormat tPMediaTrackDashFormat) {
        if (tPMediaTrackDashFormat == null) {
            return null;
        }
        TPDashFormat tPDashFormat = new TPDashFormat();
        tPDashFormat.representationId = tPMediaTrackDashFormat.representationId;
        tPDashFormat.codecs = tPMediaTrackDashFormat.codecs;
        tPDashFormat.mimeType = tPMediaTrackDashFormat.mimeType;
        tPDashFormat.language = tPMediaTrackDashFormat.language;
        tPDashFormat.width = tPMediaTrackDashFormat.width;
        tPDashFormat.height = tPMediaTrackDashFormat.height;
        tPDashFormat.bandwidth = tPMediaTrackDashFormat.bandwidth;
        tPDashFormat.audioChannels = tPMediaTrackDashFormat.audioChannels;
        tPDashFormat.audioSamplingRate = tPMediaTrackDashFormat.audioSamplingRate;
        tPDashFormat.frameRate = tPMediaTrackDashFormat.frameRate;
        return tPDashFormat;
    }

    public static TPDrmInfo a(@NonNull TPGeneralPlayFlowParams.TPPlayerDrmParams tPPlayerDrmParams) {
        TPDrmInfo tPDrmInfo = new TPDrmInfo();
        tPDrmInfo.drmSecureLevel = tPPlayerDrmParams.mSecureLevel;
        tPDrmInfo.drmSupportSecureDecoder = tPPlayerDrmParams.mSupportSecureDecoder;
        tPDrmInfo.drmSupportSecureDecrypt = tPPlayerDrmParams.mSupportSecureDecrypt;
        tPDrmInfo.drmComponentName = tPPlayerDrmParams.mComponentName;
        tPDrmInfo.drmType = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapReportDrmType.class, tPPlayerDrmParams.mDrmType);
        tPDrmInfo.drmPrepareStartTimeMs = tPPlayerDrmParams.mPrepareSTimeMs;
        tPDrmInfo.drmPrepareEndTimeMs = tPPlayerDrmParams.mPrepareETimeMs;
        tPDrmInfo.drmOpenSessionStartTimeMs = tPPlayerDrmParams.mOpenSessionSTimeMs;
        tPDrmInfo.drmOpenSessionEndTimeMs = tPPlayerDrmParams.mOpenSessionETimeMs;
        tPDrmInfo.drmGetProvisionReqStartTimeMs = tPPlayerDrmParams.mGetProvisionReqSTimeMs;
        tPDrmInfo.drmGetProvisionReqEndTimeMs = tPPlayerDrmParams.mGetProvisionReqETimeMs;
        tPDrmInfo.drmSendProvisionReqTimeMs = tPPlayerDrmParams.mSendProvisionReqTimeMs;
        tPDrmInfo.drmRecvProvisionRespTimeMs = tPPlayerDrmParams.mRecvProvisionRespTimeMs;
        tPDrmInfo.drmProvideProvisionRespStartTimeMs = tPPlayerDrmParams.mProvideProvisionRespSTimeMs;
        tPDrmInfo.drmProvideProvisionRespEndTimeMs = tPPlayerDrmParams.mProvideProvisionRespETimeMs;
        tPDrmInfo.drmGetKeyReqStartTimeMs = tPPlayerDrmParams.mGetKeyReqSTimeMs;
        tPDrmInfo.drmGetKeyReqEndTimeMs = tPPlayerDrmParams.mGetKeyReqETimeMs;
        tPDrmInfo.drmSendKeyReqTimeMs = tPPlayerDrmParams.mSendKeyReqTimeMs;
        tPDrmInfo.drmRecvKeyRespTimeMs = tPPlayerDrmParams.mRecvKeyRespTimeMs;
        tPDrmInfo.drmProvideKeyRespStartTimeMs = tPPlayerDrmParams.mProvideKeyRespSTimeMs;
        tPDrmInfo.drmProvideKeyRespEndTimeMs = tPPlayerDrmParams.mProvideKeyRespETimeMs;
        return tPDrmInfo;
    }

    public static TPPlayerDetailInfo a(TPDetailInfo tPDetailInfo) {
        if (tPDetailInfo == null) {
            return null;
        }
        return new TPPlayerDetailInfo(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDetailInfoType.class, tPDetailInfo.type), tPDetailInfo.timeSince1970Us / 1000);
    }

    public static TPPlayerMsg.TPMediaCodecInfo a(ITPNativePlayerMessageCallback.MediaCodecInfo mediaCodecInfo) {
        if (mediaCodecInfo == null) {
            return null;
        }
        TPPlayerMsg.TPMediaCodecInfo tPMediaCodecInfo = new TPPlayerMsg.TPMediaCodecInfo();
        int i9 = mediaCodecInfo.mediaType;
        tPMediaCodecInfo.mediaType = i9 != 0 ? i9 != 1 ? TPPlayerMsg.TPMediaCodecInfo.TP_DEC_MEDIA_TYPE_UNKNOWN : TPPlayerMsg.TPMediaCodecInfo.TP_DEC_MEDIA_TYPE_AUDIO : TPPlayerMsg.TPMediaCodecInfo.TP_DEC_MEDIA_TYPE_VIDEO;
        int i10 = mediaCodecInfo.infoType;
        tPMediaCodecInfo.infoType = i10 != 0 ? i10 != 1 ? TPPlayerMsg.TPMediaCodecInfo.TP_INFO_UNKNOWN : TPPlayerMsg.TPMediaCodecInfo.TP_INFO_MEDIA_CODEC_EXCEPTION : TPPlayerMsg.TPMediaCodecInfo.TP_INFO_MEDIA_CODEC_READY;
        tPMediaCodecInfo.msg = mediaCodecInfo.msg;
        return tPMediaCodecInfo;
    }

    public static TPPlayerMsg.TPMediaDrmInfo a(ITPNativePlayerMessageCallback.MediaDrmInfo mediaDrmInfo) {
        if (mediaDrmInfo == null) {
            return null;
        }
        TPPlayerMsg.TPMediaDrmInfo tPMediaDrmInfo = new TPPlayerMsg.TPMediaDrmInfo();
        tPMediaDrmInfo.supportSecureDecoder = mediaDrmInfo.supportSecureDecoder;
        tPMediaDrmInfo.supportSecureDecrypt = mediaDrmInfo.supportSecureDecrypt;
        tPMediaDrmInfo.componentName = mediaDrmInfo.componentName;
        tPMediaDrmInfo.drmType = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDrmType.class, mediaDrmInfo.drmType);
        return tPMediaDrmInfo;
    }

    public static TPPlayerMsg.TPVideoCropInfo a(ITPNativePlayerMessageCallback.VideoCropInfo videoCropInfo) {
        if (videoCropInfo == null) {
            return null;
        }
        TPPlayerMsg.TPVideoCropInfo tPVideoCropInfo = new TPPlayerMsg.TPVideoCropInfo();
        tPVideoCropInfo.width = videoCropInfo.width;
        tPVideoCropInfo.height = videoCropInfo.height;
        tPVideoCropInfo.cropLeft = videoCropInfo.cropLeft;
        tPVideoCropInfo.cropRight = videoCropInfo.cropRight;
        tPVideoCropInfo.cropTop = videoCropInfo.cropTop;
        tPVideoCropInfo.cropBottom = videoCropInfo.cropBottom;
        return tPVideoCropInfo;
    }

    public static TPPlayerMsg.TPVideoSeiInfo a(ITPNativePlayerMessageCallback.VideoSeiInfo videoSeiInfo) {
        Class cls;
        int tPIntValue;
        if (videoSeiInfo == null) {
            return null;
        }
        TPPlayerMsg.TPVideoSeiInfo tPVideoSeiInfo = new TPPlayerMsg.TPVideoSeiInfo();
        int tPIntValue2 = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapCodecType.class, videoSeiInfo.videoCodecType);
        tPVideoSeiInfo.videoCodecType = tPIntValue2;
        if (videoSeiInfo.isSpecialType) {
            tPIntValue = videoSeiInfo.videoSeiType;
        } else {
            if (tPIntValue2 != 26) {
                cls = tPIntValue2 == 172 ? TPNativeKeyMap.MapVideoHevcSeiType.class : TPNativeKeyMap.MapVideoHevcSeiType.class;
                int i9 = videoSeiInfo.dataSize;
                tPVideoSeiInfo.seiDataSize = i9;
                tPVideoSeiInfo.seiData = Arrays.copyOf(videoSeiInfo.data, i9);
                return tPVideoSeiInfo;
            }
            cls = TPNativeKeyMap.MapVideoH264SeiType.class;
            tPIntValue = TPNativeKeyMapUtil.toTPIntValue(cls, videoSeiInfo.videoSeiType);
        }
        tPVideoSeiInfo.videoSeiType = tPIntValue;
        int i92 = videoSeiInfo.dataSize;
        tPVideoSeiInfo.seiDataSize = i92;
        tPVideoSeiInfo.seiData = Arrays.copyOf(videoSeiInfo.data, i92);
        return tPVideoSeiInfo;
    }

    public static TPPostProcessFrameBuffer a(TPPostProcessFrame tPPostProcessFrame) {
        Class cls;
        if (tPPostProcessFrame == null) {
            return null;
        }
        TPPostProcessFrameBuffer tPPostProcessFrameBuffer = new TPPostProcessFrameBuffer();
        int tPIntValue = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapMediaType.class, tPPostProcessFrame.mediaType);
        tPPostProcessFrameBuffer.mediaType = tPIntValue;
        if (tPIntValue != 0) {
            cls = tPIntValue == 1 ? TPNativeKeyMap.MapAudioSampleFormat.class : TPNativeKeyMap.MapAudioSampleFormat.class;
            tPPostProcessFrameBuffer.data = tPPostProcessFrame.data;
            tPPostProcessFrameBuffer.size = tPPostProcessFrame.linesize;
            tPPostProcessFrameBuffer.sampleRate = tPPostProcessFrame.sampleRate;
            tPPostProcessFrameBuffer.channelLayout = tPPostProcessFrame.channelLayout;
            tPPostProcessFrameBuffer.ptsMs = tPPostProcessFrame.ptsUs / 1000;
            tPPostProcessFrameBuffer.nbSamples = tPPostProcessFrame.nbSamples;
            tPPostProcessFrameBuffer.channels = tPPostProcessFrame.channels;
            tPPostProcessFrameBuffer.width = tPPostProcessFrame.width;
            tPPostProcessFrameBuffer.height = tPPostProcessFrame.height;
            tPPostProcessFrameBuffer.sampleAspectRatioNum = tPPostProcessFrame.sampleAspectRatioNum;
            tPPostProcessFrameBuffer.sampleAspectRatioDen = tPPostProcessFrame.sampleAspectRatioDen;
            tPPostProcessFrameBuffer.rotation = tPPostProcessFrame.rotation;
            tPPostProcessFrameBuffer.perfData = tPPostProcessFrame.perfData;
            return tPPostProcessFrameBuffer;
        }
        cls = TPNativeKeyMap.MapPixelFormat.class;
        tPPostProcessFrameBuffer.format = TPNativeKeyMapUtil.toTPIntValue(cls, tPPostProcessFrame.format);
        tPPostProcessFrameBuffer.data = tPPostProcessFrame.data;
        tPPostProcessFrameBuffer.size = tPPostProcessFrame.linesize;
        tPPostProcessFrameBuffer.sampleRate = tPPostProcessFrame.sampleRate;
        tPPostProcessFrameBuffer.channelLayout = tPPostProcessFrame.channelLayout;
        tPPostProcessFrameBuffer.ptsMs = tPPostProcessFrame.ptsUs / 1000;
        tPPostProcessFrameBuffer.nbSamples = tPPostProcessFrame.nbSamples;
        tPPostProcessFrameBuffer.channels = tPPostProcessFrame.channels;
        tPPostProcessFrameBuffer.width = tPPostProcessFrame.width;
        tPPostProcessFrameBuffer.height = tPPostProcessFrame.height;
        tPPostProcessFrameBuffer.sampleAspectRatioNum = tPPostProcessFrame.sampleAspectRatioNum;
        tPPostProcessFrameBuffer.sampleAspectRatioDen = tPPostProcessFrame.sampleAspectRatioDen;
        tPPostProcessFrameBuffer.rotation = tPPostProcessFrame.rotation;
        tPPostProcessFrameBuffer.perfData = tPPostProcessFrame.perfData;
        return tPPostProcessFrameBuffer;
    }

    public static TPSubtitleFrameBuffer a(TPSubtitleFrame tPSubtitleFrame) {
        if (tPSubtitleFrame == null) {
            return null;
        }
        TPSubtitleFrameBuffer tPSubtitleFrameBuffer = new TPSubtitleFrameBuffer();
        tPSubtitleFrameBuffer.data = tPSubtitleFrame.data;
        tPSubtitleFrameBuffer.lineSize = tPSubtitleFrame.linesize;
        tPSubtitleFrameBuffer.format = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapSubtitleFormat.class, tPSubtitleFrame.format);
        int i9 = tPSubtitleFrame.height;
        tPSubtitleFrameBuffer.srcHeight = i9;
        int i10 = tPSubtitleFrame.width;
        tPSubtitleFrameBuffer.srcWidth = i10;
        tPSubtitleFrameBuffer.dstHeight = i9;
        tPSubtitleFrameBuffer.dstWidth = i10;
        tPSubtitleFrameBuffer.rotation = tPSubtitleFrame.rotation;
        tPSubtitleFrameBuffer.ptsMs = tPSubtitleFrame.ptsUs / 1000;
        return tPSubtitleFrameBuffer;
    }

    public static TPSurfaceDolbyVisionInfo a(TPNativePlayerSurfaceDolbyVisionInfo tPNativePlayerSurfaceDolbyVisionInfo) {
        if (tPNativePlayerSurfaceDolbyVisionInfo == null) {
            return null;
        }
        TPSurfaceDolbyVisionInfo tPSurfaceDolbyVisionInfo = new TPSurfaceDolbyVisionInfo();
        tPSurfaceDolbyVisionInfo.mProfile = tPNativePlayerSurfaceDolbyVisionInfo.mProfile;
        tPSurfaceDolbyVisionInfo.mLevel = tPNativePlayerSurfaceDolbyVisionInfo.mLevel;
        tPSurfaceDolbyVisionInfo.mBlSignalCompatibilityId = tPNativePlayerSurfaceDolbyVisionInfo.mBlSignalCompatibilityId;
        return tPSurfaceDolbyVisionInfo;
    }

    private static TPSurfaceRenderInfo.TPVideoCropInfo a(TPNativePlayerSurfaceRenderInfo.TPVideoCropInfo tPVideoCropInfo) {
        if (tPVideoCropInfo == null) {
            return null;
        }
        TPSurfaceRenderInfo.TPVideoCropInfo tPVideoCropInfo2 = new TPSurfaceRenderInfo.TPVideoCropInfo();
        tPVideoCropInfo2.cropLeft = tPVideoCropInfo.cropLeft;
        tPVideoCropInfo2.cropRight = tPVideoCropInfo.cropRight;
        tPVideoCropInfo2.cropTop = tPVideoCropInfo.cropTop;
        tPVideoCropInfo2.cropBottom = tPVideoCropInfo.cropBottom;
        tPVideoCropInfo2.width = tPVideoCropInfo.width;
        tPVideoCropInfo2.height = tPVideoCropInfo.height;
        return tPVideoCropInfo2;
    }

    public static TPSurfaceRenderInfo a(TPNativePlayerSurfaceRenderInfo tPNativePlayerSurfaceRenderInfo) {
        if (tPNativePlayerSurfaceRenderInfo == null) {
            return null;
        }
        TPSurfaceRenderInfo tPSurfaceRenderInfo = new TPSurfaceRenderInfo();
        tPSurfaceRenderInfo.displayWidth = tPNativePlayerSurfaceRenderInfo.displayWidth;
        tPSurfaceRenderInfo.displayHeight = tPNativePlayerSurfaceRenderInfo.displayHeight;
        tPSurfaceRenderInfo.videoCropInfo = a(tPNativePlayerSurfaceRenderInfo.videoCropInfo);
        return tPSurfaceRenderInfo;
    }

    public static TPVideoFrameBuffer a(TPVideoFrame tPVideoFrame) {
        int i9;
        TPVideoFrameBuffer tPVideoFrameBuffer = new TPVideoFrameBuffer();
        tPVideoFrameBuffer.data = tPVideoFrame.data;
        tPVideoFrameBuffer.lineSize = tPVideoFrame.linesize;
        tPVideoFrameBuffer.format = TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapPixelFormat.class, tPVideoFrame.format);
        int i10 = tPVideoFrame.height;
        tPVideoFrameBuffer.srcHeight = i10;
        int i11 = tPVideoFrame.width;
        tPVideoFrameBuffer.srcWidth = i11;
        tPVideoFrameBuffer.dstHeight = i10;
        tPVideoFrameBuffer.dstWidth = i11;
        int i12 = tPVideoFrame.sampleAspectRatioDen;
        if (i12 > 0 && (i9 = tPVideoFrame.sampleAspectRatioNum) > 0) {
            tPVideoFrameBuffer.dstWidth = Math.round((i9 / i12) * i11);
        }
        tPVideoFrameBuffer.rotation = tPVideoFrame.rotation;
        tPVideoFrameBuffer.ptsMs = tPVideoFrame.ptsUs / 1000;
        return tPVideoFrameBuffer;
    }

    public static TPVideoPacketBuffer a(TPVideoPacket tPVideoPacket) {
        if (tPVideoPacket == null) {
            return null;
        }
        TPVideoPacketBuffer tPVideoPacketBuffer = new TPVideoPacketBuffer();
        tPVideoPacketBuffer.mData = tPVideoPacket.mData;
        tPVideoPacketBuffer.mSize = tPVideoPacket.mSize;
        tPVideoPacketBuffer.mPtsMs = tPVideoPacket.mPtsUs / 1000;
        tPVideoPacketBuffer.mDtsMs = tPVideoPacket.mDtsUs / 1000;
        tPVideoPacketBuffer.mDolbyVisionInfo = a(tPVideoPacket.mDolbyVisionInfo);
        return tPVideoPacketBuffer;
    }

    public static TPNativeAudioAttributes a(TPAudioAttributes tPAudioAttributes) {
        if (tPAudioAttributes == null) {
            return null;
        }
        int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapTPAudioAttributeUsage.class, tPAudioAttributes.getUsage());
        int nativeIntValue2 = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapTPAudioAttributeUsage.class, tPAudioAttributes.getContentType());
        int i9 = (tPAudioAttributes.getFlags() & 1) != 0 ? 1 : 0;
        if ((tPAudioAttributes.getFlags() & 16) != 0) {
            i9 |= 16;
        }
        if ((tPAudioAttributes.getFlags() & 256) != 0) {
            i9 |= 256;
        }
        return new TPNativeAudioAttributes.Builder().setUsage(nativeIntValue).setContentType(nativeIntValue2).setFlags(i9).build();
    }

    public static TPPostProcessFrame a(TPPostProcessFrameBuffer tPPostProcessFrameBuffer) {
        Class cls;
        if (tPPostProcessFrameBuffer == null) {
            return null;
        }
        TPPostProcessFrame tPPostProcessFrame = new TPPostProcessFrame();
        int nativeIntValue = TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapMediaType.class, tPPostProcessFrameBuffer.mediaType);
        tPPostProcessFrame.mediaType = nativeIntValue;
        if (nativeIntValue != 0) {
            cls = nativeIntValue == 1 ? TPNativeKeyMap.MapAudioSampleFormat.class : TPNativeKeyMap.MapAudioSampleFormat.class;
            tPPostProcessFrame.data = tPPostProcessFrameBuffer.data;
            tPPostProcessFrame.linesize = tPPostProcessFrameBuffer.size;
            tPPostProcessFrame.sampleRate = tPPostProcessFrameBuffer.sampleRate;
            tPPostProcessFrame.channelLayout = tPPostProcessFrameBuffer.channelLayout;
            tPPostProcessFrame.ptsUs = tPPostProcessFrameBuffer.ptsMs * 1000;
            tPPostProcessFrame.nbSamples = tPPostProcessFrameBuffer.nbSamples;
            tPPostProcessFrame.channels = tPPostProcessFrameBuffer.channels;
            tPPostProcessFrame.width = tPPostProcessFrameBuffer.width;
            tPPostProcessFrame.height = tPPostProcessFrameBuffer.height;
            tPPostProcessFrame.sampleAspectRatioNum = tPPostProcessFrameBuffer.sampleAspectRatioNum;
            tPPostProcessFrame.sampleAspectRatioDen = tPPostProcessFrameBuffer.sampleAspectRatioDen;
            tPPostProcessFrame.rotation = tPPostProcessFrameBuffer.rotation;
            tPPostProcessFrame.perfData = tPPostProcessFrameBuffer.perfData;
            return tPPostProcessFrame;
        }
        cls = TPNativeKeyMap.MapPixelFormat.class;
        tPPostProcessFrame.format = TPNativeKeyMapUtil.toNativeIntValue(cls, tPPostProcessFrameBuffer.format);
        tPPostProcessFrame.data = tPPostProcessFrameBuffer.data;
        tPPostProcessFrame.linesize = tPPostProcessFrameBuffer.size;
        tPPostProcessFrame.sampleRate = tPPostProcessFrameBuffer.sampleRate;
        tPPostProcessFrame.channelLayout = tPPostProcessFrameBuffer.channelLayout;
        tPPostProcessFrame.ptsUs = tPPostProcessFrameBuffer.ptsMs * 1000;
        tPPostProcessFrame.nbSamples = tPPostProcessFrameBuffer.nbSamples;
        tPPostProcessFrame.channels = tPPostProcessFrameBuffer.channels;
        tPPostProcessFrame.width = tPPostProcessFrameBuffer.width;
        tPPostProcessFrame.height = tPPostProcessFrameBuffer.height;
        tPPostProcessFrame.sampleAspectRatioNum = tPPostProcessFrameBuffer.sampleAspectRatioNum;
        tPPostProcessFrame.sampleAspectRatioDen = tPPostProcessFrameBuffer.sampleAspectRatioDen;
        tPPostProcessFrame.rotation = tPPostProcessFrameBuffer.rotation;
        tPPostProcessFrame.perfData = tPPostProcessFrameBuffer.perfData;
        return tPPostProcessFrame;
    }

    public static TPNativeJitterBufferConfig a(TPJitterBufferConfig tPJitterBufferConfig) {
        if (tPJitterBufferConfig == null) {
            return null;
        }
        return new TPNativeJitterBufferConfig.Builder().setMinDecreaseDurationMs(tPJitterBufferConfig.getMinDecreaseDurationMs()).setMaxIncreaseDurationMs(tPJitterBufferConfig.getMaxIncreaseDurationMs()).setPerIncreaseDurationMs(tPJitterBufferConfig.getPerIncreaseDurationMs()).setPerDecreaseDurationMs(tPJitterBufferConfig.getPerDecreaseDurationMs()).setAdjustIntervalThresholdMs(tPJitterBufferConfig.getAdjustIntervalThresholdMs()).setFrozenThresholdMs(tPJitterBufferConfig.getFrozenThresholdMs()).build();
    }

    public static TPNativeRemoteSdpInfo a(TPRemoteSdpInfo tPRemoteSdpInfo) {
        if (tPRemoteSdpInfo == null) {
            return null;
        }
        TPNativeRemoteSdpInfo tPNativeRemoteSdpInfo = new TPNativeRemoteSdpInfo();
        tPNativeRemoteSdpInfo.isSuccess = tPRemoteSdpInfo.isSuccess;
        tPNativeRemoteSdpInfo.remoteSdp = tPRemoteSdpInfo.remoteSdp;
        return tPNativeRemoteSdpInfo;
    }

    public static TPNativeSubtitleRenderParams a(TPSubtitleRenderModel tPSubtitleRenderModel) {
        if (tPSubtitleRenderModel == null) {
            return null;
        }
        TPNativeSubtitleRenderParams tPNativeSubtitleRenderParams = new TPNativeSubtitleRenderParams();
        tPNativeSubtitleRenderParams.canvasWidth = tPSubtitleRenderModel.canvasWidth;
        tPNativeSubtitleRenderParams.canvasHeight = tPSubtitleRenderModel.canvasHeight;
        tPNativeSubtitleRenderParams.paramFlags = a(tPSubtitleRenderModel.paramFlags);
        tPNativeSubtitleRenderParams.paramPriorityFlags = a(tPSubtitleRenderModel.paramPriorityFlags);
        tPNativeSubtitleRenderParams.familyName = tPSubtitleRenderModel.familyName;
        tPNativeSubtitleRenderParams.fontSize = tPSubtitleRenderModel.fontSize;
        tPNativeSubtitleRenderParams.fontColor = tPSubtitleRenderModel.fontColor;
        tPNativeSubtitleRenderParams.fontStyleFlags = b(tPSubtitleRenderModel.fontStyleFlags);
        tPNativeSubtitleRenderParams.outlineWidth = tPSubtitleRenderModel.outlineWidth;
        tPNativeSubtitleRenderParams.outlineColor = tPSubtitleRenderModel.outlineColor;
        tPNativeSubtitleRenderParams.lineSpace = tPSubtitleRenderModel.lineSpace;
        tPNativeSubtitleRenderParams.startMargin = tPSubtitleRenderModel.startMargin;
        tPNativeSubtitleRenderParams.endMargin = tPSubtitleRenderModel.endMargin;
        tPNativeSubtitleRenderParams.verticalMargin = tPSubtitleRenderModel.verticalMargin;
        tPNativeSubtitleRenderParams.fontScale = tPSubtitleRenderModel.fontScale;
        return tPNativeSubtitleRenderParams;
    }

    private static int b(long j10) {
        int i9 = 0;
        for (Map.Entry<Number, Number> entry : TPNativeKeyMapUtil.getEntrySetOfToNativeMap(TPNativeKeyMap.MapSubtitleFontStyle.class)) {
            if ((entry.getKey().intValue() & j10) > 0) {
                i9 |= entry.getValue().intValue();
            }
        }
        return i9;
    }
}
