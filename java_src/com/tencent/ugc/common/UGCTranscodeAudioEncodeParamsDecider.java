package com.tencent.ugc.common;

import android.media.MediaFormat;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.utils.c;
import com.tencent.ugc.AudioEncodeParams;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCTranscodeAudioEncodeParamsDecider {
    private static final int DEFAULT_BITRATE = 98304;
    private static final int DEFAULT_BIT_PER_CHANNEL = 16;
    private static final int DEFAULT_CHANNEL_COUNT = 1;
    private static final int DEFAULT_SAMPLE_RATE = 48000;
    private static final String TAG = "UGCTranscodeAudioEncodeParamsDecider";
    private List<MediaFormat> mAudioMediaFormatList;
    private MediaFormat mBGMMediaFormat;
    private int mEncodeBitrate = 0;

    private int getDecidedBitRate() {
        int i9 = this.mEncodeBitrate;
        if (i9 != 0) {
            return i9;
        }
        if (this.mBGMMediaFormat == null) {
            int maxAudioBitRate = getMaxAudioBitRate(this.mAudioMediaFormatList);
            return maxAudioBitRate != -1 ? maxAudioBitRate : DEFAULT_BITRATE;
        } else if (c.a(this.mAudioMediaFormatList)) {
            return getIntValueFromFormat(this.mBGMMediaFormat, "bitrate", DEFAULT_BITRATE);
        } else {
            ArrayList arrayList = new ArrayList(this.mAudioMediaFormatList);
            arrayList.add(this.mBGMMediaFormat);
            int maxAudioBitRate2 = getMaxAudioBitRate(arrayList);
            return maxAudioBitRate2 != -1 ? maxAudioBitRate2 : DEFAULT_BITRATE;
        }
    }

    private int getDecidedChannels() {
        MediaFormat firstValidMediaFormat = !c.a(this.mAudioMediaFormatList) ? getFirstValidMediaFormat() : null;
        MediaFormat mediaFormat = this.mBGMMediaFormat;
        if (mediaFormat == null) {
            int intValueFromFormat = getIntValueFromFormat(firstValidMediaFormat, "channel-count", 1);
            if (intValueFromFormat > 2) {
                return 2;
            }
            return intValueFromFormat;
        } else if (firstValidMediaFormat == null) {
            int intValueFromFormat2 = getIntValueFromFormat(mediaFormat, "channel-count", 1);
            if (intValueFromFormat2 > 2) {
                return 2;
            }
            return intValueFromFormat2;
        } else {
            int max = Math.max(getIntValueFromFormat(firstValidMediaFormat, "channel-count", 1), getIntValueFromFormat(this.mBGMMediaFormat, "channel-count", 1));
            if (max > 2) {
                return 2;
            }
            return max;
        }
    }

    private int getDecidedSampleRate() {
        MediaFormat mediaFormat = this.mBGMMediaFormat;
        if (mediaFormat == null) {
            return getIntValueFromFormat(c.a(this.mAudioMediaFormatList) ? null : getFirstValidMediaFormat(), "sample-rate", 48000);
        }
        return getIntValueFromFormat(mediaFormat, "sample-rate", 48000);
    }

    private MediaFormat getFirstValidMediaFormat() {
        for (MediaFormat mediaFormat : this.mAudioMediaFormatList) {
            if (mediaFormat != null) {
                return mediaFormat;
            }
        }
        return null;
    }

    private int getIntValueFromFormat(MediaFormat mediaFormat, String str, int i9) {
        if (mediaFormat == null) {
            return i9;
        }
        try {
            return mediaFormat.getInteger(str);
        } catch (Exception e10) {
            LiteavLog.w(TAG, String.valueOf(e10));
            return i9;
        }
    }

    private int getMaxAudioBitRate(List<MediaFormat> list) {
        int i9 = -1;
        if (list == null) {
            return -1;
        }
        for (MediaFormat mediaFormat : list) {
            if (mediaFormat.containsKey("bitrate")) {
                i9 = Math.max(i9, mediaFormat.getInteger("bitrate"));
            }
        }
        return i9;
    }

    public AudioEncodeParams getDecidedEncodeParams() {
        AudioEncodeParams audioEncodeParams = new AudioEncodeParams();
        audioEncodeParams.setSampleRate(getDecidedSampleRate());
        audioEncodeParams.setChannels(getDecidedChannels());
        audioEncodeParams.setBitsPerChannel(16);
        audioEncodeParams.setBitrate(getDecidedBitRate());
        return audioEncodeParams;
    }

    public void setBGMMediaFormat(MediaFormat mediaFormat) {
        this.mBGMMediaFormat = mediaFormat;
    }

    public void setEncodeBitrate(int i9) {
        if (this.mEncodeBitrate == i9) {
            return;
        }
        LiteavLog.i(TAG, "setAudioBitrate ".concat(String.valueOf(i9)));
        this.mEncodeBitrate = i9;
    }

    public void setInputAudioMediaFormat(List<MediaFormat> list) {
        this.mAudioMediaFormatList = list;
    }
}
