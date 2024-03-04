package com.guochao.faceshow.aaspring.modulars.chat.models;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.tencent.imsdk.v2.V2TIMDownloadCallback;
import com.tencent.imsdk.v2.V2TIMElem;
import com.tencent.imsdk.v2.V2TIMManager;
import com.tencent.imsdk.v2.V2TIMMessage;
import com.tencent.imsdk.v2.V2TIMValueCallback;
import com.tencent.imsdk.v2.V2TIMVideoElem;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class VideoMessage extends MediaMessage {
    private static final String TAG = "VideoMessage";
    private List<V2TIMValueCallback<String>> mCallBacks;
    boolean mIsDownloading;
    private List<V2TIMValueCallback<V2TIMElem.V2ProgressInfo>> mProgressCallBacks;

    /* loaded from: classes3.dex */
    class a implements V2TIMDownloadCallback {
        a() {
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onError(int i9, String str) {
            if (VideoMessage.this.mProgressCallBacks != null) {
                for (V2TIMValueCallback v2TIMValueCallback : VideoMessage.this.mProgressCallBacks) {
                    v2TIMValueCallback.onError(i9, str);
                }
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMDownloadCallback
        public void onProgress(V2TIMElem.V2ProgressInfo v2ProgressInfo) {
            if (VideoMessage.this.mProgressCallBacks != null) {
                for (V2TIMValueCallback v2TIMValueCallback : VideoMessage.this.mProgressCallBacks) {
                    v2TIMValueCallback.onSuccess(v2ProgressInfo);
                }
            }
        }

        @Override // com.tencent.imsdk.v2.V2TIMCallback
        public void onSuccess() {
            if (VideoMessage.this.mCallBacks != null) {
                for (V2TIMValueCallback v2TIMValueCallback : VideoMessage.this.mCallBacks) {
                    v2TIMValueCallback.onSuccess(VideoMessage.this.getVideoPath().getAbsolutePath());
                }
            }
            VideoMessage.this.mIsDownloading = false;
        }
    }

    public VideoMessage(V2TIMMessage v2TIMMessage) {
        super(v2TIMMessage);
        getFirstElem();
    }

    public static VideoMessage buildVideoMessage(LocalImageOrVideoBean localImageOrVideoBean) {
        return new VideoMessage(V2TIMManager.getMessageManager().createVideoMessage(localImageOrVideoBean.getPath(), localImageOrVideoBean.getPath().substring(localImageOrVideoBean.getPath().lastIndexOf(".")), ((int) localImageOrVideoBean.getDuration()) / 1000, localImageOrVideoBean.getThumbnailPath()));
    }

    public void download() {
        if (this.mIsDownloading) {
            return;
        }
        this.mIsDownloading = true;
        getVideo().downloadVideo(getVideoPath().getAbsolutePath(), new a());
    }

    public V2TIMVideoElem getFirstElem() {
        return this.message.getVideoElem();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public int getItemViewType() {
        return isSelf() ? 13 : 14;
    }

    public String getLocalThumbnailPath() {
        String absolutePath = getBaseDir(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "thumb").getAbsolutePath();
        String valueOf = String.valueOf(System.currentTimeMillis());
        try {
            valueOf = getVideo().getVideoUUID();
        } catch (Exception unused) {
        }
        return absolutePath + File.separator + valueOf + "_thumbnail";
    }

    public String getLocalVideoPath() {
        V2TIMMessage v2TIMMessage = this.message;
        return (v2TIMMessage == null || v2TIMMessage.getVideoElem() == null) ? "" : this.message.getVideoElem().getVideoPath();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.models.a
    public String getSummary(Context context) {
        String revokeSummary = getRevokeSummary();
        if (revokeSummary != null) {
            return revokeSummary;
        }
        if (TextUtils.isEmpty(getTransformedOtherLanguage())) {
            return context.getString(R.string.summary_video);
        }
        String str = getTransformedOtherLanguage() + "_video";
        Map<String, String> map = com.guochao.faceshow.aaspring.modulars.chat.models.a.MESSAGE_TIPS_MULTI_LANGUAGE;
        if (map.containsKey(str)) {
            String str2 = map.get(str);
            if (!TextUtils.isEmpty(str2)) {
                return str2;
            }
        }
        return context.getString(R.string.summary_video);
    }

    public String getThumbnailPath() {
        V2TIMVideoElem firstElem = getFirstElem();
        return firstElem != null ? firstElem.getSnapshotPath() : "";
    }

    public V2TIMVideoElem getVideo() {
        return getFirstElem();
    }

    public File getVideoPath() {
        String videoUUID;
        V2TIMVideoElem video = getVideo();
        if (video == null || (videoUUID = video.getVideoUUID()) == null) {
            return null;
        }
        if (!videoUUID.startsWith(".")) {
            videoUUID = "." + videoUUID;
        }
        return new File(getBaseDir(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "original"), video.getVideoUUID() + videoUUID);
    }

    public void registerDownloadCallback(V2TIMValueCallback<String> v2TIMValueCallback) {
        if (this.mCallBacks == null) {
            this.mCallBacks = new ArrayList();
        }
        if (this.mCallBacks.contains(v2TIMValueCallback)) {
            return;
        }
        this.mCallBacks.add(v2TIMValueCallback);
    }

    public void registerProgressCallback(V2TIMValueCallback<V2TIMElem.V2ProgressInfo> v2TIMValueCallback) {
        if (this.mProgressCallBacks == null) {
            this.mProgressCallBacks = new ArrayList();
        }
        if (this.mProgressCallBacks.contains(v2TIMValueCallback)) {
            return;
        }
        this.mProgressCallBacks.add(v2TIMValueCallback);
    }

    public void unregisterDownloadCallback(V2TIMValueCallback<String> v2TIMValueCallback) {
        List<V2TIMValueCallback<String>> list = this.mCallBacks;
        if (list == null) {
            return;
        }
        list.remove(v2TIMValueCallback);
    }

    public void unregisterProgressCallback(V2TIMValueCallback<V2TIMElem.V2ProgressInfo> v2TIMValueCallback) {
        List<V2TIMValueCallback<V2TIMElem.V2ProgressInfo>> list = this.mProgressCallBacks;
        if (list == null) {
            return;
        }
        list.remove(v2TIMValueCallback);
    }
}
