package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import p7.c;
import p7.d;
import p7.g;
import p7.h;
/* loaded from: classes3.dex */
public class AudienceInformation implements h, c, Parcelable, Comparable<AudienceInformation> {
    public static final Parcelable.Creator<AudienceInformation> CREATOR = new Parcelable.Creator<AudienceInformation>() { // from class: com.guochao.faceshow.aaspring.beans.AudienceInformation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudienceInformation createFromParcel(Parcel parcel) {
            return new AudienceInformation(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AudienceInformation[] newArray(int i9) {
            return new AudienceInformation[i9];
        }
    };
    private String avatar;
    private String img;
    private String sex;
    @SerializedName(alternate = {InAppPurchaseMetaData.KEY_PRICE}, value = "type")
    private String type;
    private String userId;
    private UserVipData userVipMsg;

    public AudienceInformation() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return true;
        }
        AudienceInformation audienceInformation = (AudienceInformation) obj;
        return audienceInformation.getUserId() != null && audienceInformation.getUserId().equals(getUserId());
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
        return this.img;
    }

    @Override // p7.h
    public String getCountryFlag() {
        return "";
    }

    @Override // p7.h
    public String getCurrentUserId() {
        return this.userId;
    }

    @Override // p7.h, p7.c
    public int getGender() {
        try {
            return Integer.parseInt(this.sex);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String getImg() {
        return this.img;
    }

    @Override // p7.e
    public /* bridge */ /* synthetic */ int getLevel() {
        return d.a(this);
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getMVPUrl() {
        return g.a(this);
    }

    @Override // p7.h
    public String getPendantUrl() {
        return this.avatar;
    }

    public String getSex() {
        return this.sex;
    }

    public String getType() {
        return this.type;
    }

    public String getUserId() {
        return this.userId;
    }

    @Override // p7.h
    public /* bridge */ /* synthetic */ String getUserName() {
        return g.b(this);
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    @Override // p7.h
    @Nullable
    public /* bridge */ /* synthetic */ b8.g getVipInfo() {
        return g.c(this);
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setSex(String str) {
        this.sex = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.img);
        parcel.writeString(this.avatar);
        parcel.writeString(this.type);
        parcel.writeString(this.userId);
        parcel.writeString(this.sex);
    }

    protected AudienceInformation(Parcel parcel) {
        this.img = parcel.readString();
        this.avatar = parcel.readString();
        this.type = parcel.readString();
        this.userId = parcel.readString();
        this.sex = parcel.readString();
    }

    @Override // java.lang.Comparable
    public int compareTo(AudienceInformation audienceInformation) {
        this.type = TextUtils.isEmpty(this.type) ? "0" : this.type;
        String str = TextUtils.isEmpty(audienceInformation.type) ? "0" : audienceInformation.type;
        audienceInformation.type = str;
        if ("0".equals(str) && "0".equals(this.type)) {
            UserVipData userVipData = audienceInformation.userVipMsg;
            if (userVipData != null && this.userVipMsg != null) {
                return String.valueOf(userVipData.getIsVip()).compareTo(String.valueOf(this.userVipMsg.getIsVip()));
            }
            if (userVipData != null || this.userVipMsg == null) {
                if (userVipData == null || this.userVipMsg != null) {
                    return audienceInformation.getType().compareTo(this.type);
                }
                return 1;
            }
            return -1;
        }
        return audienceInformation.getType().compareTo(this.type);
    }
}
