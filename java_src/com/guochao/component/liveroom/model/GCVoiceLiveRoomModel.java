package com.guochao.component.liveroom.model;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import z6.a;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J\b\u0010#\u001a\u00020\fH\u0016R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R\u0018\u0010\u000b\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u0018\u0010\u0013\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u000e\"\u0004\b\u0014\u0010\u0010R\u0018\u0010\u0015\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u0018\u0010\u0017\u001a\u00020\fX¦\u000e¢\u0006\f\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u0018\u0010\u0010R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010\u0005\"\u0004\b\u001b\u0010\u0007R \u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dX¦\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006$À\u0006\u0003"}, d2 = {"Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;", "", "backgroundImage", "", "getBackgroundImage", "()Ljava/lang/String;", "setBackgroundImage", "(Ljava/lang/String;)V", "coverImgUrl", "getCoverImgUrl", "setCoverImgUrl", "forbiddenMessage", "", "getForbiddenMessage", "()Z", "setForbiddenMessage", "(Z)V", "isVoiceRoom", "setVoiceRoom", "isVoiceRoomAdministrator", "setVoiceRoomAdministrator", "isVoiceRoomMember", "setVoiceRoomMember", "isVoiceRoomOwner", "setVoiceRoomOwner", "title", "getTitle", "setTitle", "usersOnSeat", "", "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;", "getUsersOnSeat", "()Ljava/util/List;", "setUsersOnSeat", "(Ljava/util/List;)V", "isVoiceRoomVisitor", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface GCVoiceLiveRoomModel {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static boolean isVoiceRoomVisitor(@NotNull GCVoiceLiveRoomModel gCVoiceLiveRoomModel) {
            boolean a10;
            a10 = a.a(gCVoiceLiveRoomModel);
            return a10;
        }
    }

    @Nullable
    String getBackgroundImage();

    @Nullable
    String getCoverImgUrl();

    boolean getForbiddenMessage();

    @Nullable
    String getTitle();

    @Nullable
    List<GCVoiceRoomSeatModel> getUsersOnSeat();

    boolean isVoiceRoom();

    boolean isVoiceRoomAdministrator();

    boolean isVoiceRoomMember();

    boolean isVoiceRoomOwner();

    boolean isVoiceRoomVisitor();

    void setBackgroundImage(@Nullable String str);

    void setCoverImgUrl(@Nullable String str);

    void setForbiddenMessage(boolean z10);

    void setTitle(@Nullable String str);

    void setUsersOnSeat(@Nullable List<GCVoiceRoomSeatModel> list);

    void setVoiceRoom(boolean z10);

    void setVoiceRoomAdministrator(boolean z10);

    void setVoiceRoomMember(boolean z10);

    void setVoiceRoomOwner(boolean z10);
}
