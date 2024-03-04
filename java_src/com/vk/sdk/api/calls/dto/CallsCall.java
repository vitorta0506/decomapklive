package com.vk.sdk.api.calls.dto;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.ServerProtocol;
import com.google.gson.annotations.SerializedName;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010!\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010\"\u001a\u0004\u0018\u00010\fHÆ\u0003JZ\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020\n2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020)HÖ\u0001R\u001a\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lcom/vk/sdk/api/calls/dto/CallsCall;", "", "initiatorId", "", "receiverId", ServerProtocol.DIALOG_PARAM_STATE, "Lcom/vk/sdk/api/calls/dto/CallsEndState;", CrashHianalyticsData.TIME, "duration", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "", "participants", "Lcom/vk/sdk/api/calls/dto/CallsParticipants;", "(IILcom/vk/sdk/api/calls/dto/CallsEndState;ILjava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/calls/dto/CallsParticipants;)V", "getDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getInitiatorId", "()I", "getParticipants", "()Lcom/vk/sdk/api/calls/dto/CallsParticipants;", "getReceiverId", "getState", "()Lcom/vk/sdk/api/calls/dto/CallsEndState;", "getTime", "getVideo", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(IILcom/vk/sdk/api/calls/dto/CallsEndState;ILjava/lang/Integer;Ljava/lang/Boolean;Lcom/vk/sdk/api/calls/dto/CallsParticipants;)Lcom/vk/sdk/api/calls/dto/CallsCall;", "equals", "other", "hashCode", "toString", "", "api_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class CallsCall {
    @SerializedName("duration")
    @Nullable
    private final Integer duration;
    @SerializedName("initiator_id")
    private final int initiatorId;
    @SerializedName("participants")
    @Nullable
    private final CallsParticipants participants;
    @SerializedName("receiver_id")
    private final int receiverId;
    @SerializedName(ServerProtocol.DIALOG_PARAM_STATE)
    @NotNull
    private final CallsEndState state;
    @SerializedName(CrashHianalyticsData.TIME)
    private final int time;
    @SerializedName(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)
    @Nullable
    private final Boolean video;

    public CallsCall(int i9, int i10, @NotNull CallsEndState state, int i11, @Nullable Integer num, @Nullable Boolean bool, @Nullable CallsParticipants callsParticipants) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.initiatorId = i9;
        this.receiverId = i10;
        this.state = state;
        this.time = i11;
        this.duration = num;
        this.video = bool;
        this.participants = callsParticipants;
    }

    public static /* synthetic */ CallsCall copy$default(CallsCall callsCall, int i9, int i10, CallsEndState callsEndState, int i11, Integer num, Boolean bool, CallsParticipants callsParticipants, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i9 = callsCall.initiatorId;
        }
        if ((i12 & 2) != 0) {
            i10 = callsCall.receiverId;
        }
        int i13 = i10;
        if ((i12 & 4) != 0) {
            callsEndState = callsCall.state;
        }
        CallsEndState callsEndState2 = callsEndState;
        if ((i12 & 8) != 0) {
            i11 = callsCall.time;
        }
        int i14 = i11;
        if ((i12 & 16) != 0) {
            num = callsCall.duration;
        }
        Integer num2 = num;
        if ((i12 & 32) != 0) {
            bool = callsCall.video;
        }
        Boolean bool2 = bool;
        if ((i12 & 64) != 0) {
            callsParticipants = callsCall.participants;
        }
        return callsCall.copy(i9, i13, callsEndState2, i14, num2, bool2, callsParticipants);
    }

    public final int component1() {
        return this.initiatorId;
    }

    public final int component2() {
        return this.receiverId;
    }

    @NotNull
    public final CallsEndState component3() {
        return this.state;
    }

    public final int component4() {
        return this.time;
    }

    @Nullable
    public final Integer component5() {
        return this.duration;
    }

    @Nullable
    public final Boolean component6() {
        return this.video;
    }

    @Nullable
    public final CallsParticipants component7() {
        return this.participants;
    }

    @NotNull
    public final CallsCall copy(int i9, int i10, @NotNull CallsEndState state, int i11, @Nullable Integer num, @Nullable Boolean bool, @Nullable CallsParticipants callsParticipants) {
        Intrinsics.checkNotNullParameter(state, "state");
        return new CallsCall(i9, i10, state, i11, num, bool, callsParticipants);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CallsCall) {
            CallsCall callsCall = (CallsCall) obj;
            return this.initiatorId == callsCall.initiatorId && this.receiverId == callsCall.receiverId && this.state == callsCall.state && this.time == callsCall.time && Intrinsics.areEqual(this.duration, callsCall.duration) && Intrinsics.areEqual(this.video, callsCall.video) && Intrinsics.areEqual(this.participants, callsCall.participants);
        }
        return false;
    }

    @Nullable
    public final Integer getDuration() {
        return this.duration;
    }

    public final int getInitiatorId() {
        return this.initiatorId;
    }

    @Nullable
    public final CallsParticipants getParticipants() {
        return this.participants;
    }

    public final int getReceiverId() {
        return this.receiverId;
    }

    @NotNull
    public final CallsEndState getState() {
        return this.state;
    }

    public final int getTime() {
        return this.time;
    }

    @Nullable
    public final Boolean getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = ((((((this.initiatorId * 31) + this.receiverId) * 31) + this.state.hashCode()) * 31) + this.time) * 31;
        Integer num = this.duration;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.video;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        CallsParticipants callsParticipants = this.participants;
        return hashCode3 + (callsParticipants != null ? callsParticipants.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        int i9 = this.initiatorId;
        int i10 = this.receiverId;
        CallsEndState callsEndState = this.state;
        int i11 = this.time;
        Integer num = this.duration;
        Boolean bool = this.video;
        CallsParticipants callsParticipants = this.participants;
        return "CallsCall(initiatorId=" + i9 + ", receiverId=" + i10 + ", state=" + callsEndState + ", time=" + i11 + ", duration=" + num + ", video=" + bool + ", participants=" + callsParticipants + ")";
    }

    public /* synthetic */ CallsCall(int i9, int i10, CallsEndState callsEndState, int i11, Integer num, Boolean bool, CallsParticipants callsParticipants, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i9, i10, callsEndState, i11, (i12 & 16) != 0 ? null : num, (i12 & 32) != 0 ? null : bool, (i12 & 64) != 0 ? null : callsParticipants);
    }
}
