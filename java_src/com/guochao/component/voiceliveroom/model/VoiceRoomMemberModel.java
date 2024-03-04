package com.guochao.component.voiceliveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import com.facebook.appevents.integrity.IntegrityManager;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\bC\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u0000 V2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001VB§\u0001\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0012\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0015J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010>\u001a\u00020\bHÆ\u0003J\t\u0010?\u001a\u00020\bHÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010B\u001a\u00020\bHÆ\u0003J\t\u0010C\u001a\u00020\bHÆ\u0003J\t\u0010D\u001a\u00020\bHÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010G\u001a\u00020\bHÆ\u0003J\t\u0010H\u001a\u00020\bHÆ\u0003J¯\u0001\u0010I\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\t\u0010J\u001a\u00020\bHÖ\u0001J\u0013\u0010K\u001a\u00020L2\b\u0010M\u001a\u0004\u0018\u00010NHÖ\u0003J\t\u0010O\u001a\u00020\bHÖ\u0001J\t\u0010P\u001a\u00020\u0005HÖ\u0001J\u0019\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020\bHÖ\u0001R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\bX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0017\"\u0004\b!\u0010\u0019R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0017\"\u0004\b#\u0010\u0019R\u001e\u0010\u000e\u001a\u00020\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001b\"\u0004\b%\u0010\u001dR\u0014\u0010&\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010\u001bR\u001e\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u001b\"\u0004\b)\u0010\u001dR\u001a\u0010\r\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u001b\"\u0004\b+\u0010\u001dR\u001a\u0010\u0012\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u001b\"\u0004\b-\u0010\u001dR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0019R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010\u0017\"\u0004\b1\u0010\u0019R\u001a\u0010\u0013\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\u001b\"\u0004\b3\u0010\u001dR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u0017\"\u0004\b5\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b6\u0010\u0017\"\u0004\b7\u0010\u0019R\u001e\u0010\n\u001a\u00020\b8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u001b\"\u0004\b9\u0010\u001d¨\u0006W"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;", "Landroid/os/Parcelable;", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", "Lcom/chad/library/adapter/base/entity/MultiItemEntity;", Contants.USER_ID, "", "nickName", "age", "", "level", "vipLevel", "avatarUrl", "countryLogo", "memberType", "gender", "smallAvatarUrl", "dressHead", IntegrityManager.INTEGRITY_TYPE_ADDRESS, "microStatus", "roleType", "mvpUrl", "(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V", "getAddress", "()Ljava/lang/String;", "setAddress", "(Ljava/lang/String;)V", "getAge", "()I", "setAge", "(I)V", "getAvatarUrl", "setAvatarUrl", "getCountryLogo", "setCountryLogo", "getDressHead", "setDressHead", "getGender", "setGender", "itemType", "getItemType", "getLevel", "setLevel", "getMemberType", "setMemberType", "getMicroStatus", "setMicroStatus", "getMvpUrl", "setMvpUrl", "getNickName", "setNickName", "getRoleType", "setRoleType", "getSmallAvatarUrl", "setSmallAvatarUrl", "getUserId", "setUserId", "getVipLevel", "setVipLevel", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomMemberModel implements Parcelable, GCUser, MultiItemEntity {
    public static final int MICRO_STATUS_EMPTY = 0;
    @Nullable
    private String address;
    private int age;
    @SerializedName("smallImg")
    @Nullable
    private String avatarUrl;
    @Nullable
    private String countryLogo;
    @Nullable
    private String dressHead;
    @SerializedName("sex")
    private int gender;
    @SerializedName(Contants.USER_levelId)
    private int level;
    private int memberType;
    private int microStatus;
    @Nullable
    private String mvpUrl;
    @Nullable
    private String nickName;
    private int roleType;
    @Nullable
    private String smallAvatarUrl;
    @Nullable
    private String userId;
    @SerializedName("vip")
    private int vipLevel;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final Parcelable.Creator<VoiceRoomMemberModel> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel$Companion;", "", "()V", "MICRO_STATUS_EMPTY", "", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomMemberModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomMemberModel(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomMemberModel[] newArray(int i9) {
            return new VoiceRoomMemberModel[i9];
        }
    }

    public VoiceRoomMemberModel(@Nullable String str, @Nullable String str2, int i9, int i10, int i11, @Nullable String str3, @Nullable String str4, int i12, int i13, @Nullable String str5, @Nullable String str6, @Nullable String str7, int i14, int i15, @Nullable String str8) {
        this.userId = str;
        this.nickName = str2;
        this.age = i9;
        this.level = i10;
        this.vipLevel = i11;
        this.avatarUrl = str3;
        this.countryLogo = str4;
        this.memberType = i12;
        this.gender = i13;
        this.smallAvatarUrl = str5;
        this.dressHead = str6;
        this.address = str7;
        this.microStatus = i14;
        this.roleType = i15;
        this.mvpUrl = str8;
    }

    @Nullable
    public final String component1() {
        return getUserId();
    }

    @Nullable
    public final String component10() {
        return getSmallAvatarUrl();
    }

    @Nullable
    public final String component11() {
        return getDressHead();
    }

    @Nullable
    public final String component12() {
        return this.address;
    }

    public final int component13() {
        return this.microStatus;
    }

    public final int component14() {
        return this.roleType;
    }

    @Nullable
    public final String component15() {
        return getMvpUrl();
    }

    @Nullable
    public final String component2() {
        return getNickName();
    }

    public final int component3() {
        return getAge();
    }

    public final int component4() {
        return getLevel();
    }

    public final int component5() {
        return getVipLevel();
    }

    @Nullable
    public final String component6() {
        return getAvatarUrl();
    }

    @Nullable
    public final String component7() {
        return getCountryLogo();
    }

    public final int component8() {
        return this.memberType;
    }

    public final int component9() {
        return getGender();
    }

    @NotNull
    public final VoiceRoomMemberModel copy(@Nullable String str, @Nullable String str2, int i9, int i10, int i11, @Nullable String str3, @Nullable String str4, int i12, int i13, @Nullable String str5, @Nullable String str6, @Nullable String str7, int i14, int i15, @Nullable String str8) {
        return new VoiceRoomMemberModel(str, str2, i9, i10, i11, str3, str4, i12, i13, str5, str6, str7, i14, i15, str8);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomMemberModel) {
            VoiceRoomMemberModel voiceRoomMemberModel = (VoiceRoomMemberModel) obj;
            return Intrinsics.areEqual(getUserId(), voiceRoomMemberModel.getUserId()) && Intrinsics.areEqual(getNickName(), voiceRoomMemberModel.getNickName()) && getAge() == voiceRoomMemberModel.getAge() && getLevel() == voiceRoomMemberModel.getLevel() && getVipLevel() == voiceRoomMemberModel.getVipLevel() && Intrinsics.areEqual(getAvatarUrl(), voiceRoomMemberModel.getAvatarUrl()) && Intrinsics.areEqual(getCountryLogo(), voiceRoomMemberModel.getCountryLogo()) && this.memberType == voiceRoomMemberModel.memberType && getGender() == voiceRoomMemberModel.getGender() && Intrinsics.areEqual(getSmallAvatarUrl(), voiceRoomMemberModel.getSmallAvatarUrl()) && Intrinsics.areEqual(getDressHead(), voiceRoomMemberModel.getDressHead()) && Intrinsics.areEqual(this.address, voiceRoomMemberModel.address) && this.microStatus == voiceRoomMemberModel.microStatus && this.roleType == voiceRoomMemberModel.roleType && Intrinsics.areEqual(getMvpUrl(), voiceRoomMemberModel.getMvpUrl());
        }
        return false;
    }

    @Nullable
    public final String getAddress() {
        return this.address;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public int getAge() {
        return this.age;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getCountryLogo() {
        return this.countryLogo;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getDressHead() {
        return this.dressHead;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public int getGender() {
        return this.gender;
    }

    @Override // com.chad.library.adapter.base.entity.MultiItemEntity
    public int getItemType() {
        return 100;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUser
    public int getLevel() {
        return this.level;
    }

    public final int getMemberType() {
        return this.memberType;
    }

    public final int getMicroStatus() {
        return this.microStatus;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getMvpUrl() {
        return this.mvpUrl;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getNickName() {
        return this.nickName;
    }

    public final int getRoleType() {
        return this.roleType;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getSmallAvatarUrl() {
        return this.smallAvatarUrl;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserVipInfo
    public int getVipLevel() {
        return this.vipLevel;
    }

    public int hashCode() {
        int hashCode = (((((((((((((((((((((getUserId() == null ? 0 : getUserId().hashCode()) * 31) + (getNickName() == null ? 0 : getNickName().hashCode())) * 31) + getAge()) * 31) + getLevel()) * 31) + getVipLevel()) * 31) + (getAvatarUrl() == null ? 0 : getAvatarUrl().hashCode())) * 31) + (getCountryLogo() == null ? 0 : getCountryLogo().hashCode())) * 31) + this.memberType) * 31) + getGender()) * 31) + (getSmallAvatarUrl() == null ? 0 : getSmallAvatarUrl().hashCode())) * 31) + (getDressHead() == null ? 0 : getDressHead().hashCode())) * 31;
        String str = this.address;
        return ((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.microStatus) * 31) + this.roleType) * 31) + (getMvpUrl() != null ? getMvpUrl().hashCode() : 0);
    }

    public final void setAddress(@Nullable String str) {
        this.address = str;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAvatarUrl(@Nullable String str) {
        this.avatarUrl = str;
    }

    public void setCountryLogo(@Nullable String str) {
        this.countryLogo = str;
    }

    public void setDressHead(@Nullable String str) {
        this.dressHead = str;
    }

    public void setGender(int i9) {
        this.gender = i9;
    }

    public void setLevel(int i9) {
        this.level = i9;
    }

    public final void setMemberType(int i9) {
        this.memberType = i9;
    }

    public final void setMicroStatus(int i9) {
        this.microStatus = i9;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public void setMvpUrl(@Nullable String str) {
        this.mvpUrl = str;
    }

    public void setNickName(@Nullable String str) {
        this.nickName = str;
    }

    public final void setRoleType(int i9) {
        this.roleType = i9;
    }

    public void setSmallAvatarUrl(@Nullable String str) {
        this.smallAvatarUrl = str;
    }

    public void setUserId(@Nullable String str) {
        this.userId = str;
    }

    public void setVipLevel(int i9) {
        this.vipLevel = i9;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomMemberModel(userId=" + getUserId() + ", nickName=" + getNickName() + ", age=" + getAge() + ", level=" + getLevel() + ", vipLevel=" + getVipLevel() + ", avatarUrl=" + getAvatarUrl() + ", countryLogo=" + getCountryLogo() + ", memberType=" + this.memberType + ", gender=" + getGender() + ", smallAvatarUrl=" + getSmallAvatarUrl() + ", dressHead=" + getDressHead() + ", address=" + this.address + ", microStatus=" + this.microStatus + ", roleType=" + this.roleType + ", mvpUrl=" + getMvpUrl() + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.userId);
        out.writeString(this.nickName);
        out.writeInt(this.age);
        out.writeInt(this.level);
        out.writeInt(this.vipLevel);
        out.writeString(this.avatarUrl);
        out.writeString(this.countryLogo);
        out.writeInt(this.memberType);
        out.writeInt(this.gender);
        out.writeString(this.smallAvatarUrl);
        out.writeString(this.dressHead);
        out.writeString(this.address);
        out.writeInt(this.microStatus);
        out.writeInt(this.roleType);
        out.writeString(this.mvpUrl);
    }

    public /* synthetic */ VoiceRoomMemberModel(String str, String str2, int i9, int i10, int i11, String str3, String str4, int i12, int i13, String str5, String str6, String str7, int i14, int i15, String str8, int i16, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i16 & 2) != 0 ? null : str2, (i16 & 4) != 0 ? 0 : i9, (i16 & 8) != 0 ? 1 : i10, (i16 & 16) != 0 ? 0 : i11, (i16 & 32) != 0 ? null : str3, (i16 & 64) != 0 ? null : str4, (i16 & 128) != 0 ? 0 : i12, i13, (i16 & 512) != 0 ? null : str5, (i16 & 1024) != 0 ? null : str6, (i16 & 2048) != 0 ? "" : str7, (i16 & 4096) != 0 ? 0 : i14, (i16 & 8192) != 0 ? 30 : i15, (i16 & 16384) != 0 ? null : str8);
    }
}
