package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
/* loaded from: classes3.dex */
public class FriendSettingBean extends FaceCastBaseResponse<String> implements Parcelable {
    public static final Parcelable.Creator<FriendSettingBean> CREATOR = new Parcelable.Creator<FriendSettingBean>() { // from class: com.guochao.faceshow.aaspring.beans.FriendSettingBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FriendSettingBean createFromParcel(Parcel parcel) {
            return new FriendSettingBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FriendSettingBean[] newArray(int i9) {
            return new FriendSettingBean[i9];
        }
    };
    private int have;
    private String imgUrl;
    private boolean isCheck;
    private int tagId;
    @SerializedName(alternate = {"content"}, value = "tname")
    private String tname;
    private int type;

    protected FriendSettingBean(Parcel parcel) {
        this.tname = parcel.readString();
        this.have = parcel.readInt();
        this.tagId = parcel.readInt();
        this.type = parcel.readInt();
        this.isCheck = parcel.readByte() != 0;
        this.imgUrl = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getHave() {
        return this.have;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public int getTagId() {
        return this.tagId;
    }

    public String getTname() {
        return this.tname;
    }

    public int getType() {
        return this.type;
    }

    public boolean isCheck() {
        return this.isCheck;
    }

    public void setCheck(boolean z10) {
        this.isCheck = z10;
    }

    public void setHave(int i9) {
        this.have = i9;
    }

    public void setImgUrl(String str) {
        this.imgUrl = str;
    }

    public void setTagId(int i9) {
        this.tagId = i9;
    }

    public void setTname(String str) {
        this.tname = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.tname);
        parcel.writeInt(this.have);
        parcel.writeInt(this.tagId);
        parcel.writeInt(this.type);
        parcel.writeByte(this.isCheck ? (byte) 1 : (byte) 0);
        parcel.writeString(this.imgUrl);
    }

    public FriendSettingBean() {
    }
}
