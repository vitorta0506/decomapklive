package org.light.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes7.dex */
public class LightFaceData implements Parcelable {
    public static final Parcelable.Creator<LightFaceData> CREATOR = new Parcelable.Creator<LightFaceData>() { // from class: org.light.bean.LightFaceData.1
        @Override // android.os.Parcelable.Creator
        public LightFaceData createFromParcel(Parcel parcel) {
            return new LightFaceData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public LightFaceData[] newArray(int i9) {
            return new LightFaceData[i9];
        }
    };
    public int[] cameraSize;
    public ByteBuffer imageByteBuffer;
    public byte[] imageData;
    public int[] imageSize;
    public List<LightFaceFeature> mLightFaceFeatureList;
    public int[] renderSize;

    public LightFaceData() {
        this.imageSize = new int[2];
        this.cameraSize = new int[2];
        this.renderSize = new int[2];
        this.mLightFaceFeatureList = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void revertFaceFeaturePoint() {
        List<LightFaceFeature> list;
        LightFaceFeature next;
        if (this.imageSize == null || (list = this.mLightFaceFeatureList) == null || list.size() == 0) {
            return;
        }
        int i9 = this.imageSize[1];
        Iterator<LightFaceFeature> it = this.mLightFaceFeatureList.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            int i10 = 1;
            while (true) {
                float[] fArr = next.facePoints;
                if (i10 >= fArr.length) {
                    break;
                }
                fArr[i10] = i9 - fArr[i10];
                i10 += 2;
            }
            int i11 = 1;
            while (true) {
                float[] fArr2 = next.faceFeaturePoints;
                if (i11 >= fArr2.length) {
                    break;
                }
                fArr2[i11] = i9 - fArr2[i11];
                i11 += 2;
            }
            int i12 = 1;
            while (true) {
                float[] fArr3 = next.faceFeature256Points;
                if (i12 < fArr3.length) {
                    fArr3[i12] = i9 - fArr3[i12];
                    i12 += 2;
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeByteArray(this.imageData);
        parcel.writeIntArray(this.imageSize);
        parcel.writeIntArray(this.cameraSize);
        parcel.writeIntArray(this.renderSize);
        parcel.writeTypedList(this.mLightFaceFeatureList);
    }

    public LightFaceData(int[] iArr, int[] iArr2, int[] iArr3) {
        this.imageSize = new int[2];
        this.cameraSize = new int[2];
        this.renderSize = new int[2];
        this.mLightFaceFeatureList = new ArrayList();
        this.imageSize = iArr;
        this.cameraSize = iArr2;
        this.renderSize = iArr3;
        revertFaceFeaturePoint();
    }

    protected LightFaceData(Parcel parcel) {
        this.imageSize = new int[2];
        this.cameraSize = new int[2];
        this.renderSize = new int[2];
        this.mLightFaceFeatureList = new ArrayList();
        this.imageData = parcel.createByteArray();
        this.imageSize = parcel.createIntArray();
        this.cameraSize = parcel.createIntArray();
        this.renderSize = parcel.createIntArray();
        this.mLightFaceFeatureList = parcel.createTypedArrayList(LightFaceFeature.CREATOR);
    }
}
