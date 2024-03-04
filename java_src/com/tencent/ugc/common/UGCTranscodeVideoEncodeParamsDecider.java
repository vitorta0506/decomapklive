package com.tencent.ugc.common;

import android.media.MediaFormat;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoproducer.encoder.VideoEncodeParams;
import com.tencent.liteav.videoproducer.encoder.VideoEncoderDef;
import com.tencent.ugc.UGCTransitionRules;
import com.tencent.ugc.common.UGCConstants;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCTranscodeVideoEncodeParamsDecider {
    private static final String TAG = "UGCTranscodeVideoEncodeParamsDecider";
    private List<MediaFormat> mVideoMediaFormatList;
    private q mVideoResolution;
    private final q mExpectSize = new q(1080, 1920);
    private q mGenerateSize = new q();
    private UGCConstants.SourceType mSourceType = UGCConstants.SourceType.VIDEO;
    private boolean mFullIFrame = false;
    private int mVideoCompress = 4;
    private int mEncodeBitrate = 0;
    private VideoEncoderDef.EncoderProfile mEncodeProfile = VideoEncoderDef.EncoderProfile.PROFILE_HIGH;
    private Rotation mEncodeRotation = Rotation.NORMAL;

    private q adjustPictureOutSize(q qVar, q qVar2) {
        int c10;
        int i9;
        if (((float) qVar.c()) >= qVar2.c()) {
            c10 = qVar2.f31029a;
            i9 = (int) (c10 / qVar.c());
        } else {
            c10 = (int) (qVar2.f31030b * qVar.c());
            i9 = qVar2.f31030b;
        }
        q qVar3 = new q();
        qVar3.f31029a = ((c10 + 15) / 16) * 16;
        qVar3.f31030b = ((i9 + 15) / 16) * 16;
        LiteavLog.i(TAG, "origin= " + qVar + ", expectSize= " + qVar2 + ", outSize= " + qVar3);
        return qVar3;
    }

    private q adjustVideoOutSize(q qVar, q qVar2) {
        int min;
        int i9 = qVar.f31029a;
        int i10 = qVar2.f31029a;
        if ((i9 <= i10 && qVar.f31030b <= qVar2.f31030b) || (i9 <= qVar2.f31030b && qVar.f31030b <= i10)) {
            return new q(qVar);
        }
        double c10 = qVar.c();
        if (qVar.f31029a >= qVar.f31030b) {
            min = Math.min((int) (qVar2.f31029a * c10), qVar2.f31030b);
        } else {
            min = Math.min((int) (qVar2.f31030b * c10), qVar2.f31029a);
        }
        q qVar3 = new q();
        qVar3.f31029a = ((min + 15) / 16) * 16;
        qVar3.f31030b = ((((int) (min / c10)) + 15) / 16) * 16;
        LiteavLog.i(TAG, "adjustOutSize origin: " + qVar + ", expectSize: " + qVar2 + ", outSize: " + qVar3);
        return qVar3;
    }

    private int getDecidedGOP() {
        List<MediaFormat> list = this.mVideoMediaFormatList;
        if (list == null || list.size() == 0) {
            return 3;
        }
        return getNumberFromMediaFormat(this.mVideoMediaFormatList.get(0), "i-frame-interval", 3);
    }

    private q getDecidedOutputSize() {
        q qVar;
        q qVar2 = this.mVideoResolution;
        if (qVar2 != null) {
            qVar = new q(qVar2);
        } else {
            List<MediaFormat> list = this.mVideoMediaFormatList;
            if (list != null && list.size() != 0) {
                if (this.mVideoMediaFormatList.size() > 1) {
                    this.mGenerateSize = getOutputSizeForMultipleSource(this.mVideoMediaFormatList);
                } else {
                    this.mGenerateSize = getOutputSizeForSingleSource(this.mVideoMediaFormatList.get(0));
                }
            } else {
                this.mGenerateSize = this.mExpectSize;
            }
            qVar = new q(this.mGenerateSize);
        }
        Rotation rotation = this.mEncodeRotation;
        if (rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270) {
            qVar.a();
        }
        qVar.f31029a = ((qVar.f31029a + 15) / 16) * 16;
        qVar.f31030b = ((qVar.f31030b + 15) / 16) * 16;
        return qVar;
    }

    private int getDecidedVideoBitrate(q qVar) {
        if (this.mFullIFrame) {
            return (qVar.f31029a >= 1280 || qVar.f31030b >= 1280) ? 15000 : 24000;
        }
        int i9 = this.mEncodeBitrate;
        if (i9 != 0) {
            return i9;
        }
        int i10 = this.mVideoCompress;
        if (i10 == 0 || i10 == 1) {
            return 2400;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return i10 != 4 ? 5000 : 12000;
            }
            return 9600;
        }
        return 6500;
    }

    private int getDecidedVideoFPS() {
        List<MediaFormat> list = this.mVideoMediaFormatList;
        if (list != null && list.size() == 1) {
            return getNumberFromMediaFormat(this.mVideoMediaFormatList.get(0), "frame-rate", 30);
        }
        return 30;
    }

    private int getNumberFromMediaFormat(MediaFormat mediaFormat, String str, int i9) {
        if (mediaFormat.containsKey(str)) {
            try {
                return mediaFormat.getInteger(str);
            } catch (ClassCastException e10) {
                LiteavLog.w(TAG, "getNumberFromMediaFormat integer ClassCastException: ".concat(String.valueOf(e10)));
                try {
                    return (int) mediaFormat.getFloat(str);
                } catch (ClassCastException e11) {
                    LiteavLog.w(TAG, "getNumberFromMediaFormat float ClassCastException: ".concat(String.valueOf(e11)));
                    return i9;
                }
            }
        }
        return i9;
    }

    private q getOutputSizeForMultipleSource(List<MediaFormat> list) {
        boolean z10;
        Iterator<MediaFormat> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = true;
                break;
            }
            q sizeFromMediaFormat = getSizeFromMediaFormat(it.next());
            if (sizeFromMediaFormat.f31030b > sizeFromMediaFormat.f31029a) {
                z10 = false;
                break;
            }
        }
        q qVar = new q(this.mExpectSize);
        if (z10) {
            qVar.a();
        }
        return qVar;
    }

    private q getOutputSizeForSingleSource(MediaFormat mediaFormat) {
        if (mediaFormat == null) {
            return new q(0, 0);
        }
        q sizeFromMediaFormat = getSizeFromMediaFormat(mediaFormat);
        if (sizeFromMediaFormat.f31029a != 0 && sizeFromMediaFormat.f31030b != 0) {
            if (this.mSourceType == UGCConstants.SourceType.VIDEO) {
                return adjustVideoOutSize(sizeFromMediaFormat, this.mExpectSize);
            }
            return adjustPictureOutSize(sizeFromMediaFormat, this.mExpectSize);
        }
        LiteavLog.i(TAG, "calculateGenerateSize origin: ".concat(String.valueOf(sizeFromMediaFormat)));
        return sizeFromMediaFormat;
    }

    private q getSizeFromMediaFormat(MediaFormat mediaFormat) {
        int integer;
        q qVar = new q();
        qVar.f31029a = mediaFormat.getInteger("width");
        qVar.f31030b = mediaFormat.getInteger("height");
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 23) {
            try {
                integer = mediaFormat.getInteger("rotation-degrees");
            } catch (Exception e10) {
                LiteavLog.i(TAG, "get KEY_ROTATION fail, ".concat(String.valueOf(e10)));
            }
            if (integer != 90 || integer == 270) {
                qVar.a();
            }
            return qVar;
        }
        integer = 0;
        if (integer != 90) {
        }
        qVar.a();
        return qVar;
    }

    public VideoEncodeParams getDecidedEncodeParams() {
        VideoEncodeParams videoEncodeParams = new VideoEncodeParams();
        videoEncodeParams.annexb = true;
        videoEncodeParams.bitrateMode = VideoEncoderDef.BitrateMode.VBR;
        videoEncodeParams.fullIFrame = false;
        videoEncodeParams.isTranscodingMode = true;
        videoEncodeParams.encoderProfile = this.mEncodeProfile;
        q decidedOutputSize = getDecidedOutputSize();
        videoEncodeParams.width = decidedOutputSize.f31029a;
        videoEncodeParams.height = decidedOutputSize.f31030b;
        videoEncodeParams.setFullIFrame(this.mFullIFrame);
        videoEncodeParams.gop = getDecidedGOP();
        videoEncodeParams.fps = getDecidedVideoFPS();
        videoEncodeParams.bitrate = getDecidedVideoBitrate(this.mGenerateSize);
        LiteavLog.i(TAG, "getVideoEncodeParams: ".concat(String.valueOf(videoEncodeParams)));
        return videoEncodeParams;
    }

    public void setEncodeBitrate(int i9) {
        if (this.mEncodeBitrate == i9) {
            return;
        }
        LiteavLog.i(TAG, "setVideoBitrate ".concat(String.valueOf(i9)));
        this.mEncodeBitrate = i9;
    }

    public void setEncodeOutputSize(q qVar) {
        this.mVideoResolution = qVar;
    }

    public void setEncodeProfile(int i9) {
        LiteavLog.i(TAG, "setEncodeProfile ".concat(String.valueOf(i9)));
        if (i9 == 2) {
            this.mEncodeProfile = VideoEncoderDef.EncoderProfile.PROFILE_MAIN;
        } else if (i9 == 1) {
            this.mEncodeProfile = VideoEncoderDef.EncoderProfile.PROFILE_BASELINE;
        } else {
            this.mEncodeProfile = VideoEncoderDef.EncoderProfile.PROFILE_HIGH;
        }
    }

    public void setEncodeRotation(Rotation rotation) {
        if (this.mEncodeRotation == rotation) {
            return;
        }
        LiteavLog.i(TAG, "setRenderRotation ".concat(String.valueOf(rotation)));
        this.mEncodeRotation = rotation;
    }

    public void setFullIFrame(boolean z10) {
        if (z10 == this.mFullIFrame) {
            return;
        }
        LiteavLog.i(TAG, "setFullIFrame ".concat(String.valueOf(z10)));
        this.mFullIFrame = z10;
    }

    public void setInputVideoMediaFormat(List<MediaFormat> list) {
        this.mVideoMediaFormatList = list;
    }

    public void setOutputResolution(int i9) {
        if (i9 == this.mVideoCompress) {
            return;
        }
        this.mVideoCompress = i9;
        if (i9 == 0) {
            q qVar = this.mExpectSize;
            qVar.f31029a = 360;
            qVar.f31030b = 640;
        } else if (i9 == 1) {
            q qVar2 = this.mExpectSize;
            qVar2.f31029a = 480;
            qVar2.f31030b = 640;
        } else if (i9 == 2) {
            q qVar3 = this.mExpectSize;
            qVar3.f31029a = 540;
            qVar3.f31030b = VKApiCodes.CODE_CALL_REQUIRES_AUTH;
        } else if (i9 == 3) {
            q qVar4 = this.mExpectSize;
            qVar4.f31029a = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;
            qVar4.f31030b = UGCTransitionRules.DEFAULT_IMAGE_HEIGHT;
        } else if (i9 == 4) {
            q qVar5 = this.mExpectSize;
            qVar5.f31029a = 1080;
            qVar5.f31030b = 1920;
        }
        LiteavLog.i(TAG, "setVideoCompress " + i9 + ", expectSize = " + this.mExpectSize);
    }

    public void setSourceType(UGCConstants.SourceType sourceType) {
        if (this.mSourceType == sourceType) {
            return;
        }
        LiteavLog.i(TAG, "setSourceType ".concat(String.valueOf(sourceType)));
        this.mSourceType = sourceType;
    }
}
