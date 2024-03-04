package com.guochao.component.voiceliveroom.event;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, d2 = {"Lcom/guochao/component/voiceliveroom/event/VoiceRoomRemoveEvent;", "", "roomId", "", "(Ljava/lang/String;)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomRemoveEvent {
    @NotNull
    private String roomId;

    public VoiceRoomRemoveEvent(@NotNull String roomId) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        this.roomId = roomId;
    }

    public static /* synthetic */ VoiceRoomRemoveEvent copy$default(VoiceRoomRemoveEvent voiceRoomRemoveEvent, String str, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            str = voiceRoomRemoveEvent.roomId;
        }
        return voiceRoomRemoveEvent.copy(str);
    }

    @NotNull
    public final String component1() {
        return this.roomId;
    }

    @NotNull
    public final VoiceRoomRemoveEvent copy(@NotNull String roomId) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        return new VoiceRoomRemoveEvent(roomId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof VoiceRoomRemoveEvent) && Intrinsics.areEqual(this.roomId, ((VoiceRoomRemoveEvent) obj).roomId);
    }

    @NotNull
    public final String getRoomId() {
        return this.roomId;
    }

    public int hashCode() {
        return this.roomId.hashCode();
    }

    public final void setRoomId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.roomId = str;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomRemoveEvent(roomId=" + this.roomId + ')';
    }
}
