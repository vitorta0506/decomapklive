package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class LightImageFaceDetectResult implements Parcelable {
    public static final Parcelable.Creator<LightImageFaceDetectResult> CREATOR = new Parcelable.Creator<LightImageFaceDetectResult>() { // from class: org.light.LightImageFaceDetectResult.1
        @Override // android.os.Parcelable.Creator
        public LightImageFaceDetectResult createFromParcel(Parcel parcel) {
            return new LightImageFaceDetectResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LightImageFaceDetectResult[] newArray(int i9) {
            return new LightImageFaceDetectResult[i9];
        }
    };
    public LightSingleFaceInfo[] faceInfoArray;
    public String msg;
    public LightFaceResultType type;

    public LightImageFaceDetectResult(LightSingleFaceInfo[] lightSingleFaceInfoArr, int i9, String str) {
        this.faceInfoArray = lightSingleFaceInfoArr;
        this.type = LightFaceResultType.values()[i9];
        this.msg = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeTypedArray(this.faceInfoArray, i9);
        parcel.writeInt(this.type.ordinal());
        parcel.writeString(this.msg);
    }

    protected LightImageFaceDetectResult(Parcel parcel) {
        this.faceInfoArray = (LightSingleFaceInfo[]) parcel.createTypedArray(LightSingleFaceInfo.CREATOR);
        this.type = LightFaceResultType.values()[parcel.readInt()];
        this.msg = parcel.readString();
    }
}
