package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.live.share.InviteBean;
import p7.g;
/* loaded from: classes3.dex */
public class IM_User implements Parcelable, InviteBean, Comparable<IM_User> {
    public static final Parcelable.Creator<IM_User> CREATOR = new Parcelable.Creator<IM_User>() { // from class: com.guochao.faceshow.aaspring.beans.IM_User.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IM_User createFromParcel(Parcel parcel) {
            return new IM_User(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IM_User[] newArray(int i9) {
            return new IM_User[i9];
        }
    };
    private Long _id;
    private String account;
    private int age;
    private String avatar;
    private int countryId;
    private String countryLogo;
    private String img;
    private boolean isChecked;
    private boolean isSelect;
    private int isTutual;
    private String length;
    private String levelId;
    private String liveState;
    private String loginTime;
    private String logo;
    private String nickName;
    private String nick_name;
    private String preferentialLang;
    private int sex;
    private String signature;
    private String userAttentStatus;
    private String userCountryFlag;
    private String userId;
    private String userImg;
    private String userNickName;
    private String userSex;
    private UserVipData userVipMsg;
    private String user_id;

    public IM_User() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return true;
        }
        IM_User iM_User = (IM_User) obj;
        if (TextUtils.isEmpty(iM_User.getUserId())) {
            return iM_User.getUser_id().equals(getUser_id());
        }
        return iM_User.getUserId().equals(getUserId());
    }

    public String getAccount() {
        return this.account;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.b
    public int getAge() {
        return this.age;
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        String str = this.img;
        return str == null ? this.logo : str;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return TextUtils.isEmpty(this.countryLogo) ? this.logo : this.countryLogo;
    }

    public int getCountryId() {
        return this.countryId;
    }

    public String getCountryLogo() {
        return TextUtils.isEmpty(this.countryLogo) ? this.logo : this.countryLogo;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return TextUtils.isEmpty(this.userId) ? this.user_id : this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.sex;
    }

    public String getImg() {
        return this.img;
    }

    public boolean getIsSelect() {
        return this.isSelect;
    }

    public int getIsTutual() {
        return this.isTutual;
    }

    public String getLength() {
        return this.length;
    }

    @Override // p7.e
    public int getLevel() {
        return 0;
    }

    public String getLevelId() {
        return this.levelId;
    }

    public String getLiveState() {
        return this.liveState;
    }

    public String getLoginTime() {
        return this.loginTime;
    }

    public String getLogo() {
        return this.logo;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public String getPreferentialLang() {
        return this.preferentialLang;
    }

    public int getSex() {
        return this.sex;
    }

    public String getSignature() {
        if (TextUtils.isEmpty(this.signature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.signature;
    }

    public String getUserAttentStatus() {
        return this.userAttentStatus;
    }

    public String getUserCountryFlag() {
        return this.userCountryFlag;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserImg() {
        return this.userImg;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    public String getUserName() {
        return TextUtils.isEmpty(this.nick_name) ? this.nickName : this.nick_name;
    }

    public String getUserNickName() {
        return this.userNickName;
    }

    public String getUserSex() {
        return this.userSex;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public String getUser_id() {
        return this.user_id;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean, p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public Long get_id() {
        return this._id;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public boolean isSelect() {
        return this.isSelect;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setChecked(boolean z10) {
        this.isChecked = z10;
    }

    public void setCountryId(int i9) {
        this.countryId = i9;
    }

    public void setCountryLogo(String str) {
        this.countryLogo = str;
        this.logo = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIsSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setIsTutual(int i9) {
        this.isTutual = i9;
    }

    public void setLength(String str) {
        this.length = str;
    }

    public void setLevelId(String str) {
        this.levelId = str;
    }

    public void setLiveState(String str) {
        this.liveState = str;
    }

    public void setLoginTime(String str) {
        this.loginTime = str;
    }

    public void setLogo(String str) {
        this.logo = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setPreferentialLang(String str) {
        this.preferentialLang = str;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.live.share.InviteBean
    public void setSelect(boolean z10) {
        this.isSelect = z10;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setUserAttentStatus(String str) {
        this.userAttentStatus = str;
    }

    public void setUserCountryFlag(String str) {
        this.userCountryFlag = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserImg(String str) {
        this.userImg = str;
    }

    public void setUserNickName(String str) {
        this.userNickName = str;
    }

    public void setUserSex(String str) {
        this.userSex = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public void set_id(Long l10) {
        this._id = l10;
    }

    public String toString() {
        return "IM_User{user_id='" + getUser_id() + "', sex=" + getSex() + ", nick_name='" + getNick_name() + "', account=" + getAccount() + ", signature='" + getSignature() + "', img='" + getImg() + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeValue(this._id);
        parcel.writeString(this.user_id);
        parcel.writeInt(this.sex);
        parcel.writeString(this.nick_name);
        parcel.writeString(this.account);
        parcel.writeString(this.signature);
        parcel.writeString(this.img);
        parcel.writeByte(this.isChecked ? (byte) 1 : (byte) 0);
        parcel.writeString(this.nickName);
        parcel.writeString(this.userId);
        parcel.writeString(this.loginTime);
        parcel.writeString(this.length);
        parcel.writeInt(this.isTutual);
        parcel.writeString(this.userImg);
        parcel.writeString(this.avatar);
    }

    protected IM_User(Parcel parcel) {
        this._id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.user_id = parcel.readString();
        this.sex = parcel.readInt();
        this.nick_name = parcel.readString();
        this.account = parcel.readString();
        this.signature = parcel.readString();
        this.img = parcel.readString();
        this.isChecked = parcel.readByte() != 0;
        this.nickName = parcel.readString();
        this.userId = parcel.readString();
        this.loginTime = parcel.readString();
        this.length = parcel.readString();
        this.isTutual = parcel.readInt();
        this.userImg = parcel.readString();
        this.avatar = parcel.readString();
    }

    @Override // java.lang.Comparable
    public int compareTo(IM_User iM_User) {
        this.liveState = TextUtils.isEmpty(this.liveState) ? "0" : this.liveState;
        iM_User.liveState = TextUtils.isEmpty(iM_User.liveState) ? "0" : iM_User.liveState;
        return iM_User.getLiveState().compareTo(this.liveState);
    }
}
