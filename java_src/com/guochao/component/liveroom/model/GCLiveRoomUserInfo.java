package com.guochao.component.liveroom.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.aaspring.base.model.GCUser;
import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.parcelize.Parcelize;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Parcelize
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b'\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002Bk\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0010J\t\u0010 \u001a\u00020\u0004HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010#\u001a\u00020\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\t\u0010'\u001a\u00020\u0006HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0083\u0001\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010,\u001a\u00020\u0006HÖ\u0001J\u0013\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u000100HÖ\u0003J\t\u00101\u001a\u00020\u0006HÖ\u0001J\t\u00102\u001a\u00020\u0004HÖ\u0001J\u0019\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0006HÖ\u0001R\u0014\u0010\t\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0014\u0010\b\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0014\u0010\n\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u001bR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0016\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0012¨\u00068"}, d2 = {"Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;", "Landroid/os/Parcelable;", "Lcom/guochao/faceshow/aaspring/base/model/GCUser;", Contants.USER_ID, "", "vipLevel", "", "nickName", "gender", "age", "level", "avatarUrl", "smallAvatarUrl", "countryLogo", "dressHead", "mvpUrl", "(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAge", "()I", "getAvatarUrl", "()Ljava/lang/String;", "getCountryLogo", "getDressHead", "getGender", "getLevel", "getMvpUrl", "setMvpUrl", "(Ljava/lang/String;)V", "getNickName", "getSmallAvatarUrl", "getUserId", "getVipLevel", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GCLiveRoomUserInfo implements Parcelable, GCUser {
    @NotNull
    public static final Parcelable.Creator<GCLiveRoomUserInfo> CREATOR = new Creator();
    private final int age;
    @Nullable
    private final String avatarUrl;
    @Nullable
    private final String countryLogo;
    @Nullable
    private final String dressHead;
    private final int gender;
    private final int level;
    @Nullable
    private String mvpUrl;
    @Nullable
    private final String nickName;
    @Nullable
    private final String smallAvatarUrl;
    @NotNull
    private final String userId;
    private final int vipLevel;

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<GCLiveRoomUserInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GCLiveRoomUserInfo createFromParcel(@NotNull Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new GCLiveRoomUserInfo(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NotNull
        public final GCLiveRoomUserInfo[] newArray(int i9) {
            return new GCLiveRoomUserInfo[i9];
        }
    }

    public GCLiveRoomUserInfo(@NotNull String userId, int i9, @Nullable String str, int i10, int i11, int i12, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.vipLevel = i9;
        this.nickName = str;
        this.gender = i10;
        this.age = i11;
        this.level = i12;
        this.avatarUrl = str2;
        this.smallAvatarUrl = str3;
        this.countryLogo = str4;
        this.dressHead = str5;
        this.mvpUrl = str6;
    }

    @NotNull
    public final String component1() {
        return getUserId();
    }

    @Nullable
    public final String component10() {
        return getDressHead();
    }

    @Nullable
    public final String component11() {
        return getMvpUrl();
    }

    public final int component2() {
        return getVipLevel();
    }

    @Nullable
    public final String component3() {
        return getNickName();
    }

    public final int component4() {
        return getGender();
    }

    public final int component5() {
        return getAge();
    }

    public final int component6() {
        return getLevel();
    }

    @Nullable
    public final String component7() {
        return getAvatarUrl();
    }

    @Nullable
    public final String component8() {
        return getSmallAvatarUrl();
    }

    @Nullable
    public final String component9() {
        return getCountryLogo();
    }

    @NotNull
    public final GCLiveRoomUserInfo copy(@NotNull String userId, int i9, @Nullable String str, int i10, int i11, int i12, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable String str6) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new GCLiveRoomUserInfo(userId, i9, str, i10, i11, i12, str2, str3, str4, str5, str6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GCLiveRoomUserInfo) {
            GCLiveRoomUserInfo gCLiveRoomUserInfo = (GCLiveRoomUserInfo) obj;
            return Intrinsics.areEqual(getUserId(), gCLiveRoomUserInfo.getUserId()) && getVipLevel() == gCLiveRoomUserInfo.getVipLevel() && Intrinsics.areEqual(getNickName(), gCLiveRoomUserInfo.getNickName()) && getGender() == gCLiveRoomUserInfo.getGender() && getAge() == gCLiveRoomUserInfo.getAge() && getLevel() == gCLiveRoomUserInfo.getLevel() && Intrinsics.areEqual(getAvatarUrl(), gCLiveRoomUserInfo.getAvatarUrl()) && Intrinsics.areEqual(getSmallAvatarUrl(), gCLiveRoomUserInfo.getSmallAvatarUrl()) && Intrinsics.areEqual(getCountryLogo(), gCLiveRoomUserInfo.getCountryLogo()) && Intrinsics.areEqual(getDressHead(), gCLiveRoomUserInfo.getDressHead()) && Intrinsics.areEqual(getMvpUrl(), gCLiveRoomUserInfo.getMvpUrl());
        }
        return false;
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

    @Override // com.guochao.faceshow.aaspring.base.model.GCUser
    public int getLevel() {
        return this.level;
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

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @Nullable
    public String getSmallAvatarUrl() {
        return this.smallAvatarUrl;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    @NotNull
    public String getUserId() {
        return this.userId;
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserVipInfo
    public int getVipLevel() {
        return this.vipLevel;
    }

    public int hashCode() {
        return (((((((((((((((((((getUserId().hashCode() * 31) + getVipLevel()) * 31) + (getNickName() == null ? 0 : getNickName().hashCode())) * 31) + getGender()) * 31) + getAge()) * 31) + getLevel()) * 31) + (getAvatarUrl() == null ? 0 : getAvatarUrl().hashCode())) * 31) + (getSmallAvatarUrl() == null ? 0 : getSmallAvatarUrl().hashCode())) * 31) + (getCountryLogo() == null ? 0 : getCountryLogo().hashCode())) * 31) + (getDressHead() == null ? 0 : getDressHead().hashCode())) * 31) + (getMvpUrl() != null ? getMvpUrl().hashCode() : 0);
    }

    @Override // com.guochao.faceshow.aaspring.base.model.GCUserBaseInfo
    public void setMvpUrl(@Nullable String str) {
        this.mvpUrl = str;
    }

    @NotNull
    public String toString() {
        return "GCLiveRoomUserInfo(userId=" + getUserId() + ", vipLevel=" + getVipLevel() + ", nickName=" + getNickName() + ", gender=" + getGender() + ", age=" + getAge() + ", level=" + getLevel() + ", avatarUrl=" + getAvatarUrl() + ", smallAvatarUrl=" + getSmallAvatarUrl() + ", countryLogo=" + getCountryLogo() + ", dressHead=" + getDressHead() + ", mvpUrl=" + getMvpUrl() + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel out, int i9) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.userId);
        out.writeInt(this.vipLevel);
        out.writeString(this.nickName);
        out.writeInt(this.gender);
        out.writeInt(this.age);
        out.writeInt(this.level);
        out.writeString(this.avatarUrl);
        out.writeString(this.smallAvatarUrl);
        out.writeString(this.countryLogo);
        out.writeString(this.dressHead);
        out.writeString(this.mvpUrl);
    }

    public /* synthetic */ GCLiveRoomUserInfo(String str, int i9, String str2, int i10, int i11, int i12, String str3, String str4, String str5, String str6, String str7, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i9, str2, i10, i11, i12, str3, str4, str5, str6, (i13 & 1024) != 0 ? null : str7);
    }
}
