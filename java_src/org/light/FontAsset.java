package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class FontAsset implements Parcelable {
    public static final Parcelable.Creator<FontAsset> CREATOR = new Parcelable.Creator<FontAsset>() { // from class: org.light.FontAsset.1
        @Override // android.os.Parcelable.Creator
        public FontAsset createFromParcel(Parcel parcel) {
            return new FontAsset(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FontAsset[] newArray(int i9) {
            return new FontAsset[i9];
        }
    };
    public String fontFamily;
    public String fontStyle;

    public FontAsset(String str, String str2) {
        this.fontFamily = str;
        this.fontStyle = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.fontFamily);
        parcel.writeString(this.fontStyle);
    }

    protected FontAsset(Parcel parcel) {
        this.fontFamily = parcel.readString();
        this.fontStyle = parcel.readString();
    }
}
