package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.GsonGetter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class LiveGameBean implements Parcelable {
    public static final Parcelable.Creator<LiveGameBean> CREATOR = new Parcelable.Creator<LiveGameBean>() { // from class: com.guochao.faceshow.aaspring.beans.LiveGameBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveGameBean createFromParcel(Parcel parcel) {
            return new LiveGameBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveGameBean[] newArray(int i9) {
            return new LiveGameBean[i9];
        }
    };
    private int androidVersion;
    private int flag;
    private int gameCode;
    @SerializedName("imGroupId")
    private String gameGroupId;
    private long gameInfoId;
    private String h5PageUrl;
    private String h5Url;
    private String icon;
    private int isH5Page;
    private List<Integer> joinMoneyList;
    private List<Integer> joinNumList;
    private String name;
    private int openRoleType;
    private float percent;
    private int rate;
    private String shareUrl;
    private int status;
    private int sysRate;
    private long typeId;

    protected LiveGameBean(Parcel parcel) {
        this.percent = 1.0f;
        this.gameInfoId = parcel.readLong();
        this.name = parcel.readString();
        this.typeId = parcel.readLong();
        this.icon = parcel.readString();
        this.status = parcel.readInt();
        this.h5Url = parcel.readString();
        this.isH5Page = parcel.readInt();
        this.h5PageUrl = parcel.readString();
        this.gameCode = parcel.readInt();
        this.androidVersion = parcel.readInt();
        this.openRoleType = parcel.readInt();
        this.shareUrl = parcel.readString();
        this.percent = parcel.readFloat();
        this.flag = parcel.readInt();
        this.gameGroupId = parcel.readString();
        this.rate = parcel.readInt();
        this.sysRate = parcel.readInt();
    }

    public static LiveGameBean copyOf(LiveGameBean liveGameBean) {
        return (LiveGameBean) GsonGetter.getGson().fromJson(GsonGetter.getGson().toJson(liveGameBean), (Class<Object>) LiveGameBean.class);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getAndroidVersion() {
        return this.androidVersion;
    }

    public int getFlag() {
        return this.flag;
    }

    public int getGameCode() {
        return this.gameCode;
    }

    public String getGameGroupId() {
        return this.gameGroupId;
    }

    public long getGameInfoId() {
        return this.gameInfoId;
    }

    public String getH5PageUrl() {
        return this.h5PageUrl;
    }

    public String getH5Url() {
        return this.h5Url;
    }

    public String getIcon() {
        return this.icon;
    }

    public int getIsH5Page() {
        return this.isH5Page;
    }

    public List<Integer> getJoinMoneyList() {
        List<Integer> list = this.joinMoneyList;
        return list == null ? new ArrayList() : list;
    }

    public List<Integer> getJoinNumList() {
        List<Integer> list = this.joinNumList;
        return list == null ? new ArrayList() : list;
    }

    public String getName() {
        return this.name;
    }

    public int getOpenRoleType() {
        return this.openRoleType;
    }

    public float getPercent() {
        return this.percent;
    }

    public int getRate() {
        return this.rate;
    }

    public String getShareUrl() {
        return this.shareUrl;
    }

    public int getStatus() {
        return this.status;
    }

    public int getSysRate() {
        return this.sysRate;
    }

    public long getTypeId() {
        return this.typeId;
    }

    public void setAndroidVersion(int i9) {
        this.androidVersion = i9;
    }

    public void setFlag(int i9) {
        this.flag = i9;
    }

    public void setGameCode(int i9) {
        this.gameCode = i9;
    }

    public void setGameGroupId(String str) {
        this.gameGroupId = str;
    }

    public void setGameInfoId(long j10) {
        this.gameInfoId = j10;
    }

    public void setH5PageUrl(String str) {
        this.h5PageUrl = str;
    }

    public void setH5Url(String str) {
        this.h5Url = str;
    }

    public void setIcon(String str) {
        this.icon = str;
    }

    public void setIsH5Page(int i9) {
        this.isH5Page = i9;
    }

    public void setJoinMoneyList(List<Integer> list) {
        this.joinMoneyList = list;
    }

    public void setJoinNumList(List<Integer> list) {
        this.joinNumList = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setOpenRoleType(int i9) {
        this.openRoleType = i9;
    }

    public void setPercent(float f10) {
        this.percent = f10;
    }

    public void setRate(int i9) {
        this.rate = i9;
    }

    public void setShareUrl(String str) {
        this.shareUrl = str;
    }

    public void setStatus(int i9) {
        this.status = i9;
    }

    public void setSysRate(int i9) {
        this.sysRate = i9;
    }

    public void setTypeId(long j10) {
        this.typeId = j10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeLong(this.gameInfoId);
        parcel.writeString(this.name);
        parcel.writeLong(this.typeId);
        parcel.writeString(this.icon);
        parcel.writeInt(this.status);
        parcel.writeString(this.h5Url);
        parcel.writeInt(this.isH5Page);
        parcel.writeString(this.h5PageUrl);
        parcel.writeInt(this.gameCode);
        parcel.writeInt(this.androidVersion);
        parcel.writeInt(this.openRoleType);
        parcel.writeString(this.shareUrl);
        parcel.writeFloat(this.percent);
        parcel.writeInt(this.flag);
        parcel.writeString(this.gameGroupId);
        parcel.writeInt(this.rate);
        parcel.writeInt(this.sysRate);
    }

    public LiveGameBean() {
        this.percent = 1.0f;
    }
}
