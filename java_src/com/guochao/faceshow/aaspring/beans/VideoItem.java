package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.beans.UserPageBaseData;
import com.guochao.faceshow.bean.MyTopicAndName;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public class VideoItem implements Parcelable {
    public static final Parcelable.Creator<VideoItem> CREATOR = new Parcelable.Creator<VideoItem>() { // from class: com.guochao.faceshow.aaspring.beans.VideoItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VideoItem createFromParcel(Parcel parcel) {
            return new VideoItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VideoItem[] newArray(int i9) {
            return new VideoItem[i9];
        }
    };
    private int age;
    private String avatar;
    private String countryLogo;
    private String friend;
    private int heatNum;
    private String height;
    private int isAttention;
    private String isFeatured;
    private int isOfficial;
    private int isSource;
    private int isZan;
    private int liveId;
    private String liveImg;
    private String liveState;
    private int liveType;
    private int musicId;
    private String musicImg;
    private String musicName;
    private String musicUrl;
    private UserPageBaseData.OnlineInfo onlineData;
    private String preferentialLang;
    private int sex;
    private String shareNum;
    private String shortUrl;
    private boolean showExpand;
    private boolean showTranslate;
    private int topicId;
    private String topicImg;
    private String topicIntroduction;
    private String topicName;
    private String translateContent;
    private int type;
    private String typeId;
    private String typeName;
    private String ugcId;
    private CharSequence unTranslateContent;
    private String userId;
    private String userImg;
    private String userNickName;
    private UserVipData userVipMsg;
    private int videoBarrageSwitch;
    private int videoCollectionNum;
    private int videoCommentNum;
    private String videoCreateTime;
    private String videoId;
    private String videoImg;
    private String videoIntroductionContent;
    private String videoIntroductionJson;
    private int videoPlayNum;
    private String videoUrl;
    private String width;

    protected VideoItem(Parcel parcel) {
        this.videoId = parcel.readString();
        this.topicId = parcel.readInt();
        this.typeId = parcel.readString();
        this.userId = parcel.readString();
        this.musicId = parcel.readInt();
        this.videoCreateTime = parcel.readString();
        this.videoUrl = parcel.readString();
        this.videoCollectionNum = parcel.readInt();
        this.videoImg = parcel.readString();
        this.videoIntroductionContent = parcel.readString();
        this.videoIntroductionJson = parcel.readString();
        this.userNickName = parcel.readString();
        this.userImg = parcel.readString();
        this.topicName = parcel.readString();
        this.topicImg = parcel.readString();
        this.typeName = parcel.readString();
        this.topicIntroduction = parcel.readString();
        this.musicName = parcel.readString();
        this.musicUrl = parcel.readString();
        this.musicImg = parcel.readString();
        this.isZan = parcel.readInt();
        this.videoCommentNum = parcel.readInt();
        this.friend = parcel.readString();
        this.isAttention = parcel.readInt();
        this.isSource = parcel.readInt();
        this.videoPlayNum = parcel.readInt();
        this.type = parcel.readInt();
        this.heatNum = parcel.readInt();
        this.shortUrl = parcel.readString();
        this.width = parcel.readString();
        this.height = parcel.readString();
        this.avatar = parcel.readString();
        this.isFeatured = parcel.readString();
        this.isOfficial = parcel.readInt();
        this.shareNum = parcel.readString();
        this.liveState = parcel.readString();
        this.videoBarrageSwitch = parcel.readInt();
        this.translateContent = parcel.readString();
        this.showExpand = parcel.readByte() != 0;
        this.showTranslate = parcel.readByte() != 0;
        this.preferentialLang = parcel.readString();
        this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        this.liveId = parcel.readInt();
        this.liveImg = parcel.readString();
        this.liveType = parcel.readInt();
        this.sex = parcel.readInt();
        this.age = parcel.readInt();
        this.countryLogo = parcel.readString();
        this.ugcId = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAge() {
        return this.age;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getCountryLogo() {
        return this.countryLogo;
    }

    public String getFriend() {
        return this.friend;
    }

    public int getHeatNum() {
        return this.heatNum;
    }

    public String getHeight() {
        return this.height;
    }

    public int getIsAttention() {
        return this.isAttention;
    }

    public String getIsFeatured() {
        return this.isFeatured;
    }

    public int getIsOfficial() {
        return this.isOfficial;
    }

    public int getIsSource() {
        return this.isSource;
    }

    public int getIsZan() {
        return this.isZan;
    }

    public int getLiveId() {
        return this.liveId;
    }

    public String getLiveImg() {
        return this.liveImg;
    }

    public String getLiveState() {
        return this.liveState;
    }

    public int getLiveType() {
        return this.liveType;
    }

    public int getMusicId() {
        return this.musicId;
    }

    public String getMusicImg() {
        return this.musicImg;
    }

    public String getMusicName() {
        return this.musicName;
    }

    public String getMusicUrl() {
        return this.musicUrl;
    }

    public UserPageBaseData.OnlineInfo getPositionMap() {
        return this.onlineData;
    }

    public String getPreferentialLang() {
        return this.preferentialLang;
    }

    public int getSex() {
        return this.sex;
    }

    public String getShareNum() {
        return this.shareNum;
    }

    public String getShortUrl() {
        return this.shortUrl;
    }

    public String getTargetLang() {
        return this.preferentialLang;
    }

    public int getTopicId() {
        return this.topicId;
    }

    public String getTopicImg() {
        return this.topicImg;
    }

    public String getTopicIntroduction() {
        return this.topicIntroduction;
    }

    public String getTopicName() {
        return this.topicName;
    }

    public String getTranslateContent() {
        return this.translateContent;
    }

    public int getType() {
        return this.type;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public String getUgcId() {
        return this.ugcId;
    }

    public CharSequence getUnTranslateContent() {
        return this.unTranslateContent;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserImg() {
        return this.userImg;
    }

    public String getUserNickName() {
        return this.userNickName;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public int getVideoBarrageSwitch() {
        return this.videoBarrageSwitch;
    }

    public int getVideoCollectionNum() {
        return this.videoCollectionNum;
    }

    public int getVideoCommentNum() {
        return this.videoCommentNum;
    }

    public String getVideoCreateTime() {
        return this.videoCreateTime;
    }

    public StringBuilder getVideoDesc() {
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(getVideoIntroductionJson())) {
            Iterator it = ((ArrayList) GsonGetter.getGson().fromJson(getVideoIntroductionJson(), new TypeToken<List<MyTopicAndName>>() { // from class: com.guochao.faceshow.aaspring.beans.VideoItem.2
            }.getType())).iterator();
            while (it.hasNext()) {
                MyTopicAndName myTopicAndName = (MyTopicAndName) it.next();
                if (myTopicAndName != null) {
                    sb2.append(myTopicAndName.content);
                }
            }
        } else if (!TextUtils.isEmpty(getVideoIntroductionContent())) {
            sb2.append(getVideoIntroductionContent());
        }
        return sb2;
    }

    public String getVideoId() {
        return this.videoId;
    }

    public String getVideoImg() {
        return this.videoImg;
    }

    public String getVideoIntroductionContent() {
        String str = this.videoIntroductionContent;
        return str == null ? "" : str;
    }

    public String getVideoIntroductionJson() {
        return this.videoIntroductionJson;
    }

    public int getVideoPlayNum() {
        return this.videoPlayNum;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public String getWidth() {
        return this.width;
    }

    public boolean isShowExpand() {
        return this.showExpand;
    }

    public boolean isShowTranslate() {
        return this.showTranslate;
    }

    public void setAge(int i9) {
        this.age = i9;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCountryLogo(String str) {
        this.countryLogo = str;
    }

    public void setFriend(String str) {
        this.friend = str;
    }

    public void setHeatNum(int i9) {
        this.heatNum = i9;
    }

    public void setHeight(String str) {
        this.height = str;
    }

    public void setIsAttention(int i9) {
        this.isAttention = i9;
    }

    public void setIsFeatured(String str) {
        this.isFeatured = str;
    }

    public void setIsOfficial(int i9) {
        this.isOfficial = i9;
    }

    public void setIsSource(int i9) {
        this.isSource = i9;
    }

    public void setIsZan(int i9) {
        this.isZan = i9;
    }

    public void setLiveId(int i9) {
        this.liveId = i9;
    }

    public void setLiveImg(String str) {
        this.liveImg = str;
    }

    public void setLiveState(String str) {
        this.liveState = str;
    }

    public void setLiveType(int i9) {
        this.liveType = i9;
    }

    public void setMusicId(int i9) {
        this.musicId = i9;
    }

    public void setMusicImg(String str) {
        this.musicImg = str;
    }

    public void setMusicName(String str) {
        this.musicName = str;
    }

    public void setMusicUrl(String str) {
        this.musicUrl = str;
    }

    public void setPositionMap(UserPageBaseData.OnlineInfo onlineInfo) {
        this.onlineData = onlineInfo;
    }

    public void setPreferentialLang(String str) {
        this.preferentialLang = str;
    }

    public void setSex(int i9) {
        this.sex = i9;
    }

    public void setShareNum(String str) {
        this.shareNum = str;
    }

    public void setShortUrl(String str) {
        this.shortUrl = str;
    }

    public void setShowExpand(boolean z10) {
        this.showExpand = z10;
    }

    public void setShowTranslate(boolean z10) {
        this.showTranslate = z10;
    }

    public void setTargetLang(String str) {
        this.preferentialLang = str;
    }

    public void setTopicId(int i9) {
        this.topicId = i9;
    }

    public void setTopicImg(String str) {
        this.topicImg = str;
    }

    public void setTopicIntroduction(String str) {
        this.topicIntroduction = str;
    }

    public void setTopicName(String str) {
        this.topicName = str;
    }

    public void setTranslateContent(String str) {
        this.translateContent = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    public void setTypeName(String str) {
        this.typeName = str;
    }

    public void setUgcId(String str) {
        this.ugcId = str;
    }

    public void setUnTranslateContent(CharSequence charSequence) {
        this.unTranslateContent = charSequence;
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

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVideoBarrageSwitch(int i9) {
        this.videoBarrageSwitch = i9;
    }

    public void setVideoCollectionNum(int i9) {
        this.videoCollectionNum = i9;
    }

    public void setVideoCommentNum(int i9) {
        this.videoCommentNum = i9;
    }

    public void setVideoCreateTime(String str) {
        this.videoCreateTime = str;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }

    public void setVideoImg(String str) {
        this.videoImg = str;
    }

    public void setVideoIntroductionContent(String str) {
        this.videoIntroductionContent = str;
    }

    public void setVideoIntroductionJson(String str) {
        this.videoIntroductionJson = str;
    }

    public void setVideoPlayNum(int i9) {
        this.videoPlayNum = i9;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public void setWidth(String str) {
        this.width = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.videoId);
        parcel.writeInt(this.topicId);
        parcel.writeString(this.typeId);
        parcel.writeString(this.userId);
        parcel.writeInt(this.musicId);
        parcel.writeString(this.videoCreateTime);
        parcel.writeString(this.videoUrl);
        parcel.writeInt(this.videoCollectionNum);
        parcel.writeString(this.videoImg);
        parcel.writeString(this.videoIntroductionContent);
        parcel.writeString(this.videoIntroductionJson);
        parcel.writeString(this.userNickName);
        parcel.writeString(this.userImg);
        parcel.writeString(this.topicName);
        parcel.writeString(this.topicImg);
        parcel.writeString(this.typeName);
        parcel.writeString(this.topicIntroduction);
        parcel.writeString(this.musicName);
        parcel.writeString(this.musicUrl);
        parcel.writeString(this.musicImg);
        parcel.writeInt(this.isZan);
        parcel.writeInt(this.videoCommentNum);
        parcel.writeString(this.friend);
        parcel.writeInt(this.isAttention);
        parcel.writeInt(this.isSource);
        parcel.writeInt(this.videoPlayNum);
        parcel.writeInt(this.type);
        parcel.writeInt(this.heatNum);
        parcel.writeString(this.shortUrl);
        parcel.writeString(this.width);
        parcel.writeString(this.height);
        parcel.writeString(this.avatar);
        parcel.writeString(this.isFeatured);
        parcel.writeInt(this.isOfficial);
        parcel.writeString(this.shareNum);
        parcel.writeString(this.liveState);
        parcel.writeInt(this.videoBarrageSwitch);
        parcel.writeString(this.translateContent);
        parcel.writeByte(this.showExpand ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.showTranslate ? (byte) 1 : (byte) 0);
        parcel.writeString(this.preferentialLang);
        parcel.writeParcelable(this.userVipMsg, i9);
        parcel.writeInt(this.liveId);
        parcel.writeString(this.liveImg);
        parcel.writeInt(this.liveType);
        parcel.writeInt(this.sex);
        parcel.writeInt(this.age);
        parcel.writeString(this.countryLogo);
        parcel.writeString(this.ugcId);
    }

    public VideoItem() {
    }
}
