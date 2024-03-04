package com.tencent.ugc;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import com.facebook.internal.AnalyticsEvents;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.videobase.common.EncodedVideoFrame;
import com.tencent.ugc.common.MediaExtractorBuilder;
import java.nio.ByteBuffer;
/* loaded from: classes4.dex */
public class MediaExtractorWrapper {
    private static final int INIT_SAMPLE_SIZE = 1048576;
    private static final int MAX_SAMPLE_SIZE = 10485760;
    private static final String TAG = "MediaExtractorWrapper";
    private MediaExtractor mAudioExtractor;
    private MediaFormat mAudioFormat;
    private boolean mIsReachEOF = false;
    private ByteBuffer mVideoBuffer;
    private MediaExtractor mVideoExtractor;
    private MediaFormat mVideoFormat;

    private int getIntegerFormatValue(MediaFormat mediaFormat, String str) {
        if (mediaFormat == null) {
            return 0;
        }
        try {
            return mediaFormat.getInteger(str);
        } catch (Exception e10) {
            Log.e(TAG, "getFormatValue key = " + str + " Exception e = " + e10, new Object[0]);
            return 0;
        }
    }

    private long getLongFormatValue(MediaFormat mediaFormat, String str) {
        if (mediaFormat == null) {
            return 0L;
        }
        try {
            return mediaFormat.getLong(str);
        } catch (Exception e10) {
            Log.e(TAG, "getFormatValue key = " + str + " Exception e = " + e10, new Object[0]);
            return 0L;
        }
    }

    private String getStringFormatValue(MediaFormat mediaFormat, String str) {
        if (mediaFormat == null) {
            return null;
        }
        try {
            return mediaFormat.getString(str);
        } catch (Exception e10) {
            Log.e(TAG, "getFormatValue key = " + str + " Exception e = " + e10, new Object[0]);
            return null;
        }
    }

    private ByteBuffer readData(MediaExtractor mediaExtractor) {
        if (this.mVideoBuffer == null) {
            this.mVideoBuffer = ByteBuffer.allocateDirect(1048576);
        }
        int i9 = 0;
        while (i9 == 0) {
            try {
                i9 = mediaExtractor.readSampleData(this.mVideoBuffer, 0);
            } catch (IllegalArgumentException unused) {
                if (this.mVideoBuffer.capacity() > MAX_SAMPLE_SIZE) {
                    break;
                }
                this.mVideoBuffer = ByteBuffer.allocateDirect(this.mVideoBuffer.capacity() * 2);
                Log.e(TAG, "resize sample buffer size to " + this.mVideoBuffer.capacity(), new Object[0]);
            }
        }
        if (i9 == 0) {
            return null;
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i9);
        allocateDirect.put(this.mVideoBuffer);
        allocateDirect.position(0);
        this.mVideoBuffer.position(0);
        return allocateDirect;
    }

    private static MediaFormat selectFormat(MediaExtractor mediaExtractor, String str) {
        if (mediaExtractor == null) {
            return null;
        }
        for (int i9 = 0; i9 < mediaExtractor.getTrackCount(); i9++) {
            MediaFormat trackFormat = mediaExtractor.getTrackFormat(i9);
            String string = trackFormat.getString("mime");
            if (string != null && string.startsWith(str)) {
                Log.i(TAG, "selectFormat ".concat(String.valueOf(trackFormat)), new Object[0]);
                mediaExtractor.selectTrack(i9);
                return trackFormat;
            }
        }
        return null;
    }

    public int getAudioBitrate() {
        return getIntegerFormatValue(this.mAudioFormat, "bitrate");
    }

    public long getAudioDuration() {
        return getLongFormatValue(this.mAudioFormat, "durationUs");
    }

    public MediaFormat getAudioFormat() {
        return this.mAudioFormat;
    }

    public int getChannelCount() {
        return getIntegerFormatValue(this.mAudioFormat, "channel-count");
    }

    public int getHeight() {
        return getIntegerFormatValue(this.mVideoFormat, "height");
    }

    public int getSampleRate() {
        return getIntegerFormatValue(this.mAudioFormat, "sample-rate");
    }

