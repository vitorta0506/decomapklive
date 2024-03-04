package com.guochao.faceshow.utils;

import android.media.MediaRecorder;
import android.os.Handler;
import android.util.Log;
import com.guochao.faceshow.aaspring.utils.FilePathProvider;
import com.guochao.faceshow.views.g;
import java.io.File;
/* loaded from: classes4.dex */
public class RecorderUtil {
    private static final String TAG = "RecorderUtil";
    private boolean isRecording;
    g mCountDownTimerUtil;
    private int mNow;
    OnRecordListener mOnRecordListener;
    private long startTime;
    private long timeInterval;
    private String mFileName = null;
    private MediaRecorder mRecorder = null;
    private int mMaxDuration = 60000;
    Handler mHandler = new Handler();
    int MAX_VU_SIZE = 100;
    Runnable mRunnable = new Runnable() { // from class: com.guochao.faceshow.utils.RecorderUtil.1
        @Override // java.lang.Runnable
        public void run() {
            RecorderUtil recorderUtil = RecorderUtil.this;
            RecorderUtil recorderUtil2 = RecorderUtil.this;
            recorderUtil2.mOnRecordListener.onVoiceChanged((recorderUtil.MAX_VU_SIZE * recorderUtil.mRecorder.getMaxAmplitude()) / 32768, recorderUtil2.MAX_VU_SIZE);
            RecorderUtil recorderUtil3 = RecorderUtil.this;
            recorderUtil3.mHandler.postDelayed(recorderUtil3.mRunnable, 30L);
        }
    };
    private boolean mCalledStopListener = false;
    Runnable mTimeUsingRunnable = new Runnable() { // from class: com.guochao.faceshow.utils.RecorderUtil.2
        @Override // java.lang.Runnable
        public void run() {
            RecorderUtil.access$112(RecorderUtil.this, 1000);
            RecorderUtil recorderUtil = RecorderUtil.this;
            OnRecordListener onRecordListener = recorderUtil.mOnRecordListener;
            if (onRecordListener != null) {
                onRecordListener.onTimeUsing(recorderUtil.mNow);
            }
            if (RecorderUtil.this.mNow >= RecorderUtil.this.mMaxDuration) {
                RecorderUtil.this.stopRecording();
                return;
            }
            RecorderUtil recorderUtil2 = RecorderUtil.this;
            recorderUtil2.mHandler.postDelayed(recorderUtil2.mTimeUsingRunnable, 1000L);
        }
    };

    /* loaded from: classes4.dex */
    public interface OnRecordListener {
        void onAutoStopRecord(String str, long j10);

        void onTimeUsing(int i9);

        void onVoiceChanged(int i9, int i10);
    }

    static /* synthetic */ int access$112(RecorderUtil recorderUtil, int i9) {
        int i10 = recorderUtil.mNow + i9;
        recorderUtil.mNow = i10;
        return i10;
    }

    public String getFilePath() {
        return this.mFileName;
    }

    public int getMaxDuration() {
        return this.mMaxDuration;
    }

    public long getTimeInterval() {
        return this.timeInterval / 1000;
    }

    public void setMaxDuration(int i9) {
        this.mMaxDuration = i9;
    }

    public void setOnRecordListener(OnRecordListener onRecordListener) {
        this.mOnRecordListener = onRecordListener;
    }

    public void startRecording() {
        z8.c.o().E(true);
        g gVar = this.mCountDownTimerUtil;
        if (gVar != null) {
            gVar.cancel();
        }
        this.mFileName = FilePathProvider.getIMResourcePath("record") + File.separator + System.currentTimeMillis() + ".m4a";
        if (this.isRecording) {
            this.mRecorder.release();
            this.mRecorder = null;
        }
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.mRecorder = mediaRecorder;
        mediaRecorder.setAudioSource(1);
        this.mRecorder.setOutputFormat(2);
        this.mRecorder.setOutputFile(this.mFileName);
        this.mRecorder.setAudioEncoder(3);
        this.mRecorder.setMaxDuration(this.mMaxDuration);
        this.startTime = System.currentTimeMillis();
        this.mNow = 0;
        this.mRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.guochao.faceshow.utils.RecorderUtil.3
            @Override // android.media.MediaRecorder.OnInfoListener
            public void onInfo(MediaRecorder mediaRecorder2, int i9, int i10) {
            }
        });
        try {
            this.mRecorder.prepare();
            this.mRecorder.start();
            this.isRecording = true;
            this.mCalledStopListener = false;
            g gVar2 = new g(this.mMaxDuration, 1000L) { // from class: com.guochao.faceshow.utils.RecorderUtil.4
                @Override // com.guochao.faceshow.views.g
                public void onFinish() {
                    RecorderUtil.this.mHandler.post(new Runnable() { // from class: com.guochao.faceshow.utils.RecorderUtil.4.2
                        @Override // java.lang.Runnable
                        public void run() {
                            RecorderUtil.this.stopRecording();
                        }
                    });
                }

                @Override // com.guochao.faceshow.views.g
                public void onTick(final long j10) {
                    RecorderUtil.this.mHandler.post(new Runnable() { // from class: com.guochao.faceshow.utils.RecorderUtil.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RecorderUtil recorderUtil = RecorderUtil.this;
                            OnRecordListener onRecordListener = recorderUtil.mOnRecordListener;
                            if (onRecordListener != null) {
                                onRecordListener.onTimeUsing((int) (recorderUtil.mMaxDuration - j10));
                            }
                        }
                    });
                }
            };
            this.mCountDownTimerUtil = gVar2;
            gVar2.start();
            this.mHandler.postDelayed(this.mRunnable, 30L);
        } catch (Exception unused) {
            Log.e(TAG, "prepare() failed");
        }
    }

    public void stopRecording() {
        z8.c.o().E(false);
        this.timeInterval = System.currentTimeMillis() - this.startTime;
        try {
            g gVar = this.mCountDownTimerUtil;
            if (gVar != null) {
                gVar.cancel();
            }
            this.mHandler.removeCallbacks(this.mRunnable);
            this.mHandler.removeCallbacks(this.mTimeUsingRunnable);
            if (this.timeInterval > 1000) {
                try {
                    this.mRecorder.stop();
                } catch (Exception unused) {
                }
            }
            OnRecordListener onRecordListener = this.mOnRecordListener;
            if (onRecordListener != null && !this.mCalledStopListener) {
                onRecordListener.onAutoStopRecord(this.mFileName, this.timeInterval);
                this.mCalledStopListener = true;
            }
            this.mRecorder.release();
            this.mRecorder = null;
            this.isRecording = false;
        } catch (Exception unused2) {
            Log.e(TAG, "release() failed");
        }
    }
}
