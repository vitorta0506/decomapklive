package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes3.dex */
public class VipCombo implements Parcelable {
    public static final Parcelable.Creator<VipCombo> CREATOR = new Parcelable.Creator<VipCombo>() { // from class: com.guochao.faceshow.aaspring.beans.VipCombo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VipCombo createFromParcel(Parcel parcel) {
            return new VipCombo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VipCombo[] newArray(int i9) {
            return new VipCombo[i9];
        }
    };
    private UserVipData userVipMsg;
    private List<VipComboDate> vipComboVoList;

    public VipCombo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UserVipData getUserVipMsg() {
        return this.userVipMsg;
    }

    public List<VipComboDate> getVipComboVoList() {
        return this.vipComboVoList;
    }

    public void readFromParcel(Parcel parcel) {
        this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        this.vipComboVoList = parcel.createTypedArrayList(VipComboDate.CREATOR);
    }

    public void setUserVipMsg(UserVipData userVipData) {
        this.userVipMsg = userVipData;
    }

    public void setVipComboVoList(List<VipComboDate> list) {
        this.vipComboVoList = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeParcelable(this.userVipMsg, i9);
        parcel.writeTypedList(this.vipComboVoList);
    }

    protected VipCombo(Parcel parcel) {
        this.userVipMsg = (UserVipData) parcel.readParcelable(UserVipData.class.getClassLoader());
        this.vipComboVoList = parcel.createTypedArrayList(VipComboDate.CREATOR);
    }
}
