package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes7.dex */
public class ArFrameInfo implements Parcelable {
    public static final Parcelable.Creator<ArFrameInfo> CREATOR = new Parcelable.Creator<ArFrameInfo>() { // from class: org.light.bean.ArFrameInfo.1
        @Override // android.os.Parcelable.Creator
        public ArFrameInfo createFromParcel(Parcel parcel) {
            return new ArFrameInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ArFrameInfo[] newArray(int i9) {
            return new ArFrameInfo[i9];
        }
    };
    public float[] cameraModelMatrix;
    public List<Plane> planeList;
    public double[] projectionMatrix;

    public ArFrameInfo() {
        this.cameraModelMatrix = new float[16];
        this.projectionMatrix = new double[16];
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public double[] float2double(float[] fArr) {
        double[] dArr = new double[fArr.length];
        for (int i9 = 0; i9 < fArr.length; i9++) {
            dArr[i9] = fArr[i9];
        }
        return dArr;
    }

    public String printFloatArray(float[] fArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (float f10 : fArr) {
            stringBuffer.append(f10);
            stringBuffer.append(",");
        }
        return stringBuffer.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeFloatArray(this.cameraModelMatrix);
        parcel.writeDoubleArray(this.projectionMatrix);
        parcel.writeTypedList(this.planeList);
    }

    /* loaded from: classes7.dex */
    public static class Plane implements Parcelable {
        public static final Parcelable.Creator<Plane> CREATOR = new Parcelable.Creator<Plane>() { // from class: org.light.bean.ArFrameInfo.Plane.1
            @Override // android.os.Parcelable.Creator
            public Plane createFromParcel(Parcel parcel) {
                return new Plane(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public Plane[] newArray(int i9) {
                return new Plane[i9];
            }
        };
        public float[] arbitraryPoint;
        public float[] normal;

        public Plane() {
            this.arbitraryPoint = new float[3];
            this.normal = new float[3];
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeFloatArray(this.arbitraryPoint);
            parcel.writeFloatArray(this.normal);
        }

        protected Plane(Parcel parcel) {
            this.arbitraryPoint = new float[3];
            this.normal = new float[3];
            this.arbitraryPoint = parcel.createFloatArray();
            this.normal = parcel.createFloatArray();
        }
    }

    protected ArFrameInfo(Parcel parcel) {
        this.cameraModelMatrix = new float[16];
        this.projectionMatrix = new double[16];
        this.cameraModelMatrix = parcel.createFloatArray();
        this.projectionMatrix = parcel.createDoubleArray();
        this.planeList = parcel.createTypedArrayList(Plane.CREATOR);
    }
}
