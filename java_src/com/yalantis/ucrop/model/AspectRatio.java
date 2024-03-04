package com.yalantis.ucrop.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
/* loaded from: classes5.dex */
public class AspectRatio implements Parcelable {
    public static final Parcelable.Creator<AspectRatio> CREATOR = new a();
    @Nullable
    private final String mAspectRatioTitle;
    private final float mAspectRatioX;
    private final float mAspectRatioY;

    /* loaded from: classes5.dex */
    static class a implements Parcelable.Creator<AspectRatio> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public AspectRatio createFromParcel(Parcel parcel) {
            return new AspectRatio(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public AspectRatio[] newArray(int i9) {
            return new AspectRatio[i9];
        }
    }

    public AspectRatio(@Nullable String str, float f10, float f11) {
        this.mAspectRatioTitle = str;
        this.mAspectRatioX = f10;
        this.mAspectRatioY = f11;
    }

    @Nullable
    public String a() {
        return this.mAspectRatioTitle;
    }

    public float b() {
        return this.mAspectRatioX;
    }

    public float c() {
        return this.mAspectRatioY;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeString(this.mAspectRatioTitle);
        parcel.writeFloat(this.mAspectRatioX);
        parcel.writeFloat(this.mAspectRatioY);
    }

    protected AspectRatio(Parcel parcel) {
        this.mAspectRatioTitle = parcel.readString();
        this.mAspectRatioX = parcel.readFloat();
        this.mAspectRatioY = parcel.readFloat();
    }
}
