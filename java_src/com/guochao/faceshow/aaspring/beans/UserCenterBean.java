package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.guochao.faceshow.bean.UserBean;
import java.util.List;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class UserCenterBean implements h, Parcelable {
    public static final Parcelable.Creator<UserCenterBean> CREATOR = new Parcelable.Creator<UserCenterBean>() { // from class: com.guochao.faceshow.aaspring.beans.UserCenterBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserCenterBean createFromParcel(Parcel parcel) {
            return new UserCenterBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserCenterBean[] newArray(int i9) {
            return new UserCenterBean[i9];
        }
    };
    private String avatar;
    private long birthdayTime;
    private List<ContributionImgBean> contributionImg;
    private int diamond;
    private int fansNum;
    private int followNum;
    private int friendLikeNum;
    private List<DynamicBean> friendNewList;
    private Integer isLookMe;
    private int levelId;
    private int liveState;
    private int userAge;
    private String userAttentStatus;
    private String userCountryFlag;
    private int userId;
    private String userImg;
    private UserBean.UserMvpInfo userMvpInfo;
    private String userNickName;
    private int userSex;
    private Integer userSignIn;
    private String userSignature;
    private String userSmallImg;
    private UserVipData userVipMsg;
    private String vipContent;

    /* loaded from: classes3.dex */
    public static class ContributionImgBean implements Parcelable {
        public static final Parcelable.Creator<ContributionImgBean> CREATOR = new Parcelable.Creator<ContributionImgBean>() { // from class: com.guochao.faceshow.aaspring.beans.UserCenterBean.ContributionImgBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ContributionImgBean createFromParcel(Parcel parcel) {
                return new ContributionImgBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ContributionImgBean[] newArray(int i9) {
                return new ContributionImgBean[i9];
            }
        };
        private String gongxianImg;
        private double total;
        private int user_id;

        public ContributionImgBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getGongxianImg() {
            return this.gongxianImg;
        }

        public double getTotal() {
            return this.total;
        }

        public int getUser_id() {
            return this.user_id;
        }

        public void setGongxianImg(String str) {
            this.gongxianImg = str;
        }

        public void setTotal(double d10) {
            this.total = d10;
        }

        public void setUser_id(int i9) {
            this.user_id = i9;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeDouble(this.total);
            parcel.writeInt(this.user_id);
            parcel.writeString(this.gongxianImg);
        }

        protected ContributionImgBean(Parcel parcel) {
            this.total = parcel.readDouble();
            this.user_id = parcel.readInt();
            this.gongxianImg = parcel.readString();
        }
    }

    public UserCenterBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // p7.b
    public /* bridge */ /* synthetic */ int getAge() {
        return p7.a.a(this);
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return this.userImg;
    }

    public long getBirthdayTime() {
        return this.birthdayTime;
    }

    public List<ContributionImgBean> getContributionImg() {
        return this.contributionImg;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.userCountryFlag;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return String.valueOf(this.userId);
    }

    public int getDiamond() {
        return this.diamond;
    }

    public int getFansNum() {
        return this.fansNum;
    }

    public int getFollowNum() {
        return this.followNum;
    }

    public int getFriendLikeNum() {
        return this.friendLikeNum;
    }

    public List<DynamicBean> getFriendNewList() {
        return this.friendNewList;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return this.userSex;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    public int getLevelId() {
        return this.levelId;
    }

    public int getLiveState() {
        return this.liveState;
    }

    public Integer getLookMeNum() {
        return this.isLookMe;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public int getUserAge() {
        return this.userAge;
    }

    public String getUserAttentStatus() {
        return this.userAttentStatus;
    }

    public String getUserCountryFlag() {
        return this.userCountryFlag;
    }

    public int getUserId() {
        return this.userId;
    }

    public String getUserImg() {
        return this.userImg;
    }

    public UserBean.UserMvpInfo getUserMvpInfo() {
        return this.userMvpInfo;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    public String getUserNickName() {
        return this.userNickName;
    }

    public int getUserSex() {
        return this.userSex;
    }

    public Integer getUserSignIn() {
        return this.userSignIn;
    }

    public String getUserSignature() {
        return this.userSignature;
    }

    public String getUserSmallImg() {
        return this.userSmallImg;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public String getVipContent() {
        return this.vipContent;
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBirthdayTime(long j10) {
        this.birthdayTime = j10;
    }

    public void setContributionImg(List<ContributionImgBean> list) {
        this.contributionImg = list;
    }

    public void setDiamond(int i9) {
        this.diamond = i9;
    }

    public void setFansNum(int i9) {
        this.fansNum = i9;
    }

    public void setFollowNum(int i9) {
        this.followNum = i9;
    }

    public void setFriendLikeNum(int i9) {
        this.friendLikeNum = i9;
    }

    public void setFriendNewList(List<DynamicBean> list) {
        this.friendNewList = list;
    }

    public void setLevelId(int i9) {
        this.levelId = i9;
    }

    public void setLiveState(int i9) {
        this.liveState = i9;
    }

    public void setLookMeNum(Integer num) {
        this.isLookMe = num;
    }

    public void setUserAge(int i9) {
        this.userAge = i9;
    }

    public void setUserAttentStatus(String str) {
        this.userAttentStatus = str;
    }

    public void setUserCountryFlag(String str) {
        this.userCountryFlag = str;
    }

    public void setUserId(int i9) {
        this.userId = i9;
    }

    public void setUserImg(String str) {
        this.userImg = str;
    }

    public void setUserMvpInfo(UserBean.UserMvpInfo userMvpInfo) {
        this.userMvpInfo = userMvpInfo;
    }

    public void setUserNickName(String str) {
        this.userNickName = str;
    }

    public void setUserSex(int i9) {
        this.userSex = i9;
    }

    public void setUserSignIn(Integer num) {
        this.userSignIn = num;
    }

    public void setUserSignature(String str) {
        this.userSignature = str;
    }

    public void setUserSmallImg(String str) {
        this.userSmallImg = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVipContent(String str) {
        this.vipContent = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.userId);
        parcel.writeString(this.userNickName);
        parcel.writeString(this.userImg);
        parcel.writeInt(this.userAge);
        parcel.writeInt(this.userSex);
        parcel.writeString(this.userSignature);
        parcel.writeString(this.userCountryFlag);
        parcel.writeString(this.userAttentStatus);
        parcel.writeString(this.avatar);
        parcel.writeInt(this.liveState);
        parcel.writeInt(this.levelId);
        parcel.writeLong(this.birthdayTime);
        parcel.writeInt(this.followNum);
        parcel.writeInt(this.fansNum);
        parcel.writeTypedList(this.contributionImg);
        parcel.writeTypedList(this.friendNewList);
        parcel.writeInt(this.friendLikeNum);
        parcel.writeInt(this.diamond);
        parcel.writeString(this.userSmallImg);
        parcel.writeParcelable(this.userMvpInfo, i9);
    }

    protected UserCenterBean(Parcel parcel) {
        this.userId = parcel.readInt();
        this.userNickName = parcel.readString();
        this.userImg = parcel.readString();
        this.userAge = parcel.readInt();
        this.userSex = parcel.readInt();
        this.userSignature = parcel.readString();
        this.userCountryFlag = parcel.readString();
        this.userAttentStatus = parcel.readString();
        this.avatar = parcel.readString();
        this.liveState = parcel.readInt();
        this.levelId = parcel.readInt();
        this.birthdayTime = parcel.readLong();
        this.followNum = parcel.readInt();
        this.fansNum = parcel.readInt();
        this.contributionImg = parcel.createTypedArrayList(ContributionImgBean.CREATOR);
        this.friendNewList = parcel.createTypedArrayList(DynamicBean.CREATOR);
        this.friendLikeNum = parcel.readInt();
        this.diamond = parcel.readInt();
        this.userSmallImg = parcel.readString();
        this.userMvpInfo = (UserBean.UserMvpInfo) parcel.readParcelable(UserBean.UserMvpInfo.class.getClassLoader());
    }
}
