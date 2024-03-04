package com.tencent.thumbplayer.api.composition;
/* loaded from: classes4.dex */
public interface ITPMediaTrackClip extends ITPMediaAsset {
    ITPMediaTrackClip clone(int i9);

    int getClipId();

    long getEndTimeMs();

    String getFilePath();

    long getOriginalDurationMs();

    long getStartPositionMs();

    long getStartTimeMs();

    void setCutTimeRange(long j10, long j11);

    void setOriginalDurationMs(long j10);

    void setStartPositionMs(long j10);
}
