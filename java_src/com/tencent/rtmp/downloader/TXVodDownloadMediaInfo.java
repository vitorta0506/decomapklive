package com.tencent.rtmp.downloader;

import com.tencent.imsdk.v2.V2TIMOfflinePushInfo;
import com.tencent.liteav.txcvodplayer.b.d;
import com.tencent.rtmp.downloader.a.a;
/* loaded from: classes4.dex */
public class TXVodDownloadMediaInfo {
    public static final int STATE_ERROR = 3;
    public static final int STATE_FINISH = 4;
    public static final int STATE_INIT = 0;
    public static final int STATE_START = 1;
    public static final int STATE_STOP = 2;
    protected a dataSource;
    protected int downloadSegments;
    protected int downloadSize;
    protected int duration;
    @Deprecated
    protected d netApi;
    protected String playPath;
    protected int playableDuration;
    protected float progress;
    protected int segments;
    protected int size;
    protected int speed;
    protected String url;
    protected String userName = V2TIMOfflinePushInfo.IOS_OFFLINE_PUSH_DEFAULT_SOUND;
    protected int tid = -1;
    protected int downloadState = 0;

    public TXVodDownloadDataSource getDataSource() {
        return this.dataSource;
    }

    public int getDownloadSize() {
        if (this.downloadSize == 0 && this.size > 0 && getProgress() > 0.0f) {
            return Math.min((int) (this.size * getProgress()), this.size);
        }
        return Math.min(this.downloadSize, this.size);
    }

    public int getDownloadState() {
        return this.downloadState;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getPlayPath() {
        return this.playPath;
    }

    public int getPlayableDuration() {
        return this.playableDuration;
    }

    public float getProgress() {
        int i9;
        int i10 = this.playableDuration;
        if ((i10 <= 0 || (i9 = this.duration) <= 0) && (((i10 = this.downloadSize) <= 0 || (i9 = this.size) <= 0) && ((i10 = this.downloadSegments) <= 0 || (i9 = this.segments) <= 0))) {
            return 0.0f;
        }
        return i10 / i9;
    }

    public int getSize() {
        return this.size;
    }

    public int getSpeed() {
        return this.speed;
    }

    public int getTaskId() {
        return this.tid;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUserName() {
        return this.userName;
    }

    public boolean isDownloadFinished() {
        return this.downloadState == 4;
    }

    public void setSpeed(int i9) {
        this.speed = i9;
    }
}
