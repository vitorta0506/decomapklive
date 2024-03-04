package com.tencent.ugc;

import android.os.Looper;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.frame.e;
import com.tencent.ugc.UGCFrameQueue;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCMultiFilePixelFrameProvider implements UGCFrameQueue.UGCFrameQueueListener, UGCPixelFrameProvider {
    private static final String TAG = "UGCMultiFileVideoFrameProvider";
    private int mClipIndexOfMaxFps;
    private final List<Clip> mClipList;
    private long mCurrentTimestamp = 0;
    private long mFrameDuration = 0;
    private final UGCFrameQueue<List<PixelFrame>> mPixelFrameListQueue;
    private final PixelFrame[] mPixelFrameStash;
    private final UGCPixelFrameProvider[] mProviderList;
    private final CustomHandler mSingleFileProviderHandler;
    private final CustomHandler mWorkHandler;

    public UGCMultiFilePixelFrameProvider(List<Clip> list, CustomHandler customHandler) {
        UGCFrameQueue<List<PixelFrame>> uGCFrameQueue = new UGCFrameQueue<>();
        this.mPixelFrameListQueue = uGCFrameQueue;
        this.mProviderList = new UGCPixelFrameProvider[list.size()];
        this.mPixelFrameStash = new PixelFrame[list.size()];
        this.mClipList = list;
        this.mSingleFileProviderHandler = customHandler;
        this.mWorkHandler = new CustomHandler(Looper.myLooper());
        uGCFrameQueue.setUGCFrameQueueListener(this);
    }

    private void clearFrameCache() {
        int i9 = 0;
        while (true) {
            PixelFrame[] pixelFrameArr = this.mPixelFrameStash;
            if (i9 >= pixelFrameArr.length) {
                return;
            }
            if (pixelFrameArr[i9] != null) {
                pixelFrameArr[i9].release();
                this.mPixelFrameStash[i9] = null;
            }
            i9++;
        }
    }

    private void clearFrameQueue() {
        for (List<PixelFrame> list : this.mPixelFrameListQueue.dequeueAll()) {
            PixelFrame.releasePixelFrames(list);
        }
    }

    private PixelFrame copyPixelFrame(PixelFrame pixelFrame) {
        if (pixelFrame instanceof e.b) {
            e.b bVar = (e.b) pixelFrame;
            return bVar.f31838a.a(bVar.getGLContext());
        }
        return null;
    }

    private void getCurrentTimestampWithFpsInfo() {
        float f10 = -1.0f;
        for (int i9 = 0; i9 < this.mClipList.size(); i9++) {
            if (f10 < this.mClipList.get(i9).fps && this.mProviderList[i9] != null) {
                f10 = this.mClipList.get(i9).fps;
                this.mClipIndexOfMaxFps = i9;
            }
        }
        long j10 = f10 > 0.0f ? 1000.0f / f10 : 40.0f;
        this.mFrameDuration = j10;
        this.mCurrentTimestamp += j10;
    }

    private PixelFrame getFrameFromProvider(int i9) {
        UGCPixelFrameProvider uGCPixelFrameProvider = this.mProviderList[i9];
        if (uGCPixelFrameProvider == null) {
            return null;
        }
        List<PixelFrame> dequeue = uGCPixelFrameProvider.getFrameQueue().dequeue();
        if (dequeue == UGCPixelFrameProvider.END_OF_STREAM) {
            uGCPixelFrameProvider.stop();
            uGCPixelFrameProvider.uninitialize();
            this.mProviderList[i9] = null;
            return null;
        }
        return dequeue.get(0);
    }

    private boolean isAllProviderEndOfStream() {
        int i9 = 0;
        while (true) {
            UGCPixelFrameProvider[] uGCPixelFrameProviderArr = this.mProviderList;
            if (i9 >= uGCPixelFrameProviderArr.length) {
                return true;
            }
            if (uGCPixelFrameProviderArr[i9] != null) {
                return false;
            }
            i9++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$seekTo$2(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider, long j10, boolean z10) {
        UGCPixelFrameProvider[] uGCPixelFrameProviderArr;
        for (UGCPixelFrameProvider uGCPixelFrameProvider : uGCMultiFilePixelFrameProvider.mProviderList) {
            if (uGCPixelFrameProvider != null) {
                uGCPixelFrameProvider.seekTo(j10, z10);
            }
        }
        uGCMultiFilePixelFrameProvider.mCurrentTimestamp = j10;
        uGCMultiFilePixelFrameProvider.clearFrameCache();
        uGCMultiFilePixelFrameProvider.clearFrameQueue();
        uGCMultiFilePixelFrameProvider.readFrameToQueue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$start$0(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        for (int i9 = 0; i9 < uGCMultiFilePixelFrameProvider.mClipList.size(); i9++) {
            UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider = new UGCSingleFilePixelFrameProvider(uGCMultiFilePixelFrameProvider.mClipList.get(i9), uGCMultiFilePixelFrameProvider.mSingleFileProviderHandler);
            uGCSingleFilePixelFrameProvider.initialize();
            uGCSingleFilePixelFrameProvider.start();
            uGCMultiFilePixelFrameProvider.mProviderList[i9] = uGCSingleFilePixelFrameProvider;
        }
        uGCMultiFilePixelFrameProvider.readFrameToQueue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$stop$1(UGCMultiFilePixelFrameProvider uGCMultiFilePixelFrameProvider) {
        int i9 = 0;
        while (true) {
            UGCPixelFrameProvider[] uGCPixelFrameProviderArr = uGCMultiFilePixelFrameProvider.mProviderList;
            if (i9 < uGCPixelFrameProviderArr.length) {
                if (uGCPixelFrameProviderArr[i9] != null) {
                    uGCPixelFrameProviderArr[i9].stop();
                    uGCMultiFilePixelFrameProvider.mProviderList[i9].uninitialize();
                }
                uGCMultiFilePixelFrameProvider.mProviderList[i9] = null;
                i9++;
            } else {
                uGCMultiFilePixelFrameProvider.clearFrameCache();
                uGCMultiFilePixelFrameProvider.clearFrameQueue();
                return;
            }
        }
    }

    private void putOneFrameToList(PixelFrame pixelFrame, List<PixelFrame> list) {
        if (pixelFrame == null) {
            return;
        }
        if (pixelFrame.getTimestamp() == this.mCurrentTimestamp) {
            list.add(pixelFrame);
            pixelFrame.retain();
            return;
        }
        PixelFrame copyPixelFrame = copyPixelFrame(pixelFrame);
        if (copyPixelFrame != null) {
            copyPixelFrame.setTimestamp(this.mCurrentTimestamp);
            pixelFrame = copyPixelFrame;
        } else {
            pixelFrame.retain();
        }
        list.add(pixelFrame);
    }

    private void readFrameToCache() {
        for (int i9 = 0; i9 < this.mProviderList.length; i9++) {
            PixelFrame pixelFrame = this.mPixelFrameStash[i9];
            if (pixelFrame == null || this.mCurrentTimestamp - pixelFrame.getTimestamp() > this.mFrameDuration / 2) {
                PixelFrame frameFromProvider = getFrameFromProvider(i9);
                if (frameFromProvider != null) {
                    this.mPixelFrameStash[i9] = frameFromProvider;
                    if (pixelFrame != null) {
                        pixelFrame.release();
                    }
                }
                if (this.mClipIndexOfMaxFps == i9) {
                    this.mCurrentTimestamp = this.mPixelFrameStash[i9].getTimestamp();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readFrameToQueue() {
        if (this.mPixelFrameListQueue.size() > 1) {
            return;
        }
        getCurrentTimestampWithFpsInfo();
        readFrameToCache();
        LinkedList linkedList = new LinkedList();
        for (PixelFrame pixelFrame : this.mPixelFrameStash) {
            putOneFrameToList(pixelFrame, linkedList);
        }
        if (!linkedList.isEmpty() && !isAllProviderEndOfStream()) {
            this.mPixelFrameListQueue.queue(linkedList);
        } else {
            this.mPixelFrameListQueue.queue(UGCPixelFrameProvider.END_OF_STREAM);
        }
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public UGCFrameQueue<List<PixelFrame>> getFrameQueue() {
        return this.mPixelFrameListQueue;
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void initialize() {
        LiteavLog.i(TAG, "initialize");
    }

    @Override // com.tencent.ugc.UGCFrameQueue.UGCFrameQueueListener
    public void onFrameDequeued() {
        this.mWorkHandler.a(eh.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void seekTo(long j10, boolean z10) {
        this.mWorkHandler.a(eg.a(this, j10, z10), 0);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void setPlayEndPts(long j10) {
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void setReverse(boolean z10) {
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void start() {
        this.mWorkHandler.a(ee.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void stop() {
        this.mWorkHandler.a(ef.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCPixelFrameProvider
    public void uninitialize() {
        stop();
    }
}
