package com.google.android.exoplayer2;
/* loaded from: classes.dex */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final i3 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(i3 i3Var, int i9, long j10) {
        this.timeline = i3Var;
        this.windowIndex = i9;
        this.positionMs = j10;
    }
}
