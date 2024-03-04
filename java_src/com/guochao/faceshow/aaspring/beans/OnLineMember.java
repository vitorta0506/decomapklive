package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class OnLineMember implements Parcelable {
    public static final Parcelable.Creator<OnLineMember> CREATOR = new Parcelable.Creator<OnLineMember>() { // from class: com.guochao.faceshow.aaspring.beans.OnLineMember.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OnLineMember createFromParcel(Parcel parcel) {
            return new OnLineMember(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OnLineMember[] newArray(int i9) {
            return new OnLineMember[i9];
        }
    };
    private String img;
    private String nickName;
    private String signature;
    private String userId;

    public OnLineMember() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getImg() {
        return this.img;
    }

    public String getNickName() {
        return this.nickName;
    }

    public String getSignature() {
        if (TextUtils.isEmpty(this.signature)) {
            return BaseApplication.getInstance().getString(R.string.user_info_default_signature);
        }
        return this.signature;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setImg(String str) {
        this.img = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.img);
        parcel.writeString(this.userId);
        parcel.writeString(this.nickName);
        parcel.writeString(this.signature);
    }

    protected OnLineMember(Parcel parcel) {
        this.img = parcel.readString();
        this.userId = parcel.readString();
        this.nickName = parcel.readString();
        this.signature = parcel.readString();
    }
}
