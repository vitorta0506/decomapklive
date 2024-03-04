package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.bean.UserBean;
import java.util.ArrayList;
import java.util.List;
import p7.g;
import p7.h;
import p7.i;
/* loaded from: classes3.dex */
public class DynamicBean implements h, Parcelable, Comparable<DynamicBean>, i {
    public static final Parcelable.Creator<DynamicBean> CREATOR = new Parcelable.Creator<DynamicBean>() { // from class: com.guochao.faceshow.aaspring.beans.DynamicBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DynamicBean createFromParcel(Parcel parcel) {
            return new DynamicBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DynamicBean[] newArray(int i9) {
            return new DynamicBean[i9];
        }
    };
    public static final int SOURCE_DYNAMIC = 0;
    public static final int SOURCE_LIVE = 1;
    public static final int SOURCE_VIDEO = 2;
    public static final int TYPE_GIF = 3;
    public static final int TYPE_LIVE = 4;
    public static final int TYPE_MULTI_IMG = 1;
    public static final int TYPE_VIDEO = 2;
    private String address;
    private String avatar;
    private String checkMan;
    private String checkTime;
    private String city;
    private int commentNum;
    private String content;
    private String country;
    private String county;
    private String createTime;
    private long createTimeStamp;
    private String deleteTime;
    private String distance;
    private int friendId;
    private int hasRetryTimes;
    private int height;
    private String img;
    private String infoId;
    private List<String> invisibleList;
    private int isCheck;
    private int isComment;
    private int isDelete;
    private int isLike;
    private int isNearbySeat;
    private boolean isPublishable;
    private int isShowSeat;
    private int isTop;
    private String latitude;
    private int levelId;
    private int likeNum;
    private List<String> likeUserImgList;
    private int liveId;
    private String liveImg;
    private int liveState;
    private int liveType;
    private String longitude;
    @SerializedName(alternate = {"fileList"}, value = "imgList")
    private ArrayList<DynamicFile> mDynamicFile;
    private UserBean.UserMvpInfo mvpUserInfoResult;
    @SerializedName("userNickName")
    private String nickName;
    private String preferentialLang;
    private String province;
    private int publishStatus;
    private int ringFrom;
    private int seatFrom;
    private int shield;
    private boolean showTranslate;
    private int sync;
    private String translateContent;
    private int type;
    private String url;
    private int userAge;
    private int userAttentStatus;
    private String userCountryFlag;
    private String userId;
    private String userImg;
    private int userSex;
    private UserVipData userVipMsg;
    private int uuid;
    private String videoId;
    private int width;
    private boolean isBlacked = false;
    private boolean expand = false;

