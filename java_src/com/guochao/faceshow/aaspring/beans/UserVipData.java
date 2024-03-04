package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import b8.f;
import b8.g;
/* loaded from: classes3.dex */
public class UserVipData implements g, Parcelable {
    public static final Parcelable.Creator<UserVipData> CREATOR = new Parcelable.Creator<UserVipData>() { // from class: com.guochao.faceshow.aaspring.beans.UserVipData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserVipData createFromParcel(Parcel parcel) {
            return new UserVipData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserVipData[] newArray(int i9) {
            return new UserVipData[i9];
        }
    };
    private String arDressCarSource;
    private String arDressCarSourceV2;
    private String dressCarId;
    private String dressCarSource;
    private String dressCarSourceV2;
    private String dressChatSource;
    private String dressHead;
    private int dressHeadType;
    private String hostCertificationUrl;
    private Integer isVip;
    private String publicFontColor;
    private int sended;
    private long vipExpireTime;
    private Integer vipPlatform;
    private String vipSign;

    protected UserVipData(Parcel parcel) {
        this.sended = parcel.readInt();
        this.dressHeadType = parcel.readInt();
        this.dressCarId = parcel.readString();
        this.dressCarSource = parcel.readString();
        this.dressCarSourceV2 = parcel.readString();
        this.dressChatSource = parcel.readString();
        this.hostCertificationUrl = parcel.readString();
        this.vipSign = parcel.readString();
        this.arDressCarSource = parcel.readString();
        this.arDressCarSourceV2 = parcel.readString();
        this.dressHead = parcel.readString();
        this.publicFontColor = parcel.readString();
        if (parcel.readByte() == 0) {
            this.isVip = null;
        } else {
            this.isVip = Integer.valueOf(parcel.readInt());
        }
    }

    public static UserVipData from(g gVar) {
        UserVipData userVipData = new UserVipData();
        userVipData.setIsVip(gVar.getVipLevel());
        userVipData.setSended(gVar.getSended());
        userVipData.setArDressCarSource(gVar.getVipDressCarUrl());
        userVipData.setDressCarSource(gVar.getVipDressCarUrl());
        userVipData.setDressCarId(gVar.getVipDressCarId());
        userVipData.setDressHead(gVar.getVipAvatarPendentUrl());
        userVipData.setDressHeadType(gVar.getVipAvatarPendentType());
        userVipData.setHostCertificationUrl(gVar.getHostCertificationUrl());
        userVipData.setDressCarSource(gVar.getVipDressCarUrl());
        userVipData.setDressCarId(gVar.getVipDressCarId());
        userVipData.setDressCarSourceV2(gVar.getVipDressCarUrlV2());
        userVipData.setArDressCarSourceV2(gVar.getVipDressCarUrlV2());
        return userVipData;
    }

    public static Parcelable.Creator<UserVipData> getCREATOR() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getArDressCarSource() {
        return this.arDressCarSource;
    }

    public String getArDressCarSourceV2() {
        return this.arDressCarSourceV2;
    }

    public String getDressCarId() {
        return this.dressCarId;
    }

    public String getDressCarSource() {
        return this.dressCarSource;
    }

    public String getDressCarSourceV2() {
        return this.dressCarSourceV2;
    }

    public String getDressChatSource() {
        return this.dressChatSource;
    }

    public String getDressHead() {
        return this.dressHead;
    }

    public int getDressHeadType() {
        return this.dressHeadType;
    }

    @Override // b8.g
    public String getHostCertificationUrl() {
        return this.hostCertificationUrl;
    }

    public int getIsVip() {
        Integer num = this.isVip;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getPlatform() {
        return getVipPlatform();
    }

    public String getPublicFontColor() {
        return this.publicFontColor;
    }

    @Override // b8.g
    public int getSended() {
        return this.sended;
    }

    public long getThirdEndTime() {
        return this.vipExpireTime;
    }

    public /* bridge */ /* synthetic */ String getVipAvatarPendentId() {
        return f.c(this);
    }

    @Override // b8.g
    public int getVipAvatarPendentType() {
        return this.dressHeadType;
    }

    @Override // b8.g
    public String getVipAvatarPendentUrl() {
        return this.dressHead;
    }

    @Override // b8.g
    public String getVipDressCarId() {
        return this.dressCarId;
    }

    @Override // b8.g
    public String getVipDressCarUrl() {
        return this.dressCarSource;
    }

    @Override // b8.g
    public String getVipDressCarUrlV2() {
        return this.dressCarSourceV2;
    }

    public /* bridge */ /* synthetic */ String getVipDressChatUrl() {
        return f.i(this);
    }

    public long getVipExpireTime() {
        return this.vipExpireTime;
    }

    @Override // b8.g
    public int getVipLevel() {
        return getIsVip();
    }

    public int getVipPlatform() {
        Integer num = this.vipPlatform;
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public String getVipSign() {
        String str = this.vipSign;
        return str == null ? "vip1_1" : str;
    }

    @Override // b8.g
    public /* bridge */ /* synthetic */ boolean isVip() {
        return f.k(this);
    }

    public void setArDressCarSource(String str) {
        this.arDressCarSource = str;
    }

    public void setArDressCarSourceV2(String str) {
        this.arDressCarSourceV2 = str;
    }

    public void setDressCarId(String str) {
        this.dressCarId = str;
    }

    public void setDressCarSource(String str) {
        this.dressCarSource = str;
    }

    public void setDressCarSourceV2(String str) {
        this.dressCarSourceV2 = str;
    }

    public void setDressChatSource(String str) {
        this.dressChatSource = str;
    }

    public void setDressHead(String str) {
        this.dressHead = str;
    }

    public void setDressHeadType(int i9) {
        this.dressHeadType = i9;
    }

    public void setHostCertificationUrl(String str) {
        this.hostCertificationUrl = str;
    }

    public void setIsVip(int i9) {
        this.isVip = Integer.valueOf(i9);
    }

    public void setPlatform(int i9) {
        this.vipPlatform = Integer.valueOf(i9);
    }

    public void setPublicFontColor(String str) {
        this.publicFontColor = str;
    }

    public void setSended(int i9) {
        this.sended = i9;
    }

    public void setThirdEndTime(long j10) {
        this.vipExpireTime = j10;
    }

    public void setVipExpireTime(long j10) {
        this.vipExpireTime = j10;
    }

    public void setVipPlatform(int i9) {
        this.vipPlatform = Integer.valueOf(i9);
    }

    public void setVipSign(String str) {
        this.vipSign = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.sended);
        parcel.writeInt(this.dressHeadType);
        parcel.writeString(this.dressCarId);
        parcel.writeString(this.dressCarSource);
        parcel.writeString(this.dressCarSourceV2);
        parcel.writeString(this.dressChatSource);
        parcel.writeString(this.hostCertificationUrl);
        parcel.writeString(this.vipSign);
        parcel.writeString(this.arDressCarSource);
        parcel.writeString(this.arDressCarSourceV2);
        parcel.writeString(this.dressHead);
        parcel.writeString(this.publicFontColor);
        if (this.isVip == null) {
            parcel.writeByte((byte) 0);
            return;
        }
        parcel.writeByte((byte) 1);
        parcel.writeInt(this.isVip.intValue());
    }

    public UserVipData() {
    }
}
