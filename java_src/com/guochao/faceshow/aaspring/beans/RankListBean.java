package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import p7.c;
/* loaded from: classes3.dex */
public class RankListBean implements Parcelable {
    public static final Parcelable.Creator<RankListBean> CREATOR = new Parcelable.Creator<RankListBean>() { // from class: com.guochao.faceshow.aaspring.beans.RankListBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RankListBean createFromParcel(Parcel parcel) {
            return new RankListBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RankListBean[] newArray(int i9) {
            return new RankListBean[i9];
        }
    };
    private RankRowsBean rankInfo;
    private List<RankRowsBean> rows;
    private int total;

    /* loaded from: classes3.dex */
    public static class RankRowsBean implements Parcelable, c {
        public static final Parcelable.Creator<RankRowsBean> CREATOR = new Parcelable.Creator<RankRowsBean>() { // from class: com.guochao.faceshow.aaspring.beans.RankListBean.RankRowsBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RankRowsBean createFromParcel(Parcel parcel) {
                return new RankRowsBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RankRowsBean[] newArray(int i9) {
                return new RankRowsBean[i9];
            }
        };
        private int charmValue;
        private String country;
        private String flvUrl;
        private String groupId;
        private int isAttention;
        private int isLive;
        private int isVip;
        private String levelName;
        private String liveId;
        private String liveImg;
        private String liveType;
        private String logo;
        private String nickName;
        private int no;
        private String userId;
        private String userImg;
        private int userSex;
        private UserVipData userVipMsg;
        private String value;

        public RankRowsBean() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // p7.c
        public String getAvatarUrl() {
            return this.userImg;
        }

        public int getCharmValue() {
            return this.charmValue;
        }

        public String getCountry() {
            return this.country;
        }

        public String getFlvUrl() {
            return this.flvUrl;
        }

        @Override // p7.c
        public int getGender() {
            return this.userSex;
        }

        public String getGroupId() {
            return this.groupId;
        }

        public int getIsAttention() {
            return this.isAttention;
        }

        public int getIsLive() {
            return this.isLive;
        }

        public int getIsVip() {
            return this.isVip;
        }

        public String getLevelName() {
            return this.levelName;
        }

        public String getLiveId() {
            return this.liveId;
        }

        public String getLiveImg() {
            return this.liveImg;
        }

        public String getLiveType() {
            return this.liveType;
        }

        public String getLogo() {
            return this.logo;
        }

        public String getNickName() {
            return this.nickName;
        }

        public int getNo() {
            return this.no;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getUserImg() {
            return this.userImg;
        }

        public int getUserSex() {
            return this.userSex;
        }

        public UserVipData getUserVipMsg() {
            return this.userVipMsg;
        }

        public String getValue() {
            return this.value;
        }

        public void setCharmValue(int i9) {
            this.charmValue = i9;
        }

        public void setCountry(String str) {
            this.country = str;
        }

        public void setFlvUrl(String str) {
            this.flvUrl = str;
        }

        public void setGroupId(String str) {
            this.groupId = str;
        }

        public void setIsAttention(int i9) {
            this.isAttention = i9;
        }

        public void setIsLive(int i9) {
            this.isLive = i9;
        }

        public void setIsVip(int i9) {
            this.isVip = i9;
        }

        public void setLevelName(String str) {
            this.levelName = str;
        }

        public void setLiveId(String str) {
            this.liveId = str;
        }

        public void setLiveImg(String str) {
            this.liveImg = str;
        }

        public void setLiveType(String str) {
            this.liveType = str;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setNo(int i9) {
            this.no = i9;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUserImg(String str) {
            this.userImg = str;
        }

        public void setUserSex(int i9) {
            this.userSex = i9;
        }

        public void setUserVipMsg(UserVipData userVipData) {
            this.userVipMsg = userVipData;
        }

        public void setValue(String str) {
            this.value = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.isAttention);
            parcel.writeInt(this.no);
            parcel.writeString(this.country);
            parcel.writeString(this.userImg);
            parcel.writeInt(this.isLive);
            parcel.writeString(this.nickName);
            parcel.writeString(this.logo);
            parcel.writeString(this.levelName);
            parcel.writeInt(this.charmValue);
            parcel.writeString(this.userId);
            parcel.writeString(this.value);
            parcel.writeInt(this.isVip);
            parcel.writeString(this.flvUrl);
            parcel.writeString(this.groupId);
            parcel.writeString(this.liveId);
            parcel.writeString(this.liveType);
            parcel.writeInt(this.userSex);
            parcel.writeString(this.liveImg);
            parcel.writeParcelable(this.userVipMsg, i9);
        }

        protected RankRowsBean(Parcel parcel) {
            this.isAttention = parcel.readInt();
            this.no = parcel.readInt();
            this.country = parcel.readString();
            this.userImg = parcel.readString();
            this.isLive = parcel.readInt();
            this.nickName = parcel.readString();
            this.logo = parcel.readString();
            this.levelName = parcel.readString();
            this.charmValue = parcel.readInt();
            this.userId = parcel.readString();
            this.value = parcel.readString();
            this.isVip = parcel.readInt();
            this.flvUrl = parcel.readString();
            this.groupId = parcel.readString();
            this.liveId = parcel.readString();
            this.liveType = parcel.readString();
            this.userSex = parcel.readInt();
            this.liveImg = parcel.readString();
            this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        }
    }

    public RankListBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RankRowsBean getRankInfo() {
        return this.rankInfo;
    }

    public List<RankRowsBean> getRows() {
        return this.rows;
    }

    public int getTotal() {
        return this.total;
    }

    public void setRankInfo(RankRowsBean rankRowsBean) {
        this.rankInfo = rankRowsBean;
    }

    public void setRows(List<RankRowsBean> list) {
        this.rows = list;
    }

    public void setTotal(int i9) {
        this.total = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.total);
        parcel.writeParcelable(this.rankInfo, i9);
        parcel.writeTypedList(this.rows);
    }

    protected RankListBean(Parcel parcel) {
        this.total = parcel.readInt();
        this.rankInfo = (RankRowsBean) parcel.readParcelable(RankRowsBean.class.getClassLoader());
        this.rows = parcel.createTypedArrayList(RankRowsBean.CREATOR);
    }
}
