package com.tencent.liteav.videoproducer.encoder;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.CommonUtil;
import com.tencent.liteav.videobase.common.CodecType;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import java.lang.reflect.Field;
import org.json.JSONArray;
import org.json.JSONException;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public final class VideoEncodeParams implements Cloneable {
    public boolean annexb;
    public long baseFrameIndex;
    public long baseGopIndex;
    public int bitrate;
    public VideoEncoderDef.BitrateMode bitrateMode;
    public CodecType codecType;
    public boolean enableBFrame;
    public VideoEncoderDef.EncoderProfile encoderProfile;
    public int fps;
    public boolean fullIFrame;
    public int gop;
    public int height;
    public boolean isTranscodingMode;
    public JSONArray mediaCodecDeviceRelatedParams;
    public VideoEncoderDef.ReferenceStrategy referenceStrategy;
    public int width;

    @CalledByNative
    public VideoEncodeParams() {
        this.width = 0;
        this.height = 0;
        this.fps = 20;
        this.gop = 3;
        this.bitrate = 0;
        this.annexb = true;
        this.encoderProfile = null;
        this.bitrateMode = VideoEncoderDef.BitrateMode.CBR;
        this.baseFrameIndex = 0L;
        this.baseGopIndex = 0L;
        this.fullIFrame = false;
        this.enableBFrame = false;
        this.referenceStrategy = VideoEncoderDef.ReferenceStrategy.FIX_GOP;
        this.codecType = CodecType.H264;
        this.isTranscodingMode = false;
        this.mediaCodecDeviceRelatedParams = null;
    }

    private int checkFieldDiffCounts(Object obj, Object obj2) {
        Field[] declaredFields;
        int i9 = 0;
        for (Field field : VideoEncodeParams.class.getDeclaredFields()) {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            try {
                if (!CommonUtil.equals(field.get(obj), field.get(obj2))) {
                    i9++;
                }
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            }
        }
        return i9;
    }

    @CalledByNative
    public static VideoEncoderDef.BitrateMode createEncoderBitrateMode(int i9) {
        return VideoEncoderDef.BitrateMode.a(i9);
    }

    @CalledByNative
    public static VideoEncoderDef.EncoderProfile createEncoderProfileType(int i9) {
        return VideoEncoderDef.EncoderProfile.a(i9);
    }

    @CalledByNative
    public static CodecType createEncoderVideoCodec(int i9) {
        return CodecType.a(i9);
    }

    @CalledByNative
    public static VideoEncoderDef.ReferenceStrategy createReferenceStrategy(int i9) {
        return VideoEncoderDef.ReferenceStrategy.a(i9);
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof VideoEncodeParams) && checkFieldDiffCounts(this, obj) == 0;
    }

    @CalledByNative
    public final long getBaseFrameIndex() {
        return this.baseFrameIndex;
    }

    @CalledByNative
    public final long getBaseGopIndex() {
        return this.baseGopIndex;
    }

    @CalledByNative
    public final int getBitrate() {
        return this.bitrate;
    }

    @CalledByNative
    public final int getBitrateMode() {
        return this.bitrateMode.mValue;
    }

    @CalledByNative
    public final int getCodecType() {
        return this.codecType.mValue;
    }

    @CalledByNative
    public final int getEncoderProfile() {
        return this.encoderProfile.mValue;
    }

    @CalledByNative
    public final int getFps() {
        return this.fps;
    }

    @CalledByNative
    public final int getGop() {
        return this.gop;
    }

    @CalledByNative
    public final int getHeight() {
        return this.height;
    }

    public final JSONArray getMediaCodecDeviceRelatedParams() {
        return this.mediaCodecDeviceRelatedParams;
    }

    public final VideoEncoderDef.ReferenceStrategy getReferenceStrategy() {
        return this.referenceStrategy;
    }

    @CalledByNative
    public final int getWidth() {
        return this.width;
    }

    @CalledByNative
    public final boolean isAnnexb() {
        return this.annexb;
    }

    @CalledByNative
    public final boolean isEnablesBframe() {
        return this.enableBFrame;
    }

    @CalledByNative
    public final boolean isEnablesRps() {
        return this.referenceStrategy == VideoEncoderDef.ReferenceStrategy.RPS;
    }

    @CalledByNative
    public final boolean isEnablesSvc() {
        return this.referenceStrategy == VideoEncoderDef.ReferenceStrategy.SVC;
    }

    @CalledByNative
    public final boolean isFullIFrame() {
        return this.fullIFrame;
    }

    @CalledByNative
    public final boolean isTranscodingMode() {
        return this.isTranscodingMode;
    }

    @CalledByNative
    public final void setAnnexb(boolean z10) {
        this.annexb = z10;
    }

    @CalledByNative
    public final void setBFrameEnabled(boolean z10) {
        this.enableBFrame = z10;
    }

    @CalledByNative
    public final void setBaseFrameIndex(long j10) {
        this.baseFrameIndex = j10;
    }

    @CalledByNative
    public final void setBaseGopIndex(long j10) {
        this.baseGopIndex = j10;
    }

    @CalledByNative
    public final void setBitrate(int i9) {
        this.bitrate = i9;
    }

    @CalledByNative
    public final void setBitrateMode(VideoEncoderDef.BitrateMode bitrateMode) {
        this.bitrateMode = bitrateMode;
    }

    @CalledByNative
    public final void setCodecType(CodecType codecType) {
        this.codecType = codecType;
    }

    @CalledByNative
    public final void setEncoderProfile(VideoEncoderDef.EncoderProfile encoderProfile) {
        this.encoderProfile = encoderProfile;
    }

    @CalledByNative
    public final void setFps(int i9) {
        this.fps = i9;
    }

    @CalledByNative
    public final void setFullIFrame(boolean z10) {
        this.fullIFrame = z10;
    }

    @CalledByNative
    public final void setGop(int i9) {
        this.gop = i9;
    }

    @CalledByNative
    public final void setHeight(int i9) {
        this.height = i9;
    }

    @CalledByNative
    public final void setMediaCodecDeviceRelatedParams(JSONArray jSONArray) {
        this.mediaCodecDeviceRelatedParams = jSONArray;
    }

    @CalledByNative
    public final void setReferenceStrategy(VideoEncoderDef.ReferenceStrategy referenceStrategy) {
        this.referenceStrategy = referenceStrategy;
    }

    @CalledByNative
    public final void setTranscodingModeEnabled(boolean z10) {
        this.isTranscodingMode = z10;
    }

    @CalledByNative
    public final void setWidth(int i9) {
        this.width = i9;
    }

    @NonNull
    public final String toString() {
        return "width=" + this.width + ", height=" + this.height + ", fps=" + this.fps + ", gop=" + this.gop + ", bitrate=" + this.bitrate + ", annexb=" + this.annexb + ", encoderProfile=" + this.encoderProfile + ", bitrateMode=" + this.bitrateMode + ", baseFrameIndex=" + this.baseFrameIndex + ", baseGopIndex=" + this.baseGopIndex + ", fullIFrame=" + this.fullIFrame + ", enableBFrame=" + this.enableBFrame + ", referenceStrategy=" + this.referenceStrategy + ", codecType=" + this.codecType + ", isTransCodingMode=" + this.isTranscodingMode + ", mediaCodecDeviceRelatedParams=" + this.mediaCodecDeviceRelatedParams;
    }

    public VideoEncodeParams(VideoEncodeParams videoEncodeParams) {
        this.width = 0;
        this.height = 0;
        this.fps = 20;
        this.gop = 3;
        this.bitrate = 0;
        this.annexb = true;
        this.encoderProfile = null;
        this.bitrateMode = VideoEncoderDef.BitrateMode.CBR;
        this.baseFrameIndex = 0L;
        this.baseGopIndex = 0L;
        this.fullIFrame = false;
        this.enableBFrame = false;
        this.referenceStrategy = VideoEncoderDef.ReferenceStrategy.FIX_GOP;
        this.codecType = CodecType.H264;
        this.isTranscodingMode = false;
        this.mediaCodecDeviceRelatedParams = null;
        if (videoEncodeParams == null) {
            return;
        }
        this.width = videoEncodeParams.width;
        this.height = videoEncodeParams.height;
        this.fps = videoEncodeParams.fps;
        this.gop = videoEncodeParams.gop;
        this.bitrate = videoEncodeParams.bitrate;
        this.annexb = videoEncodeParams.annexb;
        this.encoderProfile = videoEncodeParams.encoderProfile;
        this.bitrateMode = videoEncodeParams.bitrateMode;
        this.baseFrameIndex = videoEncodeParams.baseFrameIndex;
        this.baseGopIndex = videoEncodeParams.baseGopIndex;
        this.fullIFrame = videoEncodeParams.fullIFrame;
        this.enableBFrame = videoEncodeParams.enableBFrame;
        this.codecType = videoEncodeParams.codecType;
        this.referenceStrategy = videoEncodeParams.referenceStrategy;
        this.isTranscodingMode = videoEncodeParams.isTranscodingMode;
        if (videoEncodeParams.mediaCodecDeviceRelatedParams != null) {
            try {
                this.mediaCodecDeviceRelatedParams = new JSONArray(videoEncodeParams.mediaCodecDeviceRelatedParams.toString());
            } catch (JSONException unused) {
            }
        }
    }
}
