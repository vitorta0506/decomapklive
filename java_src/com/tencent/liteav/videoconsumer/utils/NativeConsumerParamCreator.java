package com.tencent.liteav.videoconsumer.utils;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.common.SnapshotSourceType;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoconsumer.decoder.VideoDecodeController;
import com.tencent.liteav.videoconsumer.decoder.VideoDecoderDef;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class NativeConsumerParamCreator {
    @CalledByNative
    public static VideoDecoderDef.ConsumerScene createConsumerScene(int i9) {
        return VideoDecoderDef.ConsumerScene.a(i9);
    }

    @CalledByNative
    private static VideoDecodeController.DecodeStrategy createDecodeStrategy(int i9) {
        return VideoDecodeController.DecodeStrategy.a(i9);
    }

    @CalledByNative
    public static GLConstants.PixelBufferType createPixelBufferType(int i9) {
        return GLConstants.PixelBufferType.a(i9);
    }

    @CalledByNative
    public static GLConstants.PixelFormatType createPixelFormatType(int i9) {
        return GLConstants.PixelFormatType.a(i9);
    }

    @CalledByNative
    private static GLConstants.GLScaleType createScaleType(int i9) {
        return GLConstants.GLScaleType.a(i9);
    }

    @CalledByNative
    public static SnapshotSourceType createSnapshotSourceType(int i9) {
        return SnapshotSourceType.a(i9);
    }

    @CalledByNative
    public static Rotation fromInt(int i9) {
        Rotation[] values;
        for (Rotation rotation : Rotation.values()) {
            if (rotation.mValue == i9) {
                return rotation;
            }
        }
        return Rotation.NORMAL;
    }
}
