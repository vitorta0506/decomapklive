package com.guochao.faceshow.utils;

import android.graphics.Bitmap;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.TXVideoEditer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class TCVideoEditerWrapper {
    private static TCVideoEditerWrapper INSTANCE = null;
    private static final String TAG = "TCVideoEditerWrapper";
    public static final int mThumbnailCount = 10;
    private long mCutterDuration;
    private long mCutterEndTime;
    private long mCutterStartTime;
    private TXVideoEditer mTXVideoEditer;
    private TXVideoEditConstants.TXVideoInfo mTXVideoInfo;
    private TXVideoEditer.TXVideoPreviewListener mPreviewListener = new TXVideoEditer.TXVideoPreviewListener() { // from class: com.guochao.faceshow.utils.TCVideoEditerWrapper.1
        @Override // com.tencent.ugc.TXVideoEditer.TXVideoPreviewListener
        public void onPreviewFinished() {
            TXCLog.i(TCVideoEditerWrapper.TAG, "mPreviewListener, onPreviewFinished");
            synchronized (TCVideoEditerWrapper.this.mPreviewWrapperList) {
                for (TXVideoPreviewListenerWrapper tXVideoPreviewListenerWrapper : TCVideoEditerWrapper.this.mPreviewWrapperList) {
                    tXVideoPreviewListenerWrapper.onPreviewFinishedWrapper();
                }
            }
        }

        @Override // com.tencent.ugc.TXVideoEditer.TXVideoPreviewListener
        public void onPreviewProgress(int i9) {
            int i10 = i9 / 1000;
            synchronized (TCVideoEditerWrapper.this.mPreviewWrapperList) {
                for (TXVideoPreviewListenerWrapper tXVideoPreviewListenerWrapper : TCVideoEditerWrapper.this.mPreviewWrapperList) {
                    tXVideoPreviewListenerWrapper.onPreviewProgressWrapper(i10);
                }
            }
        }
    };
    private List<ThumbnailBitmapInfo> mThumbnailList = new ArrayList();
    private List<TXVideoPreviewListenerWrapper> mPreviewWrapperList = new ArrayList();
    private boolean mIsReverse = false;

    /* loaded from: classes4.dex */
    public interface TXVideoPreviewListenerWrapper {
        void onPreviewFinishedWrapper();

        void onPreviewProgressWrapper(int i9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ThumbnailBitmapInfo {
        public Bitmap bitmap;
        public long ptsMs;

        public ThumbnailBitmapInfo(long j10, Bitmap bitmap) {
            this.ptsMs = j10;
            this.bitmap = bitmap;
        }
    }

    private TCVideoEditerWrapper() {
    }

    public static TCVideoEditerWrapper getInstance() {
        if (INSTANCE == null) {
            synchronized (TCVideoEditerWrapper.class) {
                if (INSTANCE == null) {
                    INSTANCE = new TCVideoEditerWrapper();
                }
            }
        }
        return INSTANCE;
    }

    public void addTXVideoPreviewListenerWrapper(TXVideoPreviewListenerWrapper tXVideoPreviewListenerWrapper) {
        synchronized (this.mPreviewWrapperList) {
            if (this.mPreviewWrapperList.contains(tXVideoPreviewListenerWrapper)) {
                return;
            }
            this.mPreviewWrapperList.add(tXVideoPreviewListenerWrapper);
        }
    }

    public void addThumbnailBitmap(long j10, Bitmap bitmap) {
        this.mThumbnailList.add(new ThumbnailBitmapInfo(j10, bitmap));
    }

    public void cleaThumbnails() {
        Bitmap bitmap;
        for (ThumbnailBitmapInfo thumbnailBitmapInfo : this.mThumbnailList) {
            if (thumbnailBitmapInfo != null && (bitmap = thumbnailBitmapInfo.bitmap) != null && !bitmap.isRecycled()) {
                thumbnailBitmapInfo.bitmap.recycle();
                thumbnailBitmapInfo.bitmap = null;
            }
        }
        this.mThumbnailList.clear();
    }

    public void clear() {
        Bitmap bitmap;
        TXVideoEditer tXVideoEditer = this.mTXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.setTXVideoPreviewListener(null);
            this.mTXVideoEditer = null;
        }
        this.mCutterDuration = 0L;
        this.mCutterStartTime = 0L;
        this.mCutterEndTime = 0L;
        this.mThumbnailList.clear();
        synchronized (this.mPreviewWrapperList) {
            this.mPreviewWrapperList.clear();
        }
        this.mIsReverse = false;
        TXVideoEditConstants.TXVideoInfo tXVideoInfo = this.mTXVideoInfo;
        if (tXVideoInfo == null || (bitmap = tXVideoInfo.coverImage) == null || bitmap.isRecycled()) {
            return;
        }
        this.mTXVideoInfo.coverImage.recycle();
        this.mTXVideoInfo.coverImage = null;
    }

    public long geCutterDuration() {
        return this.mCutterDuration;
    }

    public List<Bitmap> getAllThumbnails() {
        TXVideoEditConstants.TXVideoInfo tXVideoInfo = this.mTXVideoInfo;
        return getThumbnailList(0L, tXVideoInfo != null ? tXVideoInfo.duration : 0L);
    }

    public long getCutterEndTime() {
        return this.mCutterEndTime;
    }

    public long getCutterStartTime() {
        return this.mCutterStartTime;
    }

    public TXVideoEditer getEditer() {
        return this.mTXVideoEditer;
    }

    public TXVideoEditConstants.TXVideoInfo getTXVideoInfo() {
        return this.mTXVideoInfo;
    }

    public List<Bitmap> getThumbnailList(long j10, long j11) {
        ArrayList arrayList = new ArrayList();
        for (ThumbnailBitmapInfo thumbnailBitmapInfo : this.mThumbnailList) {
            long j12 = thumbnailBitmapInfo.ptsMs;
            if (j12 >= j10 && j12 <= j11) {
                arrayList.add(thumbnailBitmapInfo.bitmap);
            }
        }
        return arrayList;
    }

    public boolean isReverse() {
        return this.mIsReverse;
    }

    public void removeTXVideoPreviewListenerWrapper(TXVideoPreviewListenerWrapper tXVideoPreviewListenerWrapper) {
        synchronized (this.mPreviewWrapperList) {
            this.mPreviewWrapperList.remove(tXVideoPreviewListenerWrapper);
        }
    }

    public void setCutterDuration(long j10) {
        this.mCutterDuration = j10;
    }

    public void setCutterStartTime(long j10, long j11) {
        this.mCutterStartTime = j10;
        this.mCutterEndTime = j11;
        this.mCutterDuration = j11 - j10;
    }

    public void setEditer(TXVideoEditer tXVideoEditer) {
        this.mTXVideoEditer = tXVideoEditer;
        if (tXVideoEditer != null) {
            tXVideoEditer.setTXVideoPreviewListener(this.mPreviewListener);
        }
    }

    public void setReverse(boolean z10) {
        this.mIsReverse = z10;
    }

    public void setTXVideoInfo(TXVideoEditConstants.TXVideoInfo tXVideoInfo) {
        this.mTXVideoInfo = tXVideoInfo;
    }
}
