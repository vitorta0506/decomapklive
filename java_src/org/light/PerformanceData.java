package org.light;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes7.dex */
public class PerformanceData implements Parcelable {
    public static final Parcelable.Creator<PerformanceData> CREATOR = new Parcelable.Creator<PerformanceData>() { // from class: org.light.PerformanceData.1
        @Override // android.os.Parcelable.Creator
        public PerformanceData createFromParcel(Parcel parcel) {
            return new PerformanceData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public PerformanceData[] newArray(int i9) {
            return new PerformanceData[i9];
        }
    };
    public float aeBasicBeautySystemTime;
    public float aeLiquifyRenderChainTime;
    public float aeLutRendererTime;
    public float aePagRendererTime;
    public float aePostEffectRendererTime;
    public float aeScene3dRendererTime;
    public float aiSystemTime;
    public float frameTime;
    public float ganRendererTime;
    public float scriptSystemTime;
    public float stickerRendererTime;

    public PerformanceData(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20) {
        this.frameTime = f10;
        this.aiSystemTime = f11;
        this.scriptSystemTime = f12;
        this.stickerRendererTime = f13;
        this.aePagRendererTime = f14;
        this.aeBasicBeautySystemTime = f15;
        this.aeLiquifyRenderChainTime = f16;
        this.aeLutRendererTime = f17;
        this.aePostEffectRendererTime = f18;
        this.aeScene3dRendererTime = f19;
        this.ganRendererTime = f20;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        parcel.writeFloat(this.frameTime);
        parcel.writeFloat(this.aiSystemTime);
        parcel.writeFloat(this.scriptSystemTime);
        parcel.writeFloat(this.stickerRendererTime);
        parcel.writeFloat(this.aePagRendererTime);
        parcel.writeFloat(this.aeBasicBeautySystemTime);
        parcel.writeFloat(this.aeLiquifyRenderChainTime);
        parcel.writeFloat(this.aeLutRendererTime);
        parcel.writeFloat(this.aePostEffectRendererTime);
        parcel.writeFloat(this.aeScene3dRendererTime);
        parcel.writeFloat(this.ganRendererTime);
    }

    protected PerformanceData(Parcel parcel) {
        this.frameTime = parcel.readFloat();
        this.aiSystemTime = parcel.readFloat();
        this.scriptSystemTime = parcel.readFloat();
        this.stickerRendererTime = parcel.readFloat();
        this.aePagRendererTime = parcel.readFloat();
        this.aeBasicBeautySystemTime = parcel.readFloat();
        this.aeLiquifyRenderChainTime = parcel.readFloat();
        this.aeLutRendererTime = parcel.readFloat();
        this.aePostEffectRendererTime = parcel.readFloat();
        this.aeScene3dRendererTime = parcel.readFloat();
        this.ganRendererTime = parcel.readFloat();
    }
}
