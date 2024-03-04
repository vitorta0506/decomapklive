package com.guochao.faceshow.aaspring.modulars.login.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
/* loaded from: classes3.dex */
public class LoginOrRegisterBean implements Parcelable {
    public static final Parcelable.Creator<LoginOrRegisterBean> CREATOR = new Parcelable.Creator<LoginOrRegisterBean>() { // from class: com.guochao.faceshow.aaspring.modulars.login.bean.LoginOrRegisterBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginOrRegisterBean createFromParcel(Parcel parcel) {
            return new LoginOrRegisterBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginOrRegisterBean[] newArray(int i9) {
            return new LoginOrRegisterBean[i9];
        }
    };
    private String checkkey;
    @SerializedName(alternate = {"type"}, value = "existUser")
    private int existUser;

    protected LoginOrRegisterBean(Parcel parcel) {
        this.existUser = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getCheckkey() {
        return this.checkkey;
    }

    public int getExistUser() {
        return this.existUser;
    }

    public void setCheckkey(String str) {
        this.checkkey = str;
    }

    public void setExistUser(int i9) {
        this.existUser = i9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.existUser);
    }
}
