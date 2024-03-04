package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class LightSingleFaceInfo implements Parcelable {
    public static final Parcelable.Creator<LightSingleFaceInfo> CREATOR = new Parcelable.Creator<LightSingleFaceInfo>() { // from class: org.light.LightSingleFaceInfo.1
        @Override // android.os.Parcelable.Creator
        public LightSingleFaceInfo createFromParcel(Parcel parcel) {
            return new LightSingleFaceInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LightSingleFaceInfo[] newArray(int i9) {
            return new LightSingleFaceInfo[i9];
        }
    };
    public LightFaceDirection faceDirection;

    /* renamed from: h  reason: collision with root package name */
    public float f56427h;

    /* renamed from: w  reason: collision with root package name */
    public float f56428w;

    /* renamed from: x  reason: collision with root package name */
    public float f56429x;

    /* renamed from: y  reason: collision with root package name */
    public float f56430y;

    public LightSingleFaceInfo(int i9, float f10, float f11, float f12, float f13) {
        this.f56429x = 0.0f;
        this.f56430y = 0.0f;
        this.f56428w = 0.0f;
        this.f56427h = 0.0f;
        this.faceDirection = LightFaceDirection.values()[i9];
        this.f56429x = f10;
        this.f56430y = f11;
        this.f56428w = f12;
        this.f56427h = f13;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeFloat(this.f56429x);
        parcel.writeFloat(this.f56430y);
        parcel.writeFloat(this.f56428w);
        parcel.writeFloat(this.f56427h);
        parcel.writeInt(this.faceDirection.ordinal());
    }

    protected LightSingleFaceInfo(Parcel parcel) {
        this.f56429x = 0.0f;
        this.f56430y = 0.0f;
        this.f56428w = 0.0f;
        this.f56427h = 0.0f;
        this.f56429x = parcel.readFloat();
        this.f56430y = parcel.readFloat();
        this.f56428w = parcel.readFloat();
        this.f56427h = parcel.readFloat();
        this.faceDirection = LightFaceDirection.values()[parcel.readInt()];
    }
}
