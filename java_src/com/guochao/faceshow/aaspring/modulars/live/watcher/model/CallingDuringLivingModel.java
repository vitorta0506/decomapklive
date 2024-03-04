package com.guochao.faceshow.aaspring.modulars.live.watcher.model;

import b7.b;
import com.guochao.faceshow.aaspring.beans.RoomItemData;
import com.guochao.faceshow.aaspring.modulars.trtc.model.CallModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;", "", "()V", "AcceptedCallModel", "RejectCallModel", "StartCallModel", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$RejectCallModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class CallingDuringLivingModel {

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$AcceptedCallModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "type", "", "messageModel", "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;", "(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V", "getMessageModel", "()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;", "getRoomItemData", "()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "getType", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class AcceptedCallModel extends CallingDuringLivingModel {
        @Nullable
        private final CallModel messageModel;
        @NotNull
        private final RoomItemData roomItemData;
        private final int type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AcceptedCallModel(@NotNull RoomItemData roomItemData, int i9, @Nullable CallModel callModel) {
            super(null);
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            this.roomItemData = roomItemData;
            this.type = i9;
            this.messageModel = callModel;
        }

        public static /* synthetic */ AcceptedCallModel copy$default(AcceptedCallModel acceptedCallModel, RoomItemData roomItemData, int i9, CallModel callModel, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                roomItemData = acceptedCallModel.roomItemData;
            }
            if ((i10 & 2) != 0) {
                i9 = acceptedCallModel.type;
            }
            if ((i10 & 4) != 0) {
                callModel = acceptedCallModel.messageModel;
            }
            return acceptedCallModel.copy(roomItemData, i9, callModel);
        }

        @NotNull
        public final RoomItemData component1() {
            return this.roomItemData;
        }

        public final int component2() {
            return this.type;
        }

        @Nullable
        public final CallModel component3() {
            return this.messageModel;
        }

        @NotNull
        public final AcceptedCallModel copy(@NotNull RoomItemData roomItemData, int i9, @Nullable CallModel callModel) {
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            return new AcceptedCallModel(roomItemData, i9, callModel);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AcceptedCallModel) {
                AcceptedCallModel acceptedCallModel = (AcceptedCallModel) obj;
                return Intrinsics.areEqual(this.roomItemData, acceptedCallModel.roomItemData) && this.type == acceptedCallModel.type && Intrinsics.areEqual(this.messageModel, acceptedCallModel.messageModel);
            }
            return false;
        }

        @Nullable
        public final CallModel getMessageModel() {
            return this.messageModel;
        }

        @NotNull
        public final RoomItemData getRoomItemData() {
            return this.roomItemData;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((this.roomItemData.hashCode() * 31) + this.type) * 31;
            CallModel callModel = this.messageModel;
            return hashCode + (callModel == null ? 0 : callModel.hashCode());
        }

        @NotNull
        public String toString() {
            return "AcceptedCallModel(roomItemData=" + this.roomItemData + ", type=" + this.type + ", messageModel=" + this.messageModel + ')';
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$RejectCallModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "type", "", "(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V", "getRoomItemData", "()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "getType", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class RejectCallModel extends CallingDuringLivingModel {
        @NotNull
        private final RoomItemData roomItemData;
        private final int type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RejectCallModel(@NotNull RoomItemData roomItemData, int i9) {
            super(null);
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            this.roomItemData = roomItemData;
            this.type = i9;
        }

        public static /* synthetic */ RejectCallModel copy$default(RejectCallModel rejectCallModel, RoomItemData roomItemData, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                roomItemData = rejectCallModel.roomItemData;
            }
            if ((i10 & 2) != 0) {
                i9 = rejectCallModel.type;
            }
            return rejectCallModel.copy(roomItemData, i9);
        }

        @NotNull
        public final RoomItemData component1() {
            return this.roomItemData;
        }

        public final int component2() {
            return this.type;
        }

        @NotNull
        public final RejectCallModel copy(@NotNull RoomItemData roomItemData, int i9) {
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            return new RejectCallModel(roomItemData, i9);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RejectCallModel) {
                RejectCallModel rejectCallModel = (RejectCallModel) obj;
                return Intrinsics.areEqual(this.roomItemData, rejectCallModel.roomItemData) && this.type == rejectCallModel.type;
            }
            return false;
        }

        @NotNull
        public final RoomItemData getRoomItemData() {
            return this.roomItemData;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            return (this.roomItemData.hashCode() * 31) + this.type;
        }

        @NotNull
        public String toString() {
            return "RejectCallModel(roomItemData=" + this.roomItemData + ", type=" + this.type + ')';
        }
    }

    private CallingDuringLivingModel() {
    }

    public /* synthetic */ CallingDuringLivingModel(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J3\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel$StartCallModel;", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/model/CallingDuringLivingModel;", "roomItemData", "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "type", "", "callModel", "Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;", "callTimestamp", "", "(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;ILcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;J)V", "getCallModel", "()Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;", "getCallTimestamp", "()J", "setCallTimestamp", "(J)V", "getRoomItemData", "()Lcom/guochao/faceshow/aaspring/beans/RoomItemData;", "getType", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class StartCallModel extends CallingDuringLivingModel {
        @Nullable
        private final CallModel callModel;
        private long callTimestamp;
        @NotNull
        private final RoomItemData roomItemData;
        private final int type;

        public /* synthetic */ StartCallModel(RoomItemData roomItemData, int i9, CallModel callModel, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(roomItemData, i9, callModel, (i10 & 8) != 0 ? System.currentTimeMillis() : j10);
        }

        public static /* synthetic */ StartCallModel copy$default(StartCallModel startCallModel, RoomItemData roomItemData, int i9, CallModel callModel, long j10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                roomItemData = startCallModel.roomItemData;
            }
            if ((i10 & 2) != 0) {
                i9 = startCallModel.type;
            }
            int i11 = i9;
            if ((i10 & 4) != 0) {
                callModel = startCallModel.callModel;
            }
            CallModel callModel2 = callModel;
            if ((i10 & 8) != 0) {
                j10 = startCallModel.callTimestamp;
            }
            return startCallModel.copy(roomItemData, i11, callModel2, j10);
        }

        @NotNull
        public final RoomItemData component1() {
            return this.roomItemData;
        }

        public final int component2() {
            return this.type;
        }

        @Nullable
        public final CallModel component3() {
            return this.callModel;
        }

        public final long component4() {
            return this.callTimestamp;
        }

        @NotNull
        public final StartCallModel copy(@NotNull RoomItemData roomItemData, int i9, @Nullable CallModel callModel, long j10) {
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            return new StartCallModel(roomItemData, i9, callModel, j10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StartCallModel) {
                StartCallModel startCallModel = (StartCallModel) obj;
                return Intrinsics.areEqual(this.roomItemData, startCallModel.roomItemData) && this.type == startCallModel.type && Intrinsics.areEqual(this.callModel, startCallModel.callModel) && this.callTimestamp == startCallModel.callTimestamp;
            }
            return false;
        }

        @Nullable
        public final CallModel getCallModel() {
            return this.callModel;
        }

        public final long getCallTimestamp() {
            return this.callTimestamp;
        }

        @NotNull
        public final RoomItemData getRoomItemData() {
            return this.roomItemData;
        }

        public final int getType() {
            return this.type;
        }

        public int hashCode() {
            int hashCode = ((this.roomItemData.hashCode() * 31) + this.type) * 31;
            CallModel callModel = this.callModel;
            return ((hashCode + (callModel == null ? 0 : callModel.hashCode())) * 31) + b.a(this.callTimestamp);
        }

        public final void setCallTimestamp(long j10) {
            this.callTimestamp = j10;
        }

        @NotNull
        public String toString() {
            return "StartCallModel(roomItemData=" + this.roomItemData + ", type=" + this.type + ", callModel=" + this.callModel + ", callTimestamp=" + this.callTimestamp + ')';
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StartCallModel(@NotNull RoomItemData roomItemData, int i9, @Nullable CallModel callModel, long j10) {
            super(null);
            Intrinsics.checkNotNullParameter(roomItemData, "roomItemData");
            this.roomItemData = roomItemData;
            this.type = i9;
            this.callModel = callModel;
            this.callTimestamp = j10;
        }
    }
}
