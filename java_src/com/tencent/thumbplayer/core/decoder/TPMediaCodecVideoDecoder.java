package com.tencent.thumbplayer.core.decoder;

import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.tencent.thumbplayer.core.common.TPCodecUtils;
import com.tencent.thumbplayer.core.common.TPDecoderType;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.common.TPPixelFormat;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.g.b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
@RequiresApi(api = 16)
/* loaded from: classes4.dex */
public class TPMediaCodecVideoDecoder extends TPBaseMediaCodecDecoder {
    private static final String DEVICE_NAME_VIVO_X5L = "vivo X5L";
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int PIXEL_STRIDE_CONTINUOUS = 1;
    private static final String TAG = "TPMediaCodecVideoDecode";
    private static final int YUV420P_PLANAR_COUNT = 3;
    private int mCropBottom;
    private int mCropLeft;
    private int mCropRight;
    private int mCropTop;
    private byte[] mCsd0Data;
    private byte[] mCsd1Data;
    private byte[] mCsd2Data;
    private int mDolbyVisionLevel;
    private int mDolbyVisionProfile;
    private boolean mEnableMediaCodecOutputData;
    private ArrayList<String> mMimeCandidates;
    private int mRotation;
    private int mVideoHeight;
    private int mVideoWidth;

    public TPMediaCodecVideoDecoder(int i9) {
        super(i9);
        this.mEnableMediaCodecOutputData = false;
        this.mMimeCandidates = new ArrayList<>();
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mCropLeft = 0;
        this.mCropRight = 0;
        this.mCropTop = 0;
        this.mCropBottom = 0;
        this.mRotation = 0;
        this.mDolbyVisionProfile = 0;
        this.mDolbyVisionLevel = 0;
        this.mCsd0Data = null;
        this.mCsd1Data = null;
        this.mCsd2Data = null;
    }

    @RequiresApi(api = 21)
    private void copyVideoDataFromImage(@NonNull Image image, @NonNull TPFrameInfo tPFrameInfo) {
        if (image.getFormat() != 35) {
            tPFrameInfo.format = -1;
            tPFrameInfo.errCode = 3;
            TPNativeLog.printLog(4, TAG, "copyVideoDataFromImage: image format not support!");
            return;
        }
        tPFrameInfo.format = 0;
        int width = image.getWidth();
        int height = image.getHeight();
        Image.Plane[] planes = image.getPlanes();
        int[] iArr = tPFrameInfo.lineSize;
        if (iArr == null || iArr.length < 3) {
            tPFrameInfo.lineSize = new int[3];
        }
        byte[][] bArr = tPFrameInfo.videoData;
        if (bArr == null || bArr.length < 3) {
            tPFrameInfo.videoData = new byte[3];
        }
        int i9 = 0;
        while (i9 < 3) {
            int i10 = i9 == 0 ? 0 : 1;
            copyVideoDataFromPlane(planes[i9], width >> i10, height >> i10, i9, tPFrameInfo);
            i9++;
        }
    }

    @RequiresApi(api = 21)
    private void copyVideoDataFromPlane(@NonNull Image.Plane plane, int i9, int i10, @IntRange(from = 0) int i11, @NonNull TPFrameInfo tPFrameInfo) {
        ByteBuffer buffer = plane.getBuffer();
        tPFrameInfo.lineSize[i11] = i9;
        int i12 = i9 * i10;
        byte[][] bArr = tPFrameInfo.videoData;
        if (bArr[i11] == null || bArr[i11].length < i12) {
            bArr[i11] = new byte[i12];
        }
        if (plane.getPixelStride() == 1) {
            buffer.get(tPFrameInfo.videoData[i11], 0, i12);
            return;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            tPFrameInfo.videoData[i11][i13] = buffer.get(plane.getPixelStride() * i13);
        }
    }

