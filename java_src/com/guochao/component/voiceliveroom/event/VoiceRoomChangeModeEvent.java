package com.guochao.component.voiceliveroom.event;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/guochao/component/voiceliveroom/event/VoiceRoomChangeModeEvent;", "", "roomId", "", "mode", "", "(Ljava/lang/String;I)V", "getMode", "()I", "setMode", "(I)V", "getRoomId", "()Ljava/lang/String;", "setRoomId", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomChangeModeEvent {
    private int mode;
    @NotNull
    private String roomId;

    public VoiceRoomChangeModeEvent(@NotNull String roomId, int i9) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        this.roomId = roomId;
        this.mode = i9;
    }

    public static /* synthetic */ VoiceRoomChangeModeEvent copy$default(VoiceRoomChangeModeEvent voiceRoomChangeModeEvent, String str, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = voiceRoomChangeModeEvent.roomId;
        }
        if ((i10 & 2) != 0) {
            i9 = voiceRoomChangeModeEvent.mode;
        }
        return voiceRoomChangeModeEvent.copy(str, i9);
    }

    @NotNull
    public final String component1() {
        return this.roomId;
    }

    public final int component2() {
        return this.mode;
    }

    @NotNull
    public final VoiceRoomChangeModeEvent copy(@NotNull String roomId, int i9) {
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        return new VoiceRoomChangeModeEvent(roomId, i9);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomChangeModeEvent) {
            VoiceRoomChangeModeEvent voiceRoomChangeModeEvent = (VoiceRoomChangeModeEvent) obj;
            return Intrinsics.areEqual(this.roomId, voiceRoomChangeModeEvent.roomId) && this.mode == voiceRoomChangeModeEvent.mode;
        }
        return false;
    }

    public final int getMode() {
        return this.mode;
    }

    @NotNull
    public final String getRoomId() {
        return this.roomId;
    }

    public int hashCode() {
        return (this.roomId.hashCode() * 31) + this.mode;
    }

    public final void setMode(int i9) {
        this.mode = i9;
    }

    public final void setRoomId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.roomId = str;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomChangeModeEvent(roomId=" + this.roomId + ", mode=" + this.mode + ')';
    }
}
