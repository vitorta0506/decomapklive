package org.light;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class ClipAsset implements Parcelable {
    public static final Parcelable.Creator<ClipAsset> CREATOR = new Parcelable.Creator<ClipAsset>() { // from class: org.light.ClipAsset.1
        @Override // android.os.Parcelable.Creator
        public ClipAsset createFromParcel(Parcel parcel) {
            return new ClipAsset(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ClipAsset[] newArray(int i9) {
            return new ClipAsset[i9];
        }
    };
    public static int EXTERNAL = 3;
    public static int PHOTO = 1;
    public static int VIDEO;
    public RectF clipRect;
    public long duration;
    public Matrix matrix;
    public String path;
    protected int type;

    public ClipAsset() {
        this.type = -1;
        this.clipRect = new RectF();
        this.matrix = new Matrix();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int type() {
        return this.type;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeInt(this.type);
        parcel.writeLong(this.duration);
        parcel.writeString(this.path);
        parcel.writeParcelable(this.clipRect, i9);
        float[] fArr = new float[9];
        this.matrix.getValues(fArr);
        parcel.writeFloatArray(fArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ClipAsset(Parcel parcel) {
        this.type = -1;
        this.clipRect = new RectF();
        this.matrix = new Matrix();
        this.type = parcel.readInt();
        this.duration = parcel.readLong();
        this.path = parcel.readString();
        this.clipRect = (RectF) parcel.readParcelable(RectF.class.getClassLoader());
        float[] fArr = new float[9];
        parcel.readFloatArray(fArr);
        this.matrix.setValues(fArr);
    }
}
