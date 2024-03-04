package com.guochao.faceshow.bean;

import b7.b;
import com.guochao.faceshow.utils.Contants;
import com.tencent.xmagic.XmagicConstant;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b'\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B}\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003¢\u0006\u0002\u0010\u0015J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0010HÆ\u0003J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0005HÆ\u0003J\t\u0010/\u001a\u00020\u0005HÆ\u0003J\t\u00100\u001a\u00020\u0005HÆ\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0005HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\u009d\u0001\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u0003HÆ\u0001J\u0013\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\u0005HÖ\u0001J\t\u0010;\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0017R\u0011\u0010\u0012\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0019R\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0017R\u0011\u0010\u000e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0019¨\u0006<"}, d2 = {"Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;", "", "coverImgUrl", "", "freezeStatus", "", "level", "memberPrice", "microList", "", "Lcom/guochao/faceshow/bean/UserVoiceRoomMicro;", XmagicConstant.BeautyConstant.BEAUTY_FACE_NATURE_ID, "onlineStatus", "roomId", "userOnlineRoomId", "ticket", "", "title", Contants.USER_ID, "imGroupId", "userOnlineImGroupId", "(Ljava/lang/String;IIILjava/util/List;IIIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getCoverImgUrl", "()Ljava/lang/String;", "getFreezeStatus", "()I", "getImGroupId", "getLevel", "getMemberPrice", "getMicroList", "()Ljava/util/List;", "getNature", "getOnlineStatus", "getRoomId", "getTicket", "()J", "getTitle", "getUserId", "getUserOnlineImGroupId", "getUserOnlineRoomId", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserVoiceRoomInfoBean {
    @NotNull
    private final String coverImgUrl;
    private final int freezeStatus;
    @NotNull
    private final String imGroupId;
    private final int level;
    private final int memberPrice;
    @Nullable
    private final List<UserVoiceRoomMicro> microList;
    private final int nature;
    private final int onlineStatus;
    private final int roomId;
    private final long ticket;
    @NotNull
    private final String title;
    private final int userId;
    @NotNull
    private final String userOnlineImGroupId;
    private final int userOnlineRoomId;

    public UserVoiceRoomInfoBean(@NotNull String coverImgUrl, int i9, int i10, int i11, @Nullable List<UserVoiceRoomMicro> list, int i12, int i13, int i14, int i15, long j10, @NotNull String title, int i16, @NotNull String imGroupId, @NotNull String userOnlineImGroupId) {
        Intrinsics.checkNotNullParameter(coverImgUrl, "coverImgUrl");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(imGroupId, "imGroupId");
        Intrinsics.checkNotNullParameter(userOnlineImGroupId, "userOnlineImGroupId");
        this.coverImgUrl = coverImgUrl;
        this.freezeStatus = i9;
        this.level = i10;
        this.memberPrice = i11;
        this.microList = list;
        this.nature = i12;
        this.onlineStatus = i13;
        this.roomId = i14;
        this.userOnlineRoomId = i15;
        this.ticket = j10;
        this.title = title;
        this.userId = i16;
        this.imGroupId = imGroupId;
        this.userOnlineImGroupId = userOnlineImGroupId;
    }

    @NotNull
    public final String component1() {
        return this.coverImgUrl;
    }

    public final long component10() {
        return this.ticket;
    }

    @NotNull
    public final String component11() {
        return this.title;
    }

    public final int component12() {
        return this.userId;
    }

    @NotNull
    public final String component13() {
        return this.imGroupId;
    }

    @NotNull
    public final String component14() {
        return this.userOnlineImGroupId;
    }

    public final int component2() {
        return this.freezeStatus;
    }

    public final int component3() {
        return this.level;
    }

    public final int component4() {
        return this.memberPrice;
    }

    @Nullable
    public final List<UserVoiceRoomMicro> component5() {
        return this.microList;
    }

    public final int component6() {
        return this.nature;
    }

    public final int component7() {
        return this.onlineStatus;
    }

    public final int component8() {
        return this.roomId;
    }

    public final int component9() {
        return this.userOnlineRoomId;
    }

    @NotNull
    public final UserVoiceRoomInfoBean copy(@NotNull String coverImgUrl, int i9, int i10, int i11, @Nullable List<UserVoiceRoomMicro> list, int i12, int i13, int i14, int i15, long j10, @NotNull String title, int i16, @NotNull String imGroupId, @NotNull String userOnlineImGroupId) {
        Intrinsics.checkNotNullParameter(coverImgUrl, "coverImgUrl");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(imGroupId, "imGroupId");
        Intrinsics.checkNotNullParameter(userOnlineImGroupId, "userOnlineImGroupId");
        return new UserVoiceRoomInfoBean(coverImgUrl, i9, i10, i11, list, i12, i13, i14, i15, j10, title, i16, imGroupId, userOnlineImGroupId);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserVoiceRoomInfoBean) {
            UserVoiceRoomInfoBean userVoiceRoomInfoBean = (UserVoiceRoomInfoBean) obj;
            return Intrinsics.areEqual(this.coverImgUrl, userVoiceRoomInfoBean.coverImgUrl) && this.freezeStatus == userVoiceRoomInfoBean.freezeStatus && this.level == userVoiceRoomInfoBean.level && this.memberPrice == userVoiceRoomInfoBean.memberPrice && Intrinsics.areEqual(this.microList, userVoiceRoomInfoBean.microList) && this.nature == userVoiceRoomInfoBean.nature && this.onlineStatus == userVoiceRoomInfoBean.onlineStatus && this.roomId == userVoiceRoomInfoBean.roomId && this.userOnlineRoomId == userVoiceRoomInfoBean.userOnlineRoomId && this.ticket == userVoiceRoomInfoBean.ticket && Intrinsics.areEqual(this.title, userVoiceRoomInfoBean.title) && this.userId == userVoiceRoomInfoBean.userId && Intrinsics.areEqual(this.imGroupId, userVoiceRoomInfoBean.imGroupId) && Intrinsics.areEqual(this.userOnlineImGroupId, userVoiceRoomInfoBean.userOnlineImGroupId);
        }
        return false;
    }

    @NotNull
    public final String getCoverImgUrl() {
        return this.coverImgUrl;
    }

    public final int getFreezeStatus() {
        return this.freezeStatus;
    }

    @NotNull
    public final String getImGroupId() {
        return this.imGroupId;
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getMemberPrice() {
        return this.memberPrice;
    }

    @Nullable
    public final List<UserVoiceRoomMicro> getMicroList() {
        return this.microList;
    }

    public final int getNature() {
        return this.nature;
    }

    public final int getOnlineStatus() {
        return this.onlineStatus;
    }

    public final int getRoomId() {
        return this.roomId;
    }

    public final long getTicket() {
        return this.ticket;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final int getUserId() {
        return this.userId;
    }

    @NotNull
    public final String getUserOnlineImGroupId() {
        return this.userOnlineImGroupId;
    }

    public final int getUserOnlineRoomId() {
        return this.userOnlineRoomId;
    }

    public int hashCode() {
        int hashCode = ((((((this.coverImgUrl.hashCode() * 31) + this.freezeStatus) * 31) + this.level) * 31) + this.memberPrice) * 31;
        List<UserVoiceRoomMicro> list = this.microList;
        return ((((((((((((((((((hashCode + (list == null ? 0 : list.hashCode())) * 31) + this.nature) * 31) + this.onlineStatus) * 31) + this.roomId) * 31) + this.userOnlineRoomId) * 31) + b.a(this.ticket)) * 31) + this.title.hashCode()) * 31) + this.userId) * 31) + this.imGroupId.hashCode()) * 31) + this.userOnlineImGroupId.hashCode();
    }

    @NotNull
    public String toString() {
        return "UserVoiceRoomInfoBean(coverImgUrl=" + this.coverImgUrl + ", freezeStatus=" + this.freezeStatus + ", level=" + this.level + ", memberPrice=" + this.memberPrice + ", microList=" + this.microList + ", nature=" + this.nature + ", onlineStatus=" + this.onlineStatus + ", roomId=" + this.roomId + ", userOnlineRoomId=" + this.userOnlineRoomId + ", ticket=" + this.ticket + ", title=" + this.title + ", userId=" + this.userId + ", imGroupId=" + this.imGroupId + ", userOnlineImGroupId=" + this.userOnlineImGroupId + ')';
    }
}
