package com.tencent.thumbplayer.core.richmedia;
/* loaded from: classes4.dex */
public class TPNativeTimeRange {
    private long mEndTimeMs;
    private long mStartTimeMs;

    public TPNativeTimeRange(long j10, long j11) {
        this.mStartTimeMs = j10;
        this.mEndTimeMs = j11;
    }

    public long getEndTimeMs() {
        return this.mEndTimeMs;
    }

    public long getStartTimeMs() {
        return this.mStartTimeMs;
    }

    public void setEndTimeMs(long j10) {
        this.mEndTimeMs = j10;
    }

    public void setStartTimeMs(long j10) {
        this.mStartTimeMs = j10;
    }
}
