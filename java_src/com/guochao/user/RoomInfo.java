package com.guochao.user;

import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003JC\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\nR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\f\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\f\"\u0004\b\u0013\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/guochao/user/RoomInfo;", "", "roomId", "", Contants.USER_ID, "streamId", "isBroadcaster", "", "refer", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V", "()Z", "getRefer", "()Ljava/lang/String;", "getRoomId", "setRoomId", "(Ljava/lang/String;)V", "getStreamId", "setStreamId", "getUserId", "setUserId", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "lib_pusher_and_player_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class RoomInfo {
    private final boolean isBroadcaster;
    @Nullable
    private final String refer;
    @Nullable
    private String roomId;
    @Nullable
    private String streamId;
    @Nullable
    private String userId;

    public RoomInfo() {
        this(null, null, null, false, null, 31, null);
    }

    public RoomInfo(@Nullable String str, @Nullable String str2, @Nullable String str3, boolean z10, @Nullable String str4) {
        this.roomId = str;
        this.userId = str2;
        this.streamId = str3;
        this.isBroadcaster = z10;
        this.refer = str4;
    }

    public static /* synthetic */ RoomInfo copy$default(RoomInfo roomInfo, String str, String str2, String str3, boolean z10, String str4, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = roomInfo.roomId;
        }
        if ((i9 & 2) != 0) {
            str2 = roomInfo.userId;
        }
        String str5 = str2;
        if ((i9 & 4) != 0) {
            str3 = roomInfo.streamId;
        }
        String str6 = str3;
        if ((i9 & 8) != 0) {
            z10 = roomInfo.isBroadcaster;
        }
        boolean z11 = z10;
        if ((i9 & 16) != 0) {
            str4 = roomInfo.refer;
        }
        return roomInfo.copy(str, str5, str6, z11, str4);
    }

    @Nullable
    public final String component1() {
        return this.roomId;
    }

    @Nullable
    public final String component2() {
        return this.userId;
    }

    @Nullable
    public final String component3() {
        return this.streamId;
    }

    public final boolean component4() {
        return this.isBroadcaster;
    }

    @Nullable
    public final String component5() {
        return this.refer;
    }

    @NotNull
    public final RoomInfo copy(@Nullable String str, @Nullable String str2, @Nullable String str3, boolean z10, @Nullable String str4) {
        return new RoomInfo(str, str2, str3, z10, str4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RoomInfo) {
            RoomInfo roomInfo = (RoomInfo) obj;
            return Intrinsics.areEqual(this.roomId, roomInfo.roomId) && Intrinsics.areEqual(this.userId, roomInfo.userId) && Intrinsics.areEqual(this.streamId, roomInfo.streamId) && this.isBroadcaster == roomInfo.isBroadcaster && Intrinsics.areEqual(this.refer, roomInfo.refer);
        }
        return false;
    }

    @Nullable
    public final String getRefer() {
        return this.refer;
    }

    @Nullable
    public final String getRoomId() {
        return this.roomId;
    }

    @Nullable
    public final String getStreamId() {
        return this.streamId;
    }

    @Nullable
    public final String getUserId() {
        return this.userId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.roomId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.userId;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.streamId;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        boolean z10 = this.isBroadcaster;
        int i9 = z10;
        if (z10 != 0) {
            i9 = 1;
        }
        int i10 = (hashCode3 + i9) * 31;
        String str4 = this.refer;
        return i10 + (str4 != null ? str4.hashCode() : 0);
    }

    public final boolean isBroadcaster() {
        return this.isBroadcaster;
    }

    public final void setRoomId(@Nullable String str) {
        this.roomId = str;
    }

    public final void setStreamId(@Nullable String str) {
        this.streamId = str;
    }

    public final void setUserId(@Nullable String str) {
        this.userId = str;
    }

    @NotNull
    public String toString() {
        return "RoomInfo(roomId=" + this.roomId + ", userId=" + this.userId + ", streamId=" + this.streamId + ", isBroadcaster=" + this.isBroadcaster + ", refer=" + this.refer + ')';
    }

    public /* synthetic */ RoomInfo(String str, String str2, String str3, boolean z10, String str4, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        this((i9 & 1) != 0 ? "" : str, (i9 & 2) != 0 ? "" : str2, (i9 & 4) != 0 ? null : str3, (i9 & 8) != 0 ? false : z10, (i9 & 16) != 0 ? "" : str4);
    }
}
