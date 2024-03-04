package com.guochao.component.liveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import z6.a;
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010.\u001a\u00020/H\u0016J\b\u00100\u001a\u00020\u0014H\u0016J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0014H\u0016J\u0018\u00104\u001a\u0002022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u00105\u001a\u00020/H\u0016R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001a\u0010\u001b\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\u001a\u0010\u001d\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0016\"\u0004\b \u0010\u0018R\u0018\u0010!\u001a\u00020\bX¦\u000e¢\u0006\f\u001a\u0004\b\"\u0010\n\"\u0004\b#\u0010\fR\u001c\u0010$\u001a\u0004\u0018\u00010\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\n\"\u0004\b&\u0010\fR\"\u0010'\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00066"}, d2 = {"Lcom/guochao/component/liveroom/model/GCLiveRoomModel;", "Lcom/guochao/component/liveroom/model/GCVoiceLiveRoomModel;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "backgroundImage", "", "getBackgroundImage", "()Ljava/lang/String;", "setBackgroundImage", "(Ljava/lang/String;)V", "chatGroupId", "getChatGroupId", "setChatGroupId", "coverImgUrl", "getCoverImgUrl", "setCoverImgUrl", "forbiddenMessage", "", "getForbiddenMessage", "()Z", "setForbiddenMessage", "(Z)V", "isVoiceRoom", "setVoiceRoom", "isVoiceRoomAdministrator", "setVoiceRoomAdministrator", "isVoiceRoomMember", "setVoiceRoomMember", "isVoiceRoomOwner", "setVoiceRoomOwner", "liveRoomId", "getLiveRoomId", "setLiveRoomId", "title", "getTitle", "setTitle", "usersOnSeat", "", "Lcom/guochao/component/liveroom/model/GCVoiceRoomSeatModel;", "getUsersOnSeat", "()Ljava/util/List;", "setUsersOnSeat", "(Ljava/util/List;)V", "describeContents", "", "isMultiLiveRoom", "setMultiLiveRoom", "", "multiLiveRoom", "writeToParcel", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class GCLiveRoomModel implements GCVoiceLiveRoomModel, Parcelable {
    @SerializedName("backImgUrl")
    @Nullable
    private String backgroundImage;
    @NotNull
    private String chatGroupId;
    @Nullable
    private String coverImgUrl;
    private boolean forbiddenMessage;
    private boolean isVoiceRoom;
    private boolean isVoiceRoomAdministrator;
    private boolean isVoiceRoomMember;
    private boolean isVoiceRoomOwner;
    @Nullable
    private String title;
    @Nullable
    private List<GCVoiceRoomSeatModel> usersOnSeat;

    public GCLiveRoomModel() {
        this.chatGroupId = "";
        this.backgroundImage = "";
        this.coverImgUrl = "";
        this.title = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    @Nullable
    public String getBackgroundImage() {
        return this.backgroundImage;
    }

    @NotNull
    public String getChatGroupId() {
        return this.chatGroupId;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    @Nullable
    public String getCoverImgUrl() {
        return this.coverImgUrl;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public boolean getForbiddenMessage() {
        return this.forbiddenMessage;
    }

    @NotNull
    public abstract String getLiveRoomId();

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    @Nullable
    public String getTitle() {
        return this.title;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    @Nullable
    public List<GCVoiceRoomSeatModel> getUsersOnSeat() {
        return this.usersOnSeat;
    }

    public boolean isMultiLiveRoom() {
        return true;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public boolean isVoiceRoom() {
        return this.isVoiceRoom;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public boolean isVoiceRoomAdministrator() {
        return this.isVoiceRoomAdministrator;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public boolean isVoiceRoomMember() {
        return this.isVoiceRoomMember;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public boolean isVoiceRoomOwner() {
        return this.isVoiceRoomOwner;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public /* synthetic */ boolean isVoiceRoomVisitor() {
        return a.a(this);
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setBackgroundImage(@Nullable String str) {
        this.backgroundImage = str;
    }

    public void setChatGroupId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.chatGroupId = str;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setCoverImgUrl(@Nullable String str) {
        this.coverImgUrl = str;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setForbiddenMessage(boolean z10) {
        this.forbiddenMessage = z10;
    }

    public abstract void setLiveRoomId(@NotNull String str);

    public void setMultiLiveRoom(boolean z10) {
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setTitle(@Nullable String str) {
        this.title = str;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setUsersOnSeat(@Nullable List<GCVoiceRoomSeatModel> list) {
        this.usersOnSeat = list;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setVoiceRoom(boolean z10) {
        this.isVoiceRoom = z10;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setVoiceRoomAdministrator(boolean z10) {
        this.isVoiceRoomAdministrator = z10;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setVoiceRoomMember(boolean z10) {
        this.isVoiceRoomMember = z10;
    }

    @Override // com.guochao.component.liveroom.model.GCVoiceLiveRoomModel
    public void setVoiceRoomOwner(boolean z10) {
        this.isVoiceRoomOwner = z10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i9) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(getLiveRoomId());
        parcel.writeString(getChatGroupId());
        parcel.writeByte(isVoiceRoom() ? (byte) 1 : (byte) 0);
        parcel.writeByte(isVoiceRoomOwner() ? (byte) 1 : (byte) 0);
        parcel.writeByte(isVoiceRoomMember() ? (byte) 1 : (byte) 0);
        parcel.writeByte(isVoiceRoomAdministrator() ? (byte) 1 : (byte) 0);
        parcel.writeString(getBackgroundImage());
        parcel.writeString(getCoverImgUrl());
        parcel.writeString(getTitle());
        parcel.writeByte(getForbiddenMessage() ? (byte) 1 : (byte) 0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GCLiveRoomModel(@NotNull Parcel parcel) {
        this();
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        String readString = parcel.readString();
        setLiveRoomId(readString == null ? "" : readString);
        String readString2 = parcel.readString();
        setChatGroupId(readString2 != null ? readString2 : "");
        setVoiceRoom(parcel.readByte() != 0);
        setVoiceRoomOwner(parcel.readByte() != 0);
        setVoiceRoomMember(parcel.readByte() != 0);
        setVoiceRoomAdministrator(parcel.readByte() != 0);
        setBackgroundImage(parcel.readString());
        setCoverImgUrl(parcel.readString());
        setTitle(parcel.readString());
        setForbiddenMessage(parcel.readByte() != 0);
    }
}
