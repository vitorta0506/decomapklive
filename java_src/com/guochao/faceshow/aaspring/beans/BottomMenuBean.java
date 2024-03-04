package com.guochao.faceshow.aaspring.beans;

import android.content.res.ColorStateList;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3.dex */
public class BottomMenuBean implements Parcelable {
    public static final Parcelable.Creator<BottomMenuBean> CREATOR = new Parcelable.Creator<BottomMenuBean>() { // from class: com.guochao.faceshow.aaspring.beans.BottomMenuBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BottomMenuBean createFromParcel(Parcel parcel) {
            return new BottomMenuBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BottomMenuBean[] newArray(int i9) {
            return new BottomMenuBean[i9];
        }
    };
    private int icon;
    private int itemId;
    private CharSequence text;
    private ColorStateList textColor;

    public BottomMenuBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getIcon() {
        return this.icon;
    }

    public int getItemId() {
        return this.itemId;
    }

    public CharSequence getText() {
        return this.text;
    }

    public ColorStateList getTextColor() {
        return this.textColor;
    }

    public void setIcon(int i9) {
        this.icon = i9;
    }

    public void setItemId(int i9) {
        this.itemId = i9;
    }

    public void setText(CharSequence charSequence) {
        this.text = charSequence;
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.textColor = colorStateList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.icon);
        parcel.writeString(this.text.toString());
        parcel.writeParcelable(this.textColor, i9);
        parcel.writeInt(this.itemId);
    }

    protected BottomMenuBean(Parcel parcel) {
        this.icon = parcel.readInt();
        this.text = parcel.readString();
        this.textColor = (ColorStateList) parcel.readParcelable(ColorStateList.class.getClassLoader());
        this.itemId = parcel.readInt();
    }
}
