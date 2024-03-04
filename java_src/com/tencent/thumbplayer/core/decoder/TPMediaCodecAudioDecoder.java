package com.tencent.thumbplayer.core.decoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.tencent.thumbplayer.core.common.TPCodecUtils;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.g.b;
import java.nio.ByteBuffer;
import java.util.ArrayList;
@RequiresApi(api = 16)
/* loaded from: classes4.dex */
public class TPMediaCodecAudioDecoder extends TPBaseMediaCodecDecoder {
    private static final String TAG = "TPMediaCodecAudioDecoder";
    private int mAudioFormat;
    private int mChannelCount;
    private byte[] mCsd0Data;
    private boolean mEnableAudioPassThrough;
    private boolean mIsAdts;
    private ArrayList<String> mMimeCandidates;
    private int mSampleRate;

    public TPMediaCodecAudioDecoder(int i9) {
        super(i9);
        this.mMimeCandidates = new ArrayList<>();
        this.mSampleRate = 0;
        this.mChannelCount = 0;
        this.mAudioFormat = 0;
        this.mCsd0Data = null;
        this.mIsAdts = false;
        this.mEnableAudioPassThrough = false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void configCodec(@NonNull b bVar, @NonNull String str) {
        TPNativeLog.printLog(2, TAG, "configCodec: ");
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat(str, this.mSampleRate, this.mChannelCount);
        byte[] bArr = this.mCsd0Data;
        if (bArr != null) {
            createAudioFormat.setByteBuffer("csd-0", ByteBuffer.wrap(bArr));
        }
        if (this.mIsAdts) {
            TPNativeLog.printLog(2, TAG, "configCodec: set is adts");
            createAudioFormat.setInteger("is-adts", 1);
        }
        bVar.a(createAudioFormat, null, this.mMediaCrypto, 0);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    String getCodecName(@NonNull String str, boolean z10) {
        return TPCodecUtils.getDecoderName(str, z10);
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
        TPNativeLog.printLog(2, TAG, "initDecoder, mimeType:" + str + " sampleRate:" + i9 + " channelCount:" + i10 + " drmType:" + i11 + " audioFormat:" + i12);
        this.mSampleRate = i9;
        this.mChannelCount = i10;
        this.mDrmType = i11;
        this.mAudioFormat = i12;
        this.mMimeCandidates.clear();
        this.mMimeCandidates.add(str);
        return true;
    }

    @Override // com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean initDecoder(String str, int i9, int i10, int i11, Surface surface, int i12, int i13, int i14) {
        return false;
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processMediaCodecException(Exception exc) {
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputBuffer(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo, @NonNull TPFrameInfo tPFrameInfo) {
        tPFrameInfo.sampleRate = this.mSampleRate;
        tPFrameInfo.channelCount = this.mChannelCount;
        tPFrameInfo.format = this.mAudioFormat;
        ByteBuffer a10 = bVar.a(i9);
        byte[] bArr = null;
        if (a10 != null) {
            int i10 = bufferInfo.size;
            byte[] bArr2 = new byte[i10];
            a10.get(bArr2, bufferInfo.offset, i10);
            bArr = bArr2;
        }
        tPFrameInfo.data = bArr;
        if (bufferInfo.flags == 4 && bufferInfo.size <= 0) {
            TPNativeLog.printLog(2, TAG, "processOutputBuffer: bufferInfo.flags is BUFFER_FLAG_END_OF_STREAM, return EOS!");
            tPFrameInfo.errCode = 2;
        }
        bVar.a(i9, false);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputConfigData(@NonNull b bVar, int i9, @NonNull MediaCodec.BufferInfo bufferInfo, @NonNull TPFrameInfo tPFrameInfo) {
        bVar.a(i9, false);
        tPFrameInfo.errCode = 1;
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder
    void processOutputFormatChanged(@NonNull MediaFormat mediaFormat) {
        int i9;
        int i10;
        try {
            if (mediaFormat.containsKey("sample-rate")) {
                this.mSampleRate = mediaFormat.getInteger("sample-rate");
            }
            if (mediaFormat.containsKey("channel-count")) {
                this.mChannelCount = mediaFormat.getInteger("channel-count");
            }
            if (Build.VERSION.SDK_INT < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                i10 = 2;
            } else {
                i10 = mediaFormat.getInteger("pcm-encoding");
                try {
                    TPNativeLog.printLog(2, TAG, "processOutputFormatChanged: MediaFormat.KEY_PCM_ENCODING: ".concat(String.valueOf(i10)));
                } catch (Exception e10) {
                    i9 = i10;
                    e = e10;
                    TPNativeLog.printLog(4, TAG, "processOutputFormatChanged got one exception: " + getStackTrace(e));
                    i10 = i9;
                    TPNativeLog.printLog(2, TAG, "processOutputFormatChanged, mEnableAudioPassThrough:" + this.mEnableAudioPassThrough + ", mSampleRate: " + this.mSampleRate + ", mChannelCount: " + this.mChannelCount + " mAudioFormat: " + this.mAudioFormat + " pcmFormat:" + i10);
                }
            }
        } catch (Exception e11) {
            e = e11;
            i9 = 2;
        }
        TPNativeLog.printLog(2, TAG, "processOutputFormatChanged, mEnableAudioPassThrough:" + this.mEnableAudioPassThrough + ", mSampleRate: " + this.mSampleRate + ", mChannelCount: " + this.mChannelCount + " mAudioFormat: " + this.mAudioFormat + " pcmFormat:" + i10);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public int setOperateRate(float f10) {
        return super.setOperateRate(f10);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBool(int i9, boolean z10) {
        if (i9 == 2) {
            this.mIsAdts = z10;
            return true;
        } else if (i9 == 3) {
            this.mEnableAudioPassThrough = z10;
            String logTag = getLogTag();
            TPNativeLog.printLog(2, logTag, "setParamBool mEnableAudioPassThrough:" + this.mEnableAudioPassThrough);
            return true;
        } else {
            return super.setParamBool(i9, z10);
        }
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamBytes(int i9, byte[] bArr) {
        if (i9 == 200) {
            this.mCsd0Data = bArr;
        }
        return super.setParamBytes(i9, bArr);
    }

    @Override // com.tencent.thumbplayer.core.decoder.TPBaseMediaCodecDecoder, com.tencent.thumbplayer.core.decoder.ITPMediaCodecDecoder
    public boolean setParamObject(int i9, Object obj) {
        return super.setParamObject(i9, obj);
    }
}
