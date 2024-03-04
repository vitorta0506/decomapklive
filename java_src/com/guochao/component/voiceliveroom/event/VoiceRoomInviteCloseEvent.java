package com.guochao.component.voiceliveroom.event;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/voiceliveroom/event/VoiceRoomInviteCloseEvent;", "", "id", "", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomInviteCloseEvent {
    @NotNull

    /* renamed from: id  reason: collision with root package name */
    private final String f15906id;

    public VoiceRoomInviteCloseEvent(@NotNull String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        this.f15906id = id2;
    }

    @NotNull
    public final String getId() {
        return this.f15906id;
    }
}
