package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.guochao.faceshow.bean.UserBean;
import java.util.List;
/* loaded from: classes3.dex */
public class CheckThirdPartyResult implements Parcelable {
    public static final Parcelable.Creator<CheckThirdPartyResult> CREATOR = new Parcelable.Creator<CheckThirdPartyResult>() { // from class: com.guochao.faceshow.aaspring.beans.CheckThirdPartyResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CheckThirdPartyResult createFromParcel(Parcel parcel) {
            return new CheckThirdPartyResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CheckThirdPartyResult[] newArray(int i9) {
            return new CheckThirdPartyResult[i9];
        }
    };
    private String email;
    private String json;
    private int reg;
    private String uid;
    private String unionid;
    private UserBean user;
    private List<UserBean> userInfoList;

    public CheckThirdPartyResult() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getEmail() {
        return this.email;
    }

    public String getJson() {
        return this.json;
    }

    public int getReg() {
        return this.reg;
    }

    public String getUid() {
        return this.uid;
    }

    public String getUnionid() {
        return this.unionid;
    }

    public UserBean getUser() {
        return this.user;
    }

    public List<UserBean> getUserInfoList() {
        return this.userInfoList;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setJson(String str) {
        this.json = str;
    }

    public void setReg(int i9) {
        this.reg = i9;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setUnionid(String str) {
        this.unionid = str;
    }

    public void setUser(UserBean userBean) {
        this.user = userBean;
    }

    public void setUserInfoList(List<UserBean> list) {
        this.userInfoList = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.reg);
        parcel.writeString(this.uid);
        parcel.writeString(this.json);
        parcel.writeString(this.unionid);
        parcel.writeParcelable(this.user, i9);
        parcel.writeString(this.email);
        parcel.writeTypedList(this.userInfoList);
    }

    protected CheckThirdPartyResult(Parcel parcel) {
        this.reg = parcel.readInt();
        this.uid = parcel.readString();
        this.json = parcel.readString();
        this.unionid = parcel.readString();
        this.user = (UserBean) parcel.readParcelable(UserBean.class.getClassLoader());
        this.email = parcel.readString();
        this.userInfoList = parcel.createTypedArrayList(UserBean.CREATOR);
    }
}
