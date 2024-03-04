package com.guochao.faceshow.aaspring.modulars.live.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bµ\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0018J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\t\u00106\u001a\u00020\u0005HÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\t\u00108\u001a\u00020\u0005HÆ\u0003J\t\u00109\u001a\u00020\u0005HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0005HÆ\u0003J\t\u0010=\u001a\u00020\u0005HÆ\u0003J\t\u0010>\u001a\u00020\u0005HÆ\u0003J\t\u0010?\u001a\u00020\u0005HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0005HÆ\u0003J\t\u0010B\u001a\u00020\u0005HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003J×\u0001\u0010D\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010E\u001a\u00020\u0005HÖ\u0001J\u0013\u0010F\u001a\u00020G2\b\u0010H\u001a\u0004\u0018\u00010IHÖ\u0003J\t\u0010J\u001a\u00020\u0005HÖ\u0001J\t\u0010K\u001a\u00020\u0003HÖ\u0001J\u0019\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020\u0005HÖ\u0001R\u0014\u0010\u000b\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0012\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001aR\u0016\u0010\n\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001aR\u0011\u0010\u0013\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u001aR\u0016\u0010\b\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u001d\"\u0004\b&\u0010'R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0016\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001dR\u0016\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001dR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001aR\u0016\u0010\u0010\u001a\u00020\u00058\u0016X\u0097\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001a¨\u0006Q"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", Contants.USER_ID, "", "diamondCount", "", "bCount", "fansNum", "level", "nickName", "gender", "age", "avatarUrl", "smallAvatarUrl", "countryLogo", "dressHead", "vipLevel", "userRoles", "attentionStatus", "isBan", "isKick", "mvpUserInfoResult", "Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;", "mvpUrl", "(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILcom/guochao/faceshow/bean/UserBean$UserMvpInfo;Ljava/lang/String;)V", "getAge", "()I", "getAttentionStatus", "getAvatarUrl", "()Ljava/lang/String;", "getBCount", "getCountryLogo", "getDiamondCount", "getDressHead", "getFansNum", "getGender", "getLevel", "getMvpUrl", "setMvpUrl", "(Ljava/lang/String;)V", "getMvpUserInfoResult", "()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;", "setMvpUserInfoResult", "(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V", "getNickName", "getSmallAvatarUrl", "getUserId", "getUserRoles", "getVipLevel", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VoiceRoomPeopleInfoModel implements GCUser {
    @NotNull
    public static final Parcelable.Creator<VoiceRoomPeopleInfoModel> CREATOR = new Creator();
    private final int age;
    private final int attentionStatus;
    @SerializedName("img")
    @Nullable
    private final String avatarUrl;
    @SerializedName("bcount")
    private final int bCount;
    @Nullable
    private final String countryLogo;
    private final int diamondCount;
    @Nullable
    private final String dressHead;
    private final int fansNum;
    @SerializedName("sex")
    private final int gender;
    private final int isBan;
    private final int isKick;
    @SerializedName(Contants.USER_levelId)
    private final int level;
    @Nullable
    private String mvpUrl;
    @Nullable
    private UserBean.UserMvpInfo mvpUserInfoResult;
    @Nullable
    private final String nickName;
    @Nullable
    private final String smallAvatarUrl;
    @Nullable
    private final String userId;
    private final int userRoles;
    @SerializedName("isVip")
    private final int vipLevel;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<VoiceRoomPeopleInfoModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomPeopleInfoModel createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new VoiceRoomPeopleInfoModel(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (UserBean.UserMvpInfo) parcel.readParcelable(VoiceRoomPeopleInfoModel.class.getClassLoader()), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final VoiceRoomPeopleInfoModel[] newArray(int i9) {
            return new VoiceRoomPeopleInfoModel[i9];
        }
    }

    public VoiceRoomPeopleInfoModel(@Nullable String str, int i9, int i10, int i11, int i12, @Nullable String str2, int i13, int i14, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, int i15, int i16, int i17, int i18, int i19, @Nullable UserBean.UserMvpInfo userMvpInfo, @Nullable String str7) {
        this.userId = str;
        this.diamondCount = i9;
        this.bCount = i10;
        this.fansNum = i11;
        this.level = i12;
        this.nickName = str2;
        this.gender = i13;
        this.age = i14;
        this.avatarUrl = str3;
        this.smallAvatarUrl = str4;
        this.countryLogo = str5;
        this.dressHead = str6;
        this.vipLevel = i15;
        this.userRoles = i16;
        this.attentionStatus = i17;
        this.isBan = i18;
        this.isKick = i19;
        this.mvpUserInfoResult = userMvpInfo;
        this.mvpUrl = str7;
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
        return getCountryLogo();
    }

    @Nullable
    public final String component12() {
        return getDressHead();
    }

    public final int component13() {
        return getVipLevel();
    }

    public final int component14() {
        return this.userRoles;
    }

    public final int component15() {
        return this.attentionStatus;
    }

    public final int component16() {
        return this.isBan;
    }

    public final int component17() {
        return this.isKick;
    }

    @Nullable
    public final UserBean.UserMvpInfo component18() {
        return this.mvpUserInfoResult;
    }

    @Nullable
    public final String component19() {
        return getMvpUrl();
    }

    public final int component2() {
        return this.diamondCount;
    }

    public final int component3() {
        return this.bCount;
    }

    public final int component4() {
        return this.fansNum;
    }

    public final int component5() {
        return getLevel();
    }

    @Nullable
    public final String component6() {
        return getNickName();
    }

    public final int component7() {
        return getGender();
    }

    public final int component8() {
        return getAge();
    }

    @Nullable
    public final String component9() {
        return getAvatarUrl();
    }

    @NotNull
    public final VoiceRoomPeopleInfoModel copy(@Nullable String str, int i9, int i10, int i11, int i12, @Nullable String str2, int i13, int i14, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6, int i15, int i16, int i17, int i18, int i19, @Nullable UserBean.UserMvpInfo userMvpInfo, @Nullable String str7) {
        return new VoiceRoomPeopleInfoModel(str, i9, i10, i11, i12, str2, i13, i14, str3, str4, str5, str6, i15, i16, i17, i18, i19, userMvpInfo, str7);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VoiceRoomPeopleInfoModel) {
            VoiceRoomPeopleInfoModel voiceRoomPeopleInfoModel = (VoiceRoomPeopleInfoModel) obj;
            return Intrinsics.areEqual(getUserId(), voiceRoomPeopleInfoModel.getUserId()) && this.diamondCount == voiceRoomPeopleInfoModel.diamondCount && this.bCount == voiceRoomPeopleInfoModel.bCount && this.fansNum == voiceRoomPeopleInfoModel.fansNum && getLevel() == voiceRoomPeopleInfoModel.getLevel() && Intrinsics.areEqual(getNickName(), voiceRoomPeopleInfoModel.getNickName()) && getGender() == voiceRoomPeopleInfoModel.getGender() && getAge() == voiceRoomPeopleInfoModel.getAge() && Intrinsics.areEqual(getAvatarUrl(), voiceRoomPeopleInfoModel.getAvatarUrl()) && Intrinsics.areEqual(getSmallAvatarUrl(), voiceRoomPeopleInfoModel.getSmallAvatarUrl()) && Intrinsics.areEqual(getCountryLogo(), voiceRoomPeopleInfoModel.getCountryLogo()) && Intrinsics.areEqual(getDressHead(), voiceRoomPeopleInfoModel.getDressHead()) && getVipLevel() == voiceRoomPeopleInfoModel.getVipLevel() && this.userRoles == voiceRoomPeopleInfoModel.userRoles && this.attentionStatus == voiceRoomPeopleInfoModel.attentionStatus && this.isBan == voiceRoomPeopleInfoModel.isBan && this.isKick == voiceRoomPeopleInfoModel.isKick && Intrinsics.areEqual(this.mvpUserInfoResult, voiceRoomPeopleInfoModel.mvpUserInfoResult) && Intrinsics.areEqual(getMvpUrl(), voiceRoomPeopleInfoModel.getMvpUrl());
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public int getAge() {
        return this.age;
    }

    public final int getAttentionStatus() {
        return this.attentionStatus;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final int getBCount() {
        return this.bCount;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getCountryLogo() {
        return this.countryLogo;
    }

    public final int getDiamondCount() {
        return this.diamondCount;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getDressHead() {
        return this.dressHead;
    }

    public final int getFansNum() {
        return this.fansNum;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public int getGender() {
        return this.gender;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUser
    public int getLevel() {
        return this.level;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getMvpUrl() {
        return this.mvpUrl;
    }

    @Nullable
    public final UserBean.UserMvpInfo getMvpUserInfoResult() {
        return this.mvpUserInfoResult;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getNickName() {
        return this.nickName;
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

    public final int getUserRoles() {
        return this.userRoles;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserVipInfo
    public int getVipLevel() {
        return this.vipLevel;
    }

    public int hashCode() {
        int hashCode = (((((((((((((((((((((((((((((((((getUserId() == null ? 0 : getUserId().hashCode()) * 31) + this.diamondCount) * 31) + this.bCount) * 31) + this.fansNum) * 31) + getLevel()) * 31) + (getNickName() == null ? 0 : getNickName().hashCode())) * 31) + getGender()) * 31) + getAge()) * 31) + (getAvatarUrl() == null ? 0 : getAvatarUrl().hashCode())) * 31) + (getSmallAvatarUrl() == null ? 0 : getSmallAvatarUrl().hashCode())) * 31) + (getCountryLogo() == null ? 0 : getCountryLogo().hashCode())) * 31) + (getDressHead() == null ? 0 : getDressHead().hashCode())) * 31) + getVipLevel()) * 31) + this.userRoles) * 31) + this.attentionStatus) * 31) + this.isBan) * 31) + this.isKick) * 31;
        UserBean.UserMvpInfo userMvpInfo = this.mvpUserInfoResult;
        return ((hashCode + (userMvpInfo == null ? 0 : userMvpInfo.hashCode())) * 31) + (getMvpUrl() != null ? getMvpUrl().hashCode() : 0);
    }

    public final int isBan() {
        return this.isBan;
    }

    public final int isKick() {
        return this.isKick;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public void setMvpUrl(@Nullable String str) {
        this.mvpUrl = str;
    }

    public final void setMvpUserInfoResult(@Nullable UserBean.UserMvpInfo userMvpInfo) {
        this.mvpUserInfoResult = userMvpInfo;
    }

    @NotNull
    public String toString() {
        return "VoiceRoomPeopleInfoModel(userId=" + getUserId() + ", diamondCount=" + this.diamondCount + ", bCount=" + this.bCount + ", fansNum=" + this.fansNum + ", level=" + getLevel() + ", nickName=" + getNickName() + ", gender=" + getGender() + ", age=" + getAge() + ", avatarUrl=" + getAvatarUrl() + ", smallAvatarUrl=" + getSmallAvatarUrl() + ", countryLogo=" + getCountryLogo() + ", dressHead=" + getDressHead() + ", vipLevel=" + getVipLevel() + ", userRoles=" + this.userRoles + ", attentionStatus=" + this.attentionStatus + ", isBan=" + this.isBan + ", isKick=" + this.isKick + ", mvpUserInfoResult=" + this.mvpUserInfoResult + ", mvpUrl=" + getMvpUrl() + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.userId);
        out.writeInt(this.diamondCount);
        out.writeInt(this.bCount);
        out.writeInt(this.fansNum);
        out.writeInt(this.level);
        out.writeString(this.nickName);
        out.writeInt(this.gender);
        out.writeInt(this.age);
        out.writeString(this.avatarUrl);
        out.writeString(this.smallAvatarUrl);
        out.writeString(this.countryLogo);
        out.writeString(this.dressHead);
        out.writeInt(this.vipLevel);
        out.writeInt(this.userRoles);
        out.writeInt(this.attentionStatus);
        out.writeInt(this.isBan);
        out.writeInt(this.isKick);
        out.writeParcelable(this.mvpUserInfoResult, i9);
        out.writeString(this.mvpUrl);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ VoiceRoomPeopleInfoModel(java.lang.String r23, int r24, int r25, int r26, int r27, java.lang.String r28, int r29, int r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, java.lang.String r34, int r35, int r36, int r37, int r38, int r39, com.guochao.faceshow.bean.UserBean.UserMvpInfo r40, java.lang.String r41, int r42, kotlin.jvm.internal.DefaultConstructorMarker r43) {
        /*
            r22 = this;
            r0 = 32768(0x8000, float:4.5918E-41)
            r0 = r42 & r0
            r1 = 0
            if (r0 == 0) goto Lb
            r18 = 0
            goto Ld
        Lb:
            r18 = r38
        Ld:
            r0 = 65536(0x10000, float:9.1835E-41)
            r0 = r42 & r0
            if (r0 == 0) goto L16
            r19 = 0
            goto L18
        L16:
            r19 = r39
        L18:
            r0 = 131072(0x20000, float:1.83671E-40)
            r0 = r42 & r0
            r1 = 0
            if (r0 == 0) goto L21
            r0 = r1
            goto L23
        L21:
            r0 = r40
        L23:
            r2 = 262144(0x40000, float:3.67342E-40)
            r2 = r42 & r2
            if (r2 == 0) goto L30
            if (r0 == 0) goto L2d
            java.lang.String r1 = r0.mvpUrl
        L2d:
            r21 = r1
            goto L32
        L30:
            r21 = r41
        L32:
            r2 = r22
            r3 = r23
            r4 = r24
            r5 = r25
            r6 = r26
            r7 = r27
            r8 = r28
            r9 = r29
            r10 = r30
            r11 = r31
            r12 = r32
            r13 = r33
            r14 = r34
            r15 = r35
            r16 = r36
            r17 = r37
            r20 = r0
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.modulars.live.model.VoiceRoomPeopleInfoModel.<init>(java.lang.String, int, int, int, int, java.lang.String, int, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, int, int, int, com.guochao.faceshow.bean.UserBean$UserMvpInfo, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
