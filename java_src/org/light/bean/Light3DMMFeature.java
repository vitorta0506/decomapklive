package org.light.bean;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class Light3DMMFeature implements Parcelable {
    public static final Parcelable.Creator<Light3DMMFeature> CREATOR = new Parcelable.Creator() { // from class: org.light.bean.Light3DMMFeature.1
        @Override // android.os.Parcelable.Creator
        public Light3DMMFeature createFromParcel(Parcel parcel) {
            return new Light3DMMFeature(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Light3DMMFeature[] newArray(int i9) {
            return new Light3DMMFeature[i9];
        }
    };
    public float[] euler;
    public float[] exp;
    public int face_kit_vertex_num;
    public float[] face_kit_vertices;
    public boolean is_kissing;
    public float point_scale;
    public float[] proj_face_vertices;
    public float scale;
    public int trace_id;
    public float[][] trans_matrix;
    public float[][] transform;
    public PointF translate;

    public Light3DMMFeature(float[][] fArr, float[][] fArr2, float[] fArr3, float[] fArr4, PointF pointF, int i9, float[] fArr5, float[] fArr6, int i10, float f10, float f11, boolean z10) {
        this.trans_matrix = fArr;
        this.transform = fArr2;
        this.euler = fArr3;
        this.exp = fArr4;
        this.translate = pointF;
        this.face_kit_vertex_num = i9;
        this.face_kit_vertices = fArr5;
        this.proj_face_vertices = fArr6;
        this.trace_id = i10;
        this.point_scale = f10;
        this.scale = f11;
        this.is_kissing = z10;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.trans_matrix = new float[parcel.readInt()];
        for (int i9 = 0; i9 < this.trans_matrix.length; i9++) {
            int readInt = parcel.readInt();
            float[][] fArr = this.trans_matrix;
            fArr[i9] = new float[readInt];
            parcel.readFloatArray(fArr[i9]);
        }
        this.transform = new float[parcel.readInt()];
        for (int i10 = 0; i10 < this.transform.length; i10++) {
            int readInt2 = parcel.readInt();
            float[][] fArr2 = this.transform;
            fArr2[i10] = new float[readInt2];
            parcel.readFloatArray(fArr2[i10]);
        }
        this.euler = parcel.createFloatArray();
        this.exp = parcel.createFloatArray();
        this.translate = (PointF) parcel.readParcelable(PointF.class.getClassLoader());
        this.face_kit_vertex_num = parcel.readInt();
        this.face_kit_vertices = parcel.createFloatArray();
        this.proj_face_vertices = parcel.createFloatArray();
        this.trace_id = parcel.readInt();
        this.point_scale = parcel.readFloat();
        this.scale = parcel.readFloat();
        this.is_kissing = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        float[][] fArr;
        float[][] fArr2;
        parcel.writeInt(this.trans_matrix.length);
        for (float[] fArr3 : this.trans_matrix) {
            parcel.writeFloat(fArr3.length);
            parcel.writeFloatArray(fArr3);
        }
        parcel.writeInt(this.transform.length);
        for (float[] fArr4 : this.transform) {
            parcel.writeFloat(fArr4.length);
            parcel.writeFloatArray(fArr4);
        }
        parcel.writeFloatArray(this.euler);
        parcel.writeFloatArray(this.exp);
        parcel.writeParcelable(this.translate, i9);
        parcel.writeInt(this.face_kit_vertex_num);
        parcel.writeFloatArray(this.face_kit_vertices);
        parcel.writeFloatArray(this.proj_face_vertices);
        parcel.writeInt(this.trace_id);
        parcel.writeFloat(this.point_scale);
        parcel.writeFloat(this.scale);
        parcel.writeByte(this.is_kissing ? (byte) 1 : (byte) 0);
    }

    protected Light3DMMFeature(Parcel parcel) {
        this.trans_matrix = new float[parcel.readInt()];
        for (int i9 = 0; i9 < this.trans_matrix.length; i9++) {
            int readInt = parcel.readInt();
            float[][] fArr = this.trans_matrix;
            fArr[i9] = new float[readInt];
            parcel.readFloatArray(fArr[i9]);
        }
        this.transform = new float[parcel.readInt()];
        for (int i10 = 0; i10 < this.transform.length; i10++) {
            int readInt2 = parcel.readInt();
            float[][] fArr2 = this.transform;
            fArr2[i10] = new float[readInt2];
            parcel.readFloatArray(fArr2[i10]);
        }
        this.euler = parcel.createFloatArray();
        this.exp = parcel.createFloatArray();
        this.translate = (PointF) parcel.readParcelable(PointF.class.getClassLoader());
        this.face_kit_vertex_num = parcel.readInt();
        this.face_kit_vertices = parcel.createFloatArray();
        this.proj_face_vertices = parcel.createFloatArray();
        this.trace_id = parcel.readInt();
        this.point_scale = parcel.readFloat();
        this.scale = parcel.readFloat();
        this.is_kissing = parcel.readByte() != 0;
    }
}
