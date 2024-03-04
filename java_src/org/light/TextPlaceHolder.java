package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class TextPlaceHolder implements Parcelable {
    public static final Parcelable.Creator<TextPlaceHolder> CREATOR = new Parcelable.Creator<TextPlaceHolder>() { // from class: org.light.TextPlaceHolder.1
        @Override // android.os.Parcelable.Creator
        public TextPlaceHolder createFromParcel(Parcel parcel) {
            return new TextPlaceHolder(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TextPlaceHolder[] newArray(int i9) {
            return new TextPlaceHolder[i9];
        }
    };
    public int entityId;
    public int fillColor;
    public String key;
    public float layerHeight;
    public float layerWidth;
    public int maxLength;
    public int replaceIndex;
    public String text;

    public TextPlaceHolder(String str, String str2, int i9, int i10) {
        this.key = str;
        this.text = str2;
        this.fillColor = i9;
        this.maxLength = i10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.key);
        parcel.writeString(this.text);
        parcel.writeInt(this.fillColor);
        parcel.writeInt(this.maxLength);
        parcel.writeFloat(this.layerWidth);
        parcel.writeFloat(this.layerHeight);
        parcel.writeInt(this.replaceIndex);
        parcel.writeInt(this.entityId);
    }

    public TextPlaceHolder(String str, String str2, int i9, int i10, float f10, float f11, int i11, int i12) {
        this.key = str;
        this.text = str2;
        this.fillColor = i9;
        this.maxLength = i10;
        this.layerWidth = f10;
        this.layerHeight = f11;
        this.replaceIndex = i11;
        this.entityId = i12;
    }

    protected TextPlaceHolder(Parcel parcel) {
        this.key = "";
        this.text = "";
        this.key = parcel.readString();
        this.text = parcel.readString();
        this.fillColor = parcel.readInt();
        this.maxLength = parcel.readInt();
        this.layerWidth = parcel.readFloat();
        this.layerHeight = parcel.readFloat();
        this.replaceIndex = parcel.readInt();
        this.entityId = parcel.readInt();
    }
}
