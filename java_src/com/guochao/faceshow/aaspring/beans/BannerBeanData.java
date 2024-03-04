package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class BannerBeanData implements Parcelable {
    public static final Parcelable.Creator<BannerBeanData> CREATOR = new Parcelable.Creator<BannerBeanData>() { // from class: com.guochao.faceshow.aaspring.beans.BannerBeanData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BannerBeanData createFromParcel(Parcel parcel) {
            return new BannerBeanData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BannerBeanData[] newArray(int i9) {
            return new BannerBeanData[i9];
        }
    };
    private String bannerId;
    private String bannerName;
    private Integer belongLang;
    private String endTime;
    private String fileType;
    private String fileUrl;
    private String modelType;
    private String posId;
    private String schemeData;
    private String schemeId;
    private String schemeName;
    private String schemeType;
    private String schemeUrl;
    private String showTime;
    private String startTime;

    protected BannerBeanData(Parcel parcel) {
        this.bannerId = parcel.readString();
        this.schemeId = parcel.readString();
        this.bannerName = parcel.readString();
        this.posId = parcel.readString();
        this.startTime = parcel.readString();
        this.endTime = parcel.readString();
        this.showTime = parcel.readString();
        this.fileUrl = parcel.readString();
        this.fileType = parcel.readString();
        this.schemeName = parcel.readString();
        this.schemeType = parcel.readString();
        this.modelType = parcel.readString();
        this.schemeUrl = parcel.readString();
        this.schemeData = parcel.readString();
        if (parcel.readByte() == 0) {
            this.belongLang = null;
        } else {
            this.belongLang = Integer.valueOf(parcel.readInt());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getBannerId() {
        return this.bannerId;
    }

    public String getBannerName() {
        return this.bannerName;
    }

    public Integer getBelongLang() {
        return this.belongLang;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public String getFileType() {
        return this.fileType;
    }

    public String getFileUrl() {
        return this.fileUrl;
    }

    public String getModelType() {
        return this.modelType;
    }

    public String getPosId() {
        return this.posId;
    }

    public String getSchemeData() {
        return this.schemeData;
    }

    public String getSchemeId() {
        return this.schemeId;
    }

    public String getSchemeName() {
        return this.schemeName;
    }

    public String getSchemeType() {
        return this.schemeType;
    }

    public String getSchemeUrl() {
        return this.schemeUrl;
    }

    public String getShowTime() {
        return this.showTime;
    }

    public String getStartTime() {
        return this.startTime;
    }

    public void setBannerId(String str) {
        this.bannerId = str;
    }

    public void setBannerName(String str) {
        this.bannerName = str;
    }

    public void setBelongLang(Integer num) {
        this.belongLang = num;
    }

    public void setEndTime(String str) {
        this.endTime = str;
    }

    public void setFileType(String str) {
        this.fileType = str;
    }

    public void setFileUrl(String str) {
        this.fileUrl = str;
    }

    public void setModelType(String str) {
        this.modelType = str;
    }

    public void setPosId(String str) {
        this.posId = str;
    }

    public void setSchemeData(String str) {
        this.schemeData = str;
    }

    public void setSchemeId(String str) {
        this.schemeId = str;
    }

    public void setSchemeName(String str) {
        this.schemeName = str;
    }

    public void setSchemeType(String str) {
        this.schemeType = str;
    }

    public void setSchemeUrl(String str) {
        this.schemeUrl = str;
    }

    public void setShowTime(String str) {
        this.showTime = str;
    }

    public void setStartTime(String str) {
        this.startTime = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.bannerId);
        parcel.writeString(this.schemeId);
        parcel.writeString(this.bannerName);
        parcel.writeString(this.posId);
        parcel.writeString(this.startTime);
        parcel.writeString(this.endTime);
        parcel.writeString(this.showTime);
        parcel.writeString(this.fileUrl);
        parcel.writeString(this.fileType);
        parcel.writeString(this.schemeName);
        parcel.writeString(this.schemeType);
        parcel.writeString(this.modelType);
        parcel.writeString(this.schemeUrl);
        parcel.writeString(this.schemeData);
        if (this.belongLang == null) {
            parcel.writeByte((byte) 0);
            return;
        }
        parcel.writeByte((byte) 1);
        parcel.writeInt(this.belongLang.intValue());
    }

    public BannerBeanData() {
    }
}
