package com.guochao.faceshow.aaspring.beans;

import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Entity(tableName = "gc_event_model")
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u001aJ\t\u0010\"\u001a\u00020\bHÆ\u0003JB\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020\bHÖ\u0001J\t\u0010)\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001e\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/aaspring/beans/GCEventModel;", "", "id", "", "event", "", "recordTime", "targetUserId", "", "num", "(JLjava/lang/String;JLjava/lang/Integer;I)V", "getEvent", "()Ljava/lang/String;", "setEvent", "(Ljava/lang/String;)V", "getId", "()J", "setId", "(J)V", "getNum", "()I", "setNum", "(I)V", "getRecordTime", "setRecordTime", "getTargetUserId", "()Ljava/lang/Integer;", "setTargetUserId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "component3", "component4", "component5", "copy", "(JLjava/lang/String;JLjava/lang/Integer;I)Lcom/guochao/faceshow/aaspring/beans/GCEventModel;", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GCEventModel {
    @SerializedName("buryingCode")
    @NotNull
    private String event;
    @PrimaryKey(autoGenerate = true)
    @Expose(deserialize = false, serialize = false)

    /* renamed from: id  reason: collision with root package name */
    private long f16308id;
    private int num;
    @SerializedName("pointTime")
    private long recordTime;
    @Nullable
    private Integer targetUserId;

    public GCEventModel(long j10, @NotNull String event, long j11, @Nullable Integer num, int i9) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f16308id = j10;
        this.event = event;
        this.recordTime = j11;
        this.targetUserId = num;
        this.num = i9;
    }

    public final long component1() {
        return this.f16308id;
    }

    @NotNull
    public final String component2() {
        return this.event;
    }

    public final long component3() {
        return this.recordTime;
    }

    @Nullable
    public final Integer component4() {
        return this.targetUserId;
    }

    public final int component5() {
        return this.num;
    }

    @NotNull
    public final GCEventModel copy(long j10, @NotNull String event, long j11, @Nullable Integer num, int i9) {
        Intrinsics.checkNotNullParameter(event, "event");
        return new GCEventModel(j10, event, j11, num, i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GCEventModel) {
            GCEventModel gCEventModel = (GCEventModel) obj;
            return this.f16308id == gCEventModel.f16308id && Intrinsics.areEqual(this.event, gCEventModel.event) && this.recordTime == gCEventModel.recordTime && Intrinsics.areEqual(this.targetUserId, gCEventModel.targetUserId) && this.num == gCEventModel.num;
        }
        return false;
    }

    @NotNull
    public final String getEvent() {
        return this.event;
    }

    public final long getId() {
        return this.f16308id;
    }

    public final int getNum() {
        return this.num;
    }

    public final long getRecordTime() {
        return this.recordTime;
    }

    @Nullable
    public final Integer getTargetUserId() {
        return this.targetUserId;
    }

    public int hashCode() {
        int a10 = ((((b7.b.a(this.f16308id) * 31) + this.event.hashCode()) * 31) + b7.b.a(this.recordTime)) * 31;
        Integer num = this.targetUserId;
        return ((a10 + (num == null ? 0 : num.hashCode())) * 31) + this.num;
    }

    public final void setEvent(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.event = str;
    }

    public final void setId(long j10) {
        this.f16308id = j10;
    }

    public final void setNum(int i9) {
        this.num = i9;
    }

    public final void setRecordTime(long j10) {
        this.recordTime = j10;
    }

    public final void setTargetUserId(@Nullable Integer num) {
        this.targetUserId = num;
    }

    @NotNull
    public String toString() {
        return "GCEventModel(id=" + this.f16308id + ", event=" + this.event + ", recordTime=" + this.recordTime + ", targetUserId=" + this.targetUserId + ", num=" + this.num + ')';
    }

    public /* synthetic */ GCEventModel(long j10, String str, long j11, Integer num, int i9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, str, (i10 & 4) != 0 ? System.currentTimeMillis() : j11, (i10 & 8) != 0 ? null : num, (i10 & 16) != 0 ? 1 : i9);
    }
}
