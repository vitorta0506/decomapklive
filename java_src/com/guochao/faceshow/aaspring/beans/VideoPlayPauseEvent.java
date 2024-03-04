package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/VideoPlayPauseEvent;", "", "stop", "", "(Z)V", "getStop", "()Z", "setStop", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoPlayPauseEvent {
    private boolean stop;

    public VideoPlayPauseEvent() {
        this(false, 1, null);
    }

    public VideoPlayPauseEvent(boolean z10) {
        this.stop = z10;
    }

    public static /* synthetic */ VideoPlayPauseEvent copy$default(VideoPlayPauseEvent videoPlayPauseEvent, boolean z10, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            z10 = videoPlayPauseEvent.stop;
        }
        return videoPlayPauseEvent.copy(z10);
    }

    public final boolean component1() {
        return this.stop;
    }

    @NotNull
    public final VideoPlayPauseEvent copy(boolean z10) {
        return new VideoPlayPauseEvent(z10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VideoPlayPauseEvent) && this.stop == ((VideoPlayPauseEvent) obj).stop;
    }

    public final boolean getStop() {
        return this.stop;
    }

    public int hashCode() {
        boolean z10 = this.stop;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final void setStop(boolean z10) {
        this.stop = z10;
    }

    @NotNull
    public String toString() {
        return "VideoPlayPauseEvent(stop=" + this.stop + ')';
    }

    public /* synthetic */ VideoPlayPauseEvent(boolean z10, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? true : z10);
    }
}
