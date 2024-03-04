package com.guochao.faceshow.aaspring.beans;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/EventTrackData;", "", "status", "", "desc", "", "(ILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "setDesc", "(Ljava/lang/String;)V", "getStatus", "()I", "setStatus", "(I)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class EventTrackData {
    @NotNull
    private String desc;
    private int status;

    public EventTrackData() {
        this(0, null, 3, null);
    }

    public EventTrackData(int i9, @NotNull String desc) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        this.status = i9;
        this.desc = desc;
    }

    public static /* synthetic */ EventTrackData copy$default(EventTrackData eventTrackData, int i9, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i9 = eventTrackData.status;
        }
        if ((i10 & 2) != 0) {
            str = eventTrackData.desc;
        }
        return eventTrackData.copy(i9, str);
    }

    public final int component1() {
        return this.status;
    }

    @NotNull
    public final String component2() {
        return this.desc;
    }

    @NotNull
    public final EventTrackData copy(int i9, @NotNull String desc) {
        Intrinsics.checkNotNullParameter(desc, "desc");
        return new EventTrackData(i9, desc);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EventTrackData) {
            EventTrackData eventTrackData = (EventTrackData) obj;
            return this.status == eventTrackData.status && Intrinsics.areEqual(this.desc, eventTrackData.desc);
        }
        return false;
    }

    @NotNull
    public final String getDesc() {
        return this.desc;
    }

    public final int getStatus() {
        return this.status;
    }

    public int hashCode() {
        return (this.status * 31) + this.desc.hashCode();
    }

    public final void setDesc(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.desc = str;
    }

    public final void setStatus(int i9) {
        this.status = i9;
    }

    @NotNull
    public String toString() {
        return "EventTrackData(status=" + this.status + ", desc=" + this.desc + ')';
    }

    public /* synthetic */ EventTrackData(int i9, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i9, (i10 & 2) != 0 ? "" : str);
    }
}
