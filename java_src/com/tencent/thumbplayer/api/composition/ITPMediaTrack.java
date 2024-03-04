package com.tencent.thumbplayer.api.composition;

import java.util.List;
/* loaded from: classes4.dex */
public interface ITPMediaTrack extends ITPMediaAsset {
    int addTrackClip(ITPMediaTrackClip iTPMediaTrackClip);

    List<ITPMediaTrackClip> getAllTrackClips();

    long getTimelineDurationMs();

    ITPMediaTrackClip getTrackClip(int i9);

    int getTrackId();

    int insertTrackClip(ITPMediaTrackClip iTPMediaTrackClip, int i9);

    void removeAllTrackClips();

    boolean removeTrackClip(ITPMediaTrackClip iTPMediaTrackClip);

    boolean swapTrackClip(int i9, int i10);
}
