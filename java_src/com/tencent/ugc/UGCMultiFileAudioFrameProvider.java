package com.tencent.ugc;

import android.os.Looper;
import com.tencent.liteav.base.util.CustomHandler;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.ugc.UGCFrameQueue;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes4.dex */
public class UGCMultiFileAudioFrameProvider implements UGCAudioFrameProvider, UGCFrameQueue.UGCFrameQueueListener {
    private static final String TAG = "UGCMultiFileAudioFrameProvider";
    private final UGCFrameQueue<List<AudioFrame>> mAudioFrameListQueue;
    private final List<Clip> mClipList;
    private final UGCAudioFrameProvider[] mProviderList;
    private final CustomHandler mSingleFileProviderHandler;
    private final CustomHandler mWorkHandler;

    public UGCMultiFileAudioFrameProvider(List<Clip> list, CustomHandler customHandler) {
        UGCFrameQueue<List<AudioFrame>> uGCFrameQueue = new UGCFrameQueue<>();
        this.mAudioFrameListQueue = uGCFrameQueue;
        this.mProviderList = new UGCAudioFrameProvider[list.size()];
        this.mClipList = list;
        this.mSingleFileProviderHandler = customHandler;
        this.mWorkHandler = new CustomHandler(Looper.myLooper());
        uGCFrameQueue.setUGCFrameQueueListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$seekTo$2(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider, long j10) {
        UGCAudioFrameProvider[] uGCAudioFrameProviderArr;
        for (UGCAudioFrameProvider uGCAudioFrameProvider : uGCMultiFileAudioFrameProvider.mProviderList) {
            if (uGCAudioFrameProvider != null) {
                uGCAudioFrameProvider.seekTo(j10);
            }
        }
        uGCMultiFileAudioFrameProvider.mAudioFrameListQueue.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$start$0(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        for (int i9 = 0; i9 < uGCMultiFileAudioFrameProvider.mClipList.size(); i9++) {
            UGCSingleFileAudioFrameProvider uGCSingleFileAudioFrameProvider = new UGCSingleFileAudioFrameProvider(uGCMultiFileAudioFrameProvider.mClipList.get(i9), uGCMultiFileAudioFrameProvider.mSingleFileProviderHandler);
            uGCSingleFileAudioFrameProvider.initialize();
            uGCSingleFileAudioFrameProvider.start();
            uGCMultiFileAudioFrameProvider.mProviderList[i9] = uGCSingleFileAudioFrameProvider;
        }
        uGCMultiFileAudioFrameProvider.readFrameToQueue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$stop$1(UGCMultiFileAudioFrameProvider uGCMultiFileAudioFrameProvider) {
        int i9 = 0;
        while (true) {
            UGCAudioFrameProvider[] uGCAudioFrameProviderArr = uGCMultiFileAudioFrameProvider.mProviderList;
            if (i9 < uGCAudioFrameProviderArr.length) {
                if (uGCAudioFrameProviderArr[i9] != null) {
                    uGCAudioFrameProviderArr[i9].stop();
                    uGCMultiFileAudioFrameProvider.mProviderList[i9].uninitialize();
                }
                uGCMultiFileAudioFrameProvider.mProviderList[i9] = null;
                i9++;
            } else {
                uGCMultiFileAudioFrameProvider.mAudioFrameListQueue.clear();
                return;
            }
        }
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public UGCFrameQueue<List<AudioFrame>> getFrameQueue() {
        return this.mAudioFrameListQueue;
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void initialize() {
        LiteavLog.i(TAG, "initialize");
    }

    @Override // com.tencent.ugc.UGCFrameQueue.UGCFrameQueueListener
    public void onFrameDequeued() {
        this.mWorkHandler.a(ed.a(this), 0);
    }

    public void readFrameToQueue() {
        LinkedList linkedList = new LinkedList();
        boolean z10 = true;
        int i9 = 0;
        while (true) {
            UGCAudioFrameProvider[] uGCAudioFrameProviderArr = this.mProviderList;
            if (i9 >= uGCAudioFrameProviderArr.length) {
                break;
            }
            UGCAudioFrameProvider uGCAudioFrameProvider = uGCAudioFrameProviderArr[i9];
            if (uGCAudioFrameProvider == null) {
                linkedList.add(new AudioFrame());
            } else {
                List<AudioFrame> dequeue = uGCAudioFrameProvider.getFrameQueue().dequeue();
                if (dequeue == UGCAudioFrameProvider.END_OF_STREAM) {
                    uGCAudioFrameProvider.stop();
                    uGCAudioFrameProvider.uninitialize();
                    this.mProviderList[i9] = null;
                    linkedList.add(new AudioFrame());
                } else {
                    linkedList.add(dequeue.get(0));
                    z10 = false;
                }
            }
            i9++;
        }
        if (z10) {
            this.mAudioFrameListQueue.queue(UGCAudioFrameProvider.END_OF_STREAM);
        } else {
            this.mAudioFrameListQueue.queue(linkedList);
        }
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void seekTo(long j10) {
        this.mWorkHandler.a(ec.a(this, j10), 0);
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void setPlayEndPts(long j10) {
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void start() {
        this.mWorkHandler.a(ea.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void stop() {
        this.mWorkHandler.a(eb.a(this), 0);
    }

    @Override // com.tencent.ugc.UGCAudioFrameProvider
    public void uninitialize() {
        stop();
    }
}
