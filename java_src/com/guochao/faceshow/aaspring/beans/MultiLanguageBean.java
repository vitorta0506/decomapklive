package com.guochao.faceshow.aaspring.beans;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
/* loaded from: classes3.dex */
public class MultiLanguageBean implements Parcelable {
    public static final Parcelable.Creator<MultiLanguageBean> CREATOR = new Parcelable.Creator<MultiLanguageBean>() { // from class: com.guochao.faceshow.aaspring.beans.MultiLanguageBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MultiLanguageBean createFromParcel(Parcel parcel) {
            return new MultiLanguageBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MultiLanguageBean[] newArray(int i9) {
            return new MultiLanguageBean[i9];
        }
    };
    private boolean check;

    /* renamed from: id  reason: collision with root package name */
    private String f16314id;
    private String language;

    protected MultiLanguageBean(Parcel parcel) {
        this.f16314id = parcel.readString();
        this.language = parcel.readString();
        this.check = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.language, ((MultiLanguageBean) obj).language);
    }

    public String getId() {
        return this.f16314id;
    }

    public String getLanguage() {
        return this.language;
    }

    public int hashCode() {
        return Objects.hash(this.language);
    }

    public boolean isCheck() {
        return this.check;
    }

    public void setCheck(boolean z10) {
        this.check = z10;
    }

    public void setId(String str) {
        this.f16314id = str;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.f16314id);
        parcel.writeString(this.language);
        parcel.writeByte(this.check ? (byte) 1 : (byte) 0);
    }

    public MultiLanguageBean() {
    }
}