    public int getVideoBitrate() {
        return getIntegerFormatValue(this.mVideoFormat, "bitrate");
    }

    public long getVideoDuration() {
        return getLongFormatValue(this.mVideoFormat, "durationUs");
    }

    public MediaFormat getVideoFormat() {
        return this.mVideoFormat;
    }

    public int getVideoFrameRate() {
        try {
            try {
                MediaFormat mediaFormat = this.mVideoFormat;
                if (mediaFormat == null) {
                    return 20;
                }
                return mediaFormat.getInteger("frame-rate");
            } catch (NullPointerException unused) {
                return this.mVideoFormat.getInteger("video-framerate");
            }
        } catch (NullPointerException unused2) {
            return 20;
        }
    }

    public String getVideoMimeType() {
        return getStringFormatValue(this.mVideoFormat, "mime");
    }

    public int getWidth() {
        return getIntegerFormatValue(this.mVideoFormat, "width");
    }

    public EncodedVideoFrame readVideoSampleData() {
        MediaExtractor mediaExtractor = this.mVideoExtractor;
        if (mediaExtractor == null) {
            Log.v(TAG, "readVideoSampleData mVideoExtractor is null", new Object[0]);
            return null;
        }
        long sampleTime = mediaExtractor.getSampleTime();
        if (sampleTime != -1 && !this.mIsReachEOF) {
            EncodedVideoFrame encodedVideoFrame = new EncodedVideoFrame();
            try {
                encodedVideoFrame.data = readData(this.mVideoExtractor);
                encodedVideoFrame.nalType = com.tencent.liteav.videobase.common.a.UNKNOWN;
                if ((this.mVideoExtractor.getSampleFlags() & 1) != 0) {
                    encodedVideoFrame.nalType = com.tencent.liteav.videobase.common.a.IDR;
                    encodedVideoFrame.videoFormat = this.mVideoFormat;
                }
                encodedVideoFrame.pts = sampleTime / 1000;
                encodedVideoFrame.width = getWidth();
                encodedVideoFrame.height = getHeight();
                this.mIsReachEOF = !this.mVideoExtractor.advance();
                return encodedVideoFrame;
            } catch (Exception e10) {
                Log.w(TAG, "read sample data failed.", e10);
                this.mIsReachEOF = true;
                return VideoDemuxer.END_OF_STREAM;
            }
        }
        Log.i(TAG, "readVideoSampleData end", new Object[0]);
        return VideoDemuxer.END_OF_STREAM;
    }

    public void release() {
        Log.i(TAG, "release", new Object[0]);
        MediaExtractor mediaExtractor = this.mVideoExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
            this.mVideoExtractor = null;
        }
        MediaExtractor mediaExtractor2 = this.mAudioExtractor;
        if (mediaExtractor2 != null) {
            mediaExtractor2.release();
            this.mAudioExtractor = null;
        }
    }

    public void seekVideo(long j10) {
        if (this.mVideoExtractor != null) {
            Log.i(TAG, "seekVideo time = ".concat(String.valueOf(j10)), new Object[0]);
            this.mVideoExtractor.seekTo(j10, 0);
        }
    }

    public boolean setDataSource(String str) {
        Log.i(TAG, " setDataSource path: ".concat(String.valueOf(str)), new Object[0]);
        MediaExtractor mediaExtractor = this.mVideoExtractor;
        if (mediaExtractor != null) {
            mediaExtractor.release();
        }
        MediaExtractor mediaExtractor2 = this.mAudioExtractor;
        if (mediaExtractor2 != null) {
            mediaExtractor2.release();
        }
        this.mVideoExtractor = new MediaExtractorBuilder().setPath(str).build();
        this.mAudioExtractor = new MediaExtractorBuilder().setPath(str).build();
        this.mVideoFormat = selectFormat(this.mVideoExtractor, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO);
        MediaFormat selectFormat = selectFormat(this.mAudioExtractor, "audio");
        this.mAudioFormat = selectFormat;
        return (this.mVideoFormat == null && selectFormat == null) ? false : true;
    }
}
