package com.tencent.liteav.audio;

import android.media.AudioRecord;
import android.os.Process;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import java.nio.ByteBuffer;
@JNINamespace("liteav::audio")
/* loaded from: classes4.dex */
class LiteavAudioRecord {
    private static final String TAG = "LiteavAudioRecord";
    private AudioRecord mAudioRecord;
    private int mBufferSize = 0;

    private static String audioSourceToString(int i9) {
        switch (i9) {
            case 0:
                return "DEFAULT";
            case 1:
                return "MIC";
            case 2:
                return "VOICE_UPLINK";
            case 3:
                return "VOICE_DOWNLINK";
            case 4:
                return "VOICE_CALL";
            case 5:
                return "CAMCORDER";
            case 6:
                return "VOICE_RECOGNITION";
            case 7:
                return "VOICE_COMMUNICATION";
            case 8:
            default:
                return "INVALID";
            case 9:
                return "UNPROCESSED";
            case 10:
                return "VOICE_PERFORMANCE";
        }
    }

    private static AudioRecord createStartedAudioRecord(int i9, int i10, int i11, int i12) {
        AudioRecord audioRecord;
        try {
            audioRecord = new AudioRecord(i9, i10, i11, 2, i12);
        } catch (Throwable unused) {
            audioRecord = null;
        }
        try {
            if (audioRecord.getState() == 1) {
                audioRecord.startRecording();
                return audioRecord;
            }
            throw new RuntimeException("AudioRecord is not initialized.");
        } catch (Throwable unused2) {
            Log.w(TAG, "create AudioRecord failed. source: %s, sampleRate: %d, channelConfig: %d, bufferSize: %d", audioSourceToString(i9), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
            destroyAudioRecord(audioRecord);
            return null;
        }
    }

    private static void destroyAudioRecord(AudioRecord audioRecord) {
        if (audioRecord == null) {
            return;
        }
        try {
            if (audioRecord.getRecordingState() == 3) {
                audioRecord.stop();
            }
            audioRecord.release();
        } catch (Exception e10) {
            Log.e(TAG, "stop AudioRecord failed.", e10);
        }
    }

    @CalledByNative
    public int getAudioSessionId() {
        AudioRecord audioRecord = this.mAudioRecord;
        if (audioRecord == null) {
            return -1;
        }
        return audioRecord.getAudioSessionId();
    }

    @CalledByNative
    public int getBufferSize() {
        return this.mBufferSize;
    }

    @CalledByNative
    public int read(ByteBuffer byteBuffer, int i9) {
        if (this.mAudioRecord == null) {
            return -1;
        }
        byteBuffer.position(0);
        int read = this.mAudioRecord.read(byteBuffer, i9);
        if (read <= 0) {
            Log.e(TAG, "read failed, %d", Integer.valueOf(read));
            return -1;
        }
        return read;
    }

    @CalledByNative
    public int startRecording(int i9, int i10, int i11, int i12) {
        int[] iArr = {i9, 1, 5, 0};
        int i13 = i11 == 1 ? 16 : 12;
        int minBufferSize = AudioRecord.getMinBufferSize(i10, i13, 2);
        if (minBufferSize <= 0) {
            Log.e(TAG, "AudioRecord.getMinBufferSize return error: ".concat(String.valueOf(minBufferSize)), new Object[0]);
            return -2;
        }
        for (int i14 = 0; i14 < 4 && this.mAudioRecord == null; i14++) {
            int i15 = iArr[i14];
            for (int i16 = 1; i16 <= 2 && this.mAudioRecord == null; i16++) {
                int i17 = minBufferSize * i16;
                this.mBufferSize = i17;
                if (i17 >= i12 * 4 || i16 >= 2) {
                    this.mAudioRecord = createStartedAudioRecord(i15, i10, i13, i17);
                }
            }
        }
        if (this.mAudioRecord == null) {
            return -1;
        }
        Process.setThreadPriority(-19);
        return 0;
    }

    @CalledByNative
    public void stopRecording() {
        destroyAudioRecord(this.mAudioRecord);
        this.mAudioRecord = null;
    }
}
