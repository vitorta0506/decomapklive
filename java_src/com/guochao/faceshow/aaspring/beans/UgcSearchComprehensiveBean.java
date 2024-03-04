package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.component.voiceliveroom.model.VoiceRoomInfoModel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class UgcSearchComprehensiveBean implements Parcelable {
    public static final Parcelable.Creator<UgcSearchComprehensiveBean> CREATOR = new Parcelable.Creator<UgcSearchComprehensiveBean>() { // from class: com.guochao.faceshow.aaspring.beans.UgcSearchComprehensiveBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcSearchComprehensiveBean createFromParcel(Parcel parcel) {
            return new UgcSearchComprehensiveBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UgcSearchComprehensiveBean[] newArray(int i9) {
            return new UgcSearchComprehensiveBean[i9];
        }
    };
    private String content;
    private String country;
    private String createTime;
    private int imageModel;
    private String img;
    private String introduce;
    private int isNew;
    private String mname;
    private String musicId;
    private String numbers;
    private String partakeTimes;
    private String placeName;
    private String searchType;
    private String topicId;
    private List<Topic> topicList;
    private String topicName;
    private int type;
    private String typeId;
    private String url;
    private String userId;
    private UserVipData userVipMsg;
    public VoiceRoomInfoModel voiceRoomInfoModel;

    /* loaded from: classes3.dex */
    public static class Topic {
        private String partakeTimes;
        private String topicId;
        private String topicName;
        private int type;

        public String getPartakeTimes() {
            return this.partakeTimes;
        }

        public String getTopicId() {
            return this.topicId;
        }

        public String getTopicName() {
            return this.topicName;
        }

        public int getType() {
            return this.type;
        }

        public void setPartakeTimes(String str) {
            this.partakeTimes = str;
        }

        public void setTopicId(String str) {
            this.topicId = str;
        }

        public void setTopicName(String str) {
            this.topicName = str;
        }

        public void setType(int i9) {
            this.type = i9;
        }
    }

    public UgcSearchComprehensiveBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getContent() {
        return this.content;
    }

    public String getCountry() {
        return this.country;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getImageModel() {
        return this.imageModel;
    }

    public String getImg() {
        return this.img;
    }

    public String getIntroduce() {
        return this.introduce;
    }

    public int getIsNew() {
        return this.isNew;
    }

    public String getMname() {
        return this.mname;
    }

    public String getMusicId() {
        return this.musicId;
    }

    public String getNumbers() {
        return this.numbers;
    }

    public String getPartakeTimes() {
        return this.partakeTimes;
    }

    public String getPlaceName() {
        return this.placeName;
    }

    public String getSearchType() {
        return this.searchType;
    }

    public String getTopicId() {
        return this.topicId;
    }

    public List<Topic> getTopicList() {
        return this.topicList;
    }

    public String getTopicName() {
        return this.topicName;
    }

    public int getType() {
        return this.type;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUserId() {
        return this.userId;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setImageModel(int i9) {
        this.imageModel = i9;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setIntroduce(String str) {
        this.introduce = str;
    }

    public void setIsNew(int i9) {
        this.isNew = i9;
    }

    public void setMname(String str) {
        this.mname = str;
    }

    public void setMusicId(String str) {
        this.musicId = str;
    }

    public void setNumbers(String str) {
        this.numbers = str;
    }

    public void setPartakeTimes(String str) {
        this.partakeTimes = str;
    }

    public void setPlaceName(String str) {
        this.placeName = str;
    }

    public void setSearchType(String str) {
        this.searchType = str;
    }

    public void setTopicId(String str) {
        this.topicId = str;
    }

    public void setTopicList(List<Topic> list) {
        this.topicList = list;
    }

    public void setTopicName(String str) {
        this.topicName = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.type);
        parcel.writeInt(this.imageModel);
        parcel.writeString(this.placeName);
        parcel.writeString(this.partakeTimes);
        parcel.writeString(this.topicName);
        parcel.writeString(this.musicId);
        parcel.writeString(this.country);
        parcel.writeString(this.img);
        parcel.writeString(this.createTime);
        parcel.writeString(this.introduce);
        parcel.writeString(this.numbers);
        parcel.writeString(this.typeId);
        parcel.writeString(this.mname);
        parcel.writeString(this.userId);
        parcel.writeString(this.url);
        parcel.writeString(this.searchType);
        parcel.writeString(this.content);
        parcel.writeString(this.topicId);
        parcel.writeInt(this.isNew);
        parcel.writeList(this.topicList);
    }

    protected UgcSearchComprehensiveBean(Parcel parcel) {
        this.type = parcel.readInt();
        this.imageModel = parcel.readInt();
        this.placeName = parcel.readString();
        this.partakeTimes = parcel.readString();
        this.topicName = parcel.readString();
        this.musicId = parcel.readString();
        this.country = parcel.readString();
        this.img = parcel.readString();
        this.createTime = parcel.readString();
        this.introduce = parcel.readString();
        this.numbers = parcel.readString();
        this.typeId = parcel.readString();
        this.mname = parcel.readString();
        this.userId = parcel.readString();
        this.url = parcel.readString();
        this.searchType = parcel.readString();
        this.content = parcel.readString();
        this.topicId = parcel.readString();
        this.isNew = parcel.readInt();
        ArrayList arrayList = new ArrayList();
        this.topicList = arrayList;
        parcel.readList(arrayList, Topic.class.getClassLoader());
    }
}
