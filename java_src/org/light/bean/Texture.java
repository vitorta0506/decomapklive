package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class Texture implements Parcelable {
    public static final Parcelable.Creator<Texture> CREATOR = new Parcelable.Creator<Texture>() { // from class: org.light.bean.Texture.1
        @Override // android.os.Parcelable.Creator
        public Texture createFromParcel(Parcel parcel) {
            return new Texture(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Texture[] newArray(int i9) {
            return new Texture[i9];
        }
    };
    public int height;

    /* renamed from: id  reason: collision with root package name */
    public int f56431id;
    public int width;

    public Texture() {
    }

    protected Texture(Parcel parcel) {
        this.f56431id = parcel.readInt();
        this.width = parcel.readInt();
        this.height = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.f56431id);
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
    }
}