    private void processOutputData(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo, @NonNull TPFrameInfo tPFrameInfo) {
        if (bufferInfo.flags == 4 && bufferInfo.size <= 0) {
            TPNativeLog.printLog(2, TAG, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!");
            tPFrameInfo.format = -1;
            tPFrameInfo.errCode = 2;
            bVar.a(i9, false);
            return;
        }
        Image b10 = bVar.b(i9);
        if (b10 != null) {
            copyVideoDataFromImage(b10, tPFrameInfo);
            bVar.a(i9, false);
            return;
        }
        tPFrameInfo.format = -1;
        tPFrameInfo.errCode = 3;
        bVar.a(i9, false);
        TPNativeLog.printLog(4, TAG, "processOutputBuffer: getOutputImage return null");
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void configCodec(@NonNull b bVar, @NonNull String str) {
        Surface surface;
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat(str, this.mVideoWidth, this.mVideoHeight);
        if (Build.VERSION.SDK_INT > 22) {
            createVideoFormat.setInteger("rotation-degrees", this.mRotation);
        }
        if (TPSystemInfo.getDeviceName().equalsIgnoreCase(DEVICE_NAME_VIVO_X5L)) {
            createVideoFormat.setInteger("max-input-size", this.mVideoWidth * this.mVideoHeight);
        }
        byte[] bArr = this.mCsd0Data;
        if (bArr != null) {
            createVideoFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
        }
        byte[] bArr2 = this.mCsd1Data;
        if (bArr2 != null) {
            createVideoFormat.setByteBuffer("csd-1", ByteBuffer.wrap(bArr2));
        }
        byte[] bArr3 = this.mCsd2Data;
        if (bArr3 != null) {
            createVideoFormat.setByteBuffer("csd-2", ByteBuffer.wrap(bArr3));
        }
        if (TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION.equals(str)) {
            createVideoFormat.setInteger("profile", TPCodecUtils.convertDolbyVisionToOmxProfile(this.mDolbyVisionProfile));
            createVideoFormat.setInteger("level", TPCodecUtils.convertDolbyVisionToOmxLevel(this.mDolbyVisionLevel));
        }
        if (this.mEnableMediaCodecOutputData) {
            createVideoFormat.setInteger("color-format", 2135033992);
            surface = null;
        } else {
            surface = this.mSurface;
        }
        bVar.a(createVideoFormat, surface, this.mMediaCrypto, 0);
        bVar.d(1);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    String getCodecName(@NonNull String str, boolean z10) {
        String dolbyVisionDecoderName;
        int i9 = this.mDolbyVisionProfile;
        return (i9 <= 0 || (dolbyVisionDecoderName = TPCodecUtils.getDolbyVisionDecoderName(str, i9, this.mDolbyVisionLevel, z10)) == null) ? TPCodecUtils.getDecoderName(str, z10) : dolbyVisionDecoderName;
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    String getLogTag() {
        return TAG;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    public ArrayList<String> getMimeCandidates() {
        return this.mMimeCandidates;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean initDecoder(String str, int i9, int i10, int i11, int i12) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean initDecoder(String str, int i9, int i10, int i11, Surface surface, int i12, int i13, int i14) {
        int convertDolbyVisionToOmxProfile;
        TPNativeLog.printLog(2, TAG, "initDecoder, mimeType:" + str + " width:" + i9 + " height:" + i10 + " rotation:" + i11 + " dvProfile:" + i13 + " dvLevel:" + i14);
        this.mVideoWidth = i9;
        this.mVideoHeight = i10;
        this.mRotation = i11;
        this.mSurface = surface;
        this.mDrmType = i12;
        this.mDolbyVisionProfile = i13;
        this.mDolbyVisionLevel = i14;
        this.mMimeCandidates.clear();
        this.mMimeCandidates.add(str);
        if (!TPDecoderType.TP_CODEC_MIMETYPE_DOLBYVISION.equals(str) || (convertDolbyVisionToOmxProfile = TPCodecUtils.convertDolbyVisionToOmxProfile(this.mDolbyVisionProfile)) < 4 || convertDolbyVisionToOmxProfile > 256) {
            return true;
        }
        this.mMimeCandidates.add("video/hevc");
        return true;
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processMediaCodecException(Exception exc) {
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputBuffer(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo, @NonNull TPFrameInfo tPFrameInfo) {
        tPFrameInfo.width = this.mVideoWidth;
        tPFrameInfo.height = this.mVideoHeight;
        tPFrameInfo.cropLeft = this.mCropLeft;
        tPFrameInfo.cropRight = this.mCropRight;
        tPFrameInfo.cropTop = this.mCropTop;
        tPFrameInfo.cropBottom = this.mCropBottom;
        tPFrameInfo.format = TPPixelFormat.TP_PIX_FMT_MEDIACODEC;
        if (this.mEnableMediaCodecOutputData) {
            processOutputData(bVar, i9, bufferInfo, tPFrameInfo);
        }
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputConfigData(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo, @NonNull TPFrameInfo tPFrameInfo) {
        tPFrameInfo.errCode = 0;
        processOutputBuffer(bVar, i9, bufferInfo, tPFrameInfo);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputFormatChanged(@NonNull MediaFormat mediaFormat) {
        boolean z10 = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
        this.mVideoWidth = mediaFormat.getInteger("width");
        this.mVideoHeight = mediaFormat.getInteger("height");
        if (z10) {
            this.mCropLeft = mediaFormat.getInteger(KEY_CROP_LEFT);
            this.mCropRight = mediaFormat.getInteger(KEY_CROP_RIGHT);
            this.mCropTop = mediaFormat.getInteger(KEY_CROP_TOP);
            this.mCropBottom = mediaFormat.getInteger(KEY_CROP_BOTTOM);
        }
        TPNativeLog.printLog(2, TAG, "processOutputFormatChanged: mVideoWidth: " + this.mVideoWidth + ", mVideoHeight: " + this.mVideoHeight + ", mCropLeft: " + this.mCropLeft + ", mCropRight: " + this.mCropRight + ", mCropTop: " + this.mCropTop + ", mCropBottom: " + this.mCropBottom);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOperateRate(float f10) {
        return super.setOperateRate(f10);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOutputSurface(Surface surface) {
        if (this.mEnableMediaCodecOutputData) {
            return 3;
        }
        return super.setOutputSurface(surface);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBool(int i9, boolean z10) {
        if (i9 == 5) {
            if (this.mStarted) {
                String logTag = getLogTag();
                TPNativeLog.printLog(3, logTag, "BOOL_ENABLE_MEDIACODEC_OUTPUT_DATA failed. need set before start, mStart=" + this.mStarted + ", api level is " + Build.VERSION.SDK_INT + ", support api level = 21");
            } else {
                this.mEnableMediaCodecOutputData = z10;
            }
        }
        return super.setParamBool(i9, z10);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBytes(int i9, byte[] bArr) {
        if (i9 == 200) {
            this.mCsd0Data = bArr;
        } else if (i9 == 201) {
            this.mCsd1Data = bArr;
        } else if (i9 == 202) {
            this.mCsd2Data = bArr;
        }
        return super.setParamBytes(i9, bArr);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamObject(int i9, Object obj) {
        return super.setParamObject(i9, obj);
    }
}
