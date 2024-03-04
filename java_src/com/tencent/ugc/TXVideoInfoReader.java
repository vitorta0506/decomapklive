package com.tencent.ugc;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoInfoReader;
import com.tencent.ugc.common.MediaExtractorBuilder;
import com.tencent.ugc.common.MediaRetrieverBuilder;
import com.tencent.ugc.retriver.FFmpegMediaRetriever;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class TXVideoInfoReader {
    private static final int RETRY_MAX_COUNT = 3;
    private static TXVideoInfoReader sInstance;
    private Context mContext;
    private int mCount;
    private a mGenerateImageThread;
    private volatile WeakReference<OnSampleProgrocess> mListener;
    private final String TAG = "TXVideoInfoReader";
    private final AtomicInteger mRetryTimes = new AtomicInteger(0);
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());

    /* loaded from: classes4.dex */
    public interface OnSampleProgrocess {
        void sampleProcess(int i9, Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: b  reason: collision with root package name */
        private final String f34652b;

        /* renamed from: c  reason: collision with root package name */
        private volatile Bitmap f34653c;

        /* renamed from: d  reason: collision with root package name */
        private final int f34654d;

        public a(String str) {
            this.f34654d = TXVideoInfoReader.this.mListener.hashCode();
            this.f34652b = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            final OnSampleProgrocess onSampleProgrocess;
            MediaMetadataRetriever build = new MediaRetrieverBuilder().setPath(this.f34652b).build();
            long videoDurationMs = new FFmpegMediaRetriever().getVideoDurationMs() * 1000;
            long j10 = videoDurationMs / TXVideoInfoReader.this.mCount;
            LiteavLog.i("TXVideoInfoReader", "run duration = " + videoDurationMs + " count = " + TXVideoInfoReader.this.mCount);
            final int i9 = 0;
            while (true) {
                Bitmap bitmap = null;
                if (i9 >= TXVideoInfoReader.this.mCount || Thread.currentThread().isInterrupted()) {
                    break;
                }
                long j11 = i9 * j10;
                if (j11 > videoDurationMs) {
                    j11 = videoDurationMs;
                }
                final Bitmap frameAtTime = build.getFrameAtTime(j11);
                if (frameAtTime == null) {
                    LiteavLog.w("TXVideoInfoReader", "getSampleImages failed!");
                    if (i9 == 0) {
                        final String str = this.f34652b;
                        if (TXVideoInfoReader.this.mRetryTimes.get() < 3) {
                            LiteavLog.i("TXVideoInfoReader", "retry to get sample images");
                            TXVideoInfoReader.this.mMainHandler.post(new Runnable(this, str) { // from class: com.tencent.ugc.br

                                /* renamed from: a  reason: collision with root package name */
                                private final TXVideoInfoReader.a f34783a;

                                /* renamed from: b  reason: collision with root package name */
                                private final String f34784b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f34783a = this;
                                    this.f34784b = str;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    TXVideoInfoReader.a.a(this.f34783a, this.f34784b);
                                }
                            });
                        }
                    } else {
                        if (this.f34653c != null && !this.f34653c.isRecycled()) {
                            LiteavLog.i("TXVideoInfoReader", "copy last image");
                            bitmap = this.f34653c.copy(this.f34653c.getConfig(), true);
                        }
                        frameAtTime = bitmap;
                    }
                }
                this.f34653c = frameAtTime;
                TXVideoInfoReader.this.mRetryTimes.set(0);
                if (TXVideoInfoReader.this.mListener != null && TXVideoInfoReader.this.mCount > 0 && TXVideoInfoReader.this.mListener.hashCode() == this.f34654d && (onSampleProgrocess = (OnSampleProgrocess) TXVideoInfoReader.this.mListener.get()) != null) {
                    TXVideoInfoReader.this.mMainHandler.post(new Runnable(onSampleProgrocess, i9, frameAtTime) { // from class: com.tencent.ugc.bq

                        /* renamed from: a  reason: collision with root package name */
                        private final TXVideoInfoReader.OnSampleProgrocess f34780a;

                        /* renamed from: b  reason: collision with root package name */
                        private final int f34781b;

                        /* renamed from: c  reason: collision with root package name */
                        private final Bitmap f34782c;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f34780a = onSampleProgrocess;
                            this.f34781b = i9;
                            this.f34782c = frameAtTime;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f34780a.sampleProcess(this.f34781b, this.f34782c);
                        }
                    });
                }
                i9++;
            }
            this.f34653c = null;
            build.release();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void a(a aVar, String str) {
            TXVideoInfoReader tXVideoInfoReader = TXVideoInfoReader.this;
            tXVideoInfoReader.getSampleImages(tXVideoInfoReader.mCount, str, (OnSampleProgrocess) TXVideoInfoReader.this.mListener.get());
            TXVideoInfoReader.this.mRetryTimes.getAndIncrement();
        }
    }

    private TXVideoInfoReader(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private void cancelThread() {
        a aVar = this.mGenerateImageThread;
        if (aVar == null || !aVar.isAlive() || this.mGenerateImageThread.isInterrupted()) {
            return;
        }
        LiteavLog.i("TXVideoInfoReader", "cancelThread: thread cancel");
        this.mGenerateImageThread.interrupt();
        this.mGenerateImageThread = null;
    }

    private long getContentUrlFileSize(String str) {
        FileInputStream fileInputStream;
        Uri parse = Uri.parse(str);
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            Context context = this.mContext;
            if (context != null) {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(parse, "r");
                try {
                    fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                    try {
                        long available = fileInputStream.available();
                        com.tencent.liteav.base.util.f.a(openFileDescriptor);
                        com.tencent.liteav.base.util.f.a(fileInputStream);
                        return available;
                    } catch (Exception unused) {
                        parcelFileDescriptor = openFileDescriptor;
                        try {
                            LiteavLog.e("TXVideoInfoReader", "getVideoFileInfo  not found , uri = ".concat(String.valueOf(parse)));
                            com.tencent.liteav.base.util.f.a(parcelFileDescriptor);
                            com.tencent.liteav.base.util.f.a(fileInputStream);
                            return 0L;
                        } catch (Throwable th2) {
                            th = th2;
                            com.tencent.liteav.base.util.f.a(parcelFileDescriptor);
                            com.tencent.liteav.base.util.f.a(fileInputStream);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        parcelFileDescriptor = openFileDescriptor;
                        com.tencent.liteav.base.util.f.a(parcelFileDescriptor);
                        com.tencent.liteav.base.util.f.a(fileInputStream);
                        throw th;
                    }
                } catch (Exception unused2) {
                    fileInputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileInputStream = null;
                }
            } else {
                com.tencent.liteav.base.util.f.a((Closeable) null);
                com.tencent.liteav.base.util.f.a((Closeable) null);
                return 0L;
            }
        } catch (Exception unused3) {
            fileInputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileInputStream = null;
        }
    }

    @Deprecated
    public static TXVideoInfoReader getInstance() {
        if (sInstance == null) {
            sInstance = new TXVideoInfoReader();
        }
        return sInstance;
    }

    public void cancel() {
        LiteavLog.i("TXVideoInfoReader", "cancel");
        cancelThread();
        this.mMainHandler.removeCallbacksAndMessages(null);
        if (this.mListener != null) {
            this.mListener.clear();
            this.mListener = null;
        }
    }

    public Bitmap getSampleImage(long j10, String str) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.w("TXVideoInfoReader", "videoPath is null");
            return null;
        } else if (!new File(str).exists()) {
            LiteavLog.w("TXVideoInfoReader", "videoPath is not exist");
            return null;
        } else {
            FFmpegMediaRetriever fFmpegMediaRetriever = new FFmpegMediaRetriever();
            fFmpegMediaRetriever.setDataSource(str);
            long videoDurationMs = fFmpegMediaRetriever.getVideoDurationMs() * 1000;
            long j11 = j10 * 1000;
            if (j11 > videoDurationMs) {
                j11 = videoDurationMs;
            }
            if (videoDurationMs <= 0) {
                LiteavLog.w("TXVideoInfoReader", "video duration is 0");
                return null;
            }
            Bitmap frameAtTime = new MediaRetrieverBuilder().setPath(str).build().getFrameAtTime(j11);
            if (frameAtTime == null) {
                LiteavLog.e("TXVideoInfoReader", "getSampleImages failed!");
                return frameAtTime;
            }
            LiteavLog.i("TXVideoInfoReader", "getSampleImages bmp= " + frameAtTime + ",time= " + j11 + ",duration= " + videoDurationMs);
            return frameAtTime;
        }
    }

    public void getSampleImages(int i9, String str, OnSampleProgrocess onSampleProgrocess) {
        this.mCount = i9;
        this.mListener = new WeakReference<>(onSampleProgrocess);
        if (TextUtils.isEmpty(str)) {
            LiteavLog.w("TXVideoInfoReader", "getSampleImages: videoPath is empty.");
        } else if (!com.tencent.liteav.base.util.f.a(str)) {
            LiteavLog.w("TXVideoInfoReader", "getSampleImages: file is not exist.");
        } else {
            cancelThread();
            a aVar = new a(str);
            this.mGenerateImageThread = aVar;
            aVar.start();
            LiteavLog.i("TXVideoInfoReader", "getSampleImages: thread start");
        }
    }

    public TXVideoEditConstants.TXVideoInfo getVideoFileInfo(String str) {
        LiteavLog.i("TXVideoInfoReader", "videoSource:".concat(String.valueOf(str)));
        if (LiteavSystemInfo.getSystemOSVersionInt() < 18) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e("TXVideoInfoReader", "videoSource is empty!!");
            return null;
        }
        if (!MediaExtractorBuilder.isContentUri(str)) {
            File file = new File(str);
            if (!file.exists() || !file.canRead()) {
                LiteavLog.e("TXVideoInfoReader", "getVideoFileInfo  file exist = " + file.exists() + " can read = " + file.canRead());
                return null;
            }
        }
        TXVideoEditConstants.TXVideoInfo tXVideoInfo = new TXVideoEditConstants.TXVideoInfo();
        FFmpegMediaRetriever fFmpegMediaRetriever = new FFmpegMediaRetriever();
        fFmpegMediaRetriever.setDataSource(str);
        tXVideoInfo.duration = fFmpegMediaRetriever.getVideoDurationMs();
        LiteavLog.i("TXVideoInfoReader", "getVideoFileInfo: duration = " + tXVideoInfo.duration);
        tXVideoInfo.coverImage = new MediaRetrieverBuilder().setPath(str).build().getFrameAtTime();
        tXVideoInfo.fps = fFmpegMediaRetriever.getFPS();
        tXVideoInfo.bitrate = (int) (fFmpegMediaRetriever.getVideoBitrate() / 1024);
        tXVideoInfo.audioSampleRate = fFmpegMediaRetriever.getSampleRate();
        int rotation = fFmpegMediaRetriever.getRotation();
        LiteavLog.i("TXVideoInfoReader", "rotation: ".concat(String.valueOf(rotation)));
        if (rotation != 90 && rotation != 270) {
            tXVideoInfo.width = fFmpegMediaRetriever.getVideoWidth();
            tXVideoInfo.height = fFmpegMediaRetriever.getVideoHeight();
        } else {
            tXVideoInfo.width = fFmpegMediaRetriever.getVideoHeight();
            tXVideoInfo.height = fFmpegMediaRetriever.getVideoWidth();
        }
        if (MediaExtractorBuilder.isContentUri(str)) {
            tXVideoInfo.fileSize = getContentUrlFileSize(str);
        } else {
            tXVideoInfo.fileSize = new File(str).length();
        }
        return tXVideoInfo;
    }

    public static TXVideoInfoReader getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new TXVideoInfoReader(context);
        }
        return sInstance;
    }

    private TXVideoInfoReader() {
    }
}