    public DynamicBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        DynamicBean dynamicBean;
        boolean z10;
        boolean z11;
        if (obj != null && (obj instanceof DynamicBean) && (z10 = this.isPublishable) == (z11 = (dynamicBean = (DynamicBean) obj).isPublishable)) {
            return (z10 && z11) ? this.uuid == dynamicBean.uuid : this.friendId == dynamicBean.friendId;
        }
        return false;
    }

    public String getAddress() {
        return this.address;
    }

    @Override // p7.b
    public int getAge() {
        return getUserAge();
    }

    public String getAvatar() {
        return this.avatar;
    }

    @Override // p7.h, p7.c
    public String getAvatarUrl() {
        return getUserImg();
    }

    public String getCheckMan() {
        return this.checkMan;
    }

    public String getCheckTime() {
        return this.checkTime;
    }

    public String getCity() {
        return this.city;
    }

    public int getCommentNum() {
        return this.commentNum;
    }

    public String getContent() {
        return this.content;
    }

    public String getCountry() {
        return this.country;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return this.userCountryFlag;
    }

    public String getCounty() {
        return this.county;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public long getCreateTimeStamp() {
        return this.createTimeStamp;
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return getUserId();
    }

    public String getDeleteTime() {
        return this.deleteTime;
    }

    public String getDistance() {
        return this.distance;
    }

    public ArrayList<DynamicFile> getDynamicFile() {
        return this.mDynamicFile;
    }

    public int getFriendId() {
        return this.friendId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        return getUserSex();
    }

    public int getHasRetryTimes() {
        return this.hasRetryTimes;
    }

    public int getHeight() {
        return this.height;
    }

    public String getImg() {
        return this.img;
    }

    public String getInfoId() {
        return this.infoId;
    }

    public List<String> getInvisibleList() {
        return this.invisibleList;
    }

    public int getIsCheck() {
        return this.isCheck;
    }

    public int getIsComment() {
        return this.isComment;
    }

    public int getIsDelete() {
        return this.isDelete;
    }

    public int getIsLike() {
        return this.isLike;
    }

    public int getIsNearbySeat() {
        return this.isNearbySeat;
    }

    public int getIsShowSeat() {
        return this.isShowSeat;
    }

    public int getIsTop() {
        return this.isTop;
    }

    public int getItemViewType() {
        if (this.ringFrom == 1) {
            return 4;
        }
        ArrayList<DynamicFile> arrayList = this.mDynamicFile;
        if (arrayList == null) {
            return 0;
        }
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            DynamicFile dynamicFile = this.mDynamicFile.get(i9);
            if (dynamicFile.getFileUrl() != null && dynamicFile.getType() == 2) {
                setWidth(dynamicFile.getWidth());
                setUrl(dynamicFile.getFileUrl());
                setImg(dynamicFile.getFileSmallUrl());
                setHeight(dynamicFile.getHeight());
                return 2;
            }
        }
        return size > 0 ? 1 : 0;
    }

    public String getLatitude() {
        return this.latitude;
    }

    @Override // p7.e
    public int getLevel() {
        return getLevelId();
    }

    public int getLevelId() {
        return this.levelId;
    }

    public int getLikeNum() {
        return this.likeNum;
    }

    public List<String> getLikeUserImgList() {
        return this.likeUserImgList;
    }

    public int getLiveId() {
        return this.liveId;
    }

    public String getLiveImg() {
        return this.liveImg;
    }

    public int getLiveState() {
        return this.liveState;
    }

    public int getLiveType() {
        return this.liveType;
    }

    public String getLongitude() {
        return this.longitude;
    }

    @Override // p7.h
    public String getMVPUrl() {
        UserBean.UserMvpInfo userMvpInfo = this.mvpUserInfoResult;
        return userMvpInfo == null ? "" : userMvpInfo.mvpUrl;
    }

    public UserBean.UserMvpInfo getMvpUserInfoResult() {
        return this.mvpUserInfoResult;
    }

    public String getNickName() {
        return this.nickName;
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public String getProvince() {
        return this.province;
    }

    public int getPublishStatus() {
        return this.publishStatus;
    }

    public int getRingFrom() {
        return this.ringFrom;
    }

    public int getSeatFrom() {
        return this.seatFrom;
    }

    public int getShield() {
        return this.shield;
    }

    public int getSync() {
        return this.sync;
    }

    public String getTargetLang() {
        return this.preferentialLang;
    }

    public String getTranslateContent() {
        return this.translateContent;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public int getUserAge() {
        return this.userAge;
    }

    public int getUserAttentStatus() {
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

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    public int getUserSex() {
        return this.userSex;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public int getUuid() {
        return this.uuid;
    }

    public String getVideoId() {
        return this.videoId;
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isBlacked() {
        return this.isBlacked;
    }

    public boolean isExpand() {
        return this.expand;
    }

    public boolean isPublishable() {
        return this.isPublishable;
    }

    public boolean isShowTranslate() {
        return this.showTranslate;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBlacked(boolean z10) {
        this.isBlacked = z10;
    }

    public void setCheckMan(String str) {
        this.checkMan = str;
    }

    public void setCheckTime(String str) {
        this.checkTime = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCommentNum(int i9) {
        this.commentNum = i9;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCounty(String str) {
        this.county = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setCreateTimeStamp(long j10) {
        this.createTimeStamp = j10;
    }

    public void setDeleteTime(String str) {
        this.deleteTime = str;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public void setDynamicFile(ArrayList<DynamicFile> arrayList) {
        this.mDynamicFile = arrayList;
    }

    public void setExpand(boolean z10) {
        this.expand = z10;
    }

    public void setFriendId(int i9) {
        this.friendId = i9;
    }

    public void setHasRetryTimes(int i9) {
        this.hasRetryTimes = i9;
    }

    public void setHeight(int i9) {
        this.height = i9;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setInfoId(String str) {
        this.infoId = str;
    }

    public void setInvisibleList(List<String> list) {
        this.invisibleList = list;
    }

    public void setIsCheck(int i9) {
        this.isCheck = i9;
    }

    public void setIsComment(int i9) {
        this.isComment = i9;
    }

    public void setIsDelete(int i9) {
        this.isDelete = i9;
    }

    public void setIsLike(int i9) {
        this.isLike = i9;
    }

    public void setIsNearbySeat(int i9) {
        this.isNearbySeat = i9;
    }

    public void setIsShowSeat(int i9) {
        this.isShowSeat = i9;
    }

    public void setIsTop(int i9) {
        this.isTop = i9;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public void setLevelId(int i9) {
        this.levelId = i9;
    }

    public void setLikeNum(int i9) {
        this.likeNum = i9;
    }

    public void setLikeUserImgList(List<String> list) {
        this.likeUserImgList = list;
    }

    public void setLiveId(int i9) {
        this.liveId = i9;
    }

    public void setLiveImg(String str) {
        this.liveImg = str;
    }

    public void setLiveState(int i9) {
        this.liveState = i9;
    }

    public void setLiveType(int i9) {
        this.liveType = i9;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public void setMvpUserInfoResult(UserBean.UserMvpInfo userMvpInfo) {
        this.mvpUserInfoResult = userMvpInfo;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public void setPublishStatus(int i9) {
        this.publishStatus = i9;
    }

    public void setPublishable(boolean z10) {
        this.isPublishable = z10;
    }

    public void setRingFrom(int i9) {
        this.ringFrom = i9;
    }

    public void setSeatFrom(int i9) {
        this.seatFrom = i9;
    }

    public void setShield(int i9) {
        this.shield = i9;
    }

    public void setShowTranslate(boolean z10) {
        this.showTranslate = z10;
    }

    public void setSync(int i9) {
        this.sync = i9;
    }

    public void setTargetLang(String str) {
        this.preferentialLang = str;
    }

    public void setTranslateContent(String str) {
        this.translateContent = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUserAge(int i9) {
        this.userAge = i9;
    }

    public void setUserAttentStatus(int i9) {
        this.userAttentStatus = i9;
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

    public void setUserSex(int i9) {
        this.userSex = i9;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setUuid(int i9) {
        this.uuid = i9;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }

    public void setWidth(int i9) {
        this.width = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.userImg);
        parcel.writeString(this.address);
        parcel.writeInt(this.friendId);
        parcel.writeString(this.createTime);
        parcel.writeString(this.nickName);
        parcel.writeString(this.userCountryFlag);
        parcel.writeString(this.userId);
        parcel.writeInt(this.likeNum);
        parcel.writeInt(this.isLike);
        parcel.writeString(this.content);
        parcel.writeInt(this.type);
        parcel.writeInt(this.commentNum);
        parcel.writeString(this.videoId);
        parcel.writeInt(this.userSex);
        parcel.writeInt(this.levelId);
        parcel.writeTypedList(this.mDynamicFile);
        parcel.writeInt(this.isComment);
        parcel.writeInt(this.shield);
        parcel.writeInt(this.seatFrom);
        parcel.writeInt(this.userAttentStatus);
        parcel.writeString(this.avatar);
        parcel.writeByte(this.isPublishable ? (byte) 1 : (byte) 0);
        parcel.writeString(this.img);
        parcel.writeInt(this.isCheck);
        parcel.writeString(this.checkTime);
        parcel.writeString(this.checkMan);
        parcel.writeInt(this.sync);
        parcel.writeStringList(this.invisibleList);
        parcel.writeString(this.longitude);
        parcel.writeString(this.latitude);
        parcel.writeInt(this.isShowSeat);
        parcel.writeString(this.province);
        parcel.writeString(this.city);
        parcel.writeString(this.county);
        parcel.writeString(this.country);
        parcel.writeInt(this.isNearbySeat);
        parcel.writeInt(this.isDelete);
        parcel.writeString(this.deleteTime);
        parcel.writeInt(this.ringFrom);
        parcel.writeString(this.infoId);
        parcel.writeInt(this.isTop);
        parcel.writeInt(this.liveState);
        parcel.writeInt(this.publishStatus);
        parcel.writeString(this.translateContent);
    }

    @Override // java.lang.Comparable
    public int compareTo(DynamicBean dynamicBean) {
        return dynamicBean.friendId - this.friendId;
    }

    protected DynamicBean(Parcel parcel) {
        this.userImg = parcel.readString();
        this.address = parcel.readString();
        this.friendId = parcel.readInt();
        this.createTime = parcel.readString();
        this.nickName = parcel.readString();
        this.userCountryFlag = parcel.readString();
        this.userId = parcel.readString();
        this.likeNum = parcel.readInt();
        this.isLike = parcel.readInt();
        this.content = parcel.readString();
        this.type = parcel.readInt();
        this.commentNum = parcel.readInt();
        this.videoId = parcel.readString();
        this.userSex = parcel.readInt();
        this.levelId = parcel.readInt();
        this.mDynamicFile = parcel.createTypedArrayList(DynamicFile.CREATOR);
        this.isComment = parcel.readInt();
        this.shield = parcel.readInt();
        this.seatFrom = parcel.readInt();
        this.userAttentStatus = parcel.readInt();
        this.avatar = parcel.readString();
        this.isPublishable = parcel.readByte() != 0;
        this.img = parcel.readString();
        this.isCheck = parcel.readInt();
        this.checkTime = parcel.readString();
        this.checkMan = parcel.readString();
        this.sync = parcel.readInt();
        this.invisibleList = parcel.createStringArrayList();
        this.longitude = parcel.readString();
        this.latitude = parcel.readString();
        this.isShowSeat = parcel.readInt();
        this.province = parcel.readString();
        this.city = parcel.readString();
        this.county = parcel.readString();
        this.country = parcel.readString();
        this.isNearbySeat = parcel.readInt();
        this.isDelete = parcel.readInt();
        this.deleteTime = parcel.readString();
        this.ringFrom = parcel.readInt();
        this.infoId = parcel.readString();
        this.isTop = parcel.readInt();
        this.liveState = parcel.readInt();
        this.publishStatus = parcel.readInt();
        this.translateContent = parcel.readString();
    }
}
