package com.guochao.faceshow.aaspring.views;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes3.dex */
public class SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SavedState> CREATOR = new a();
    public float currSelectedMax;
    public float currSelectedMin;
    public float maxValue;
    public float minValue;
    public float rangeInterval;
    public int tickNumber;

    /* loaded from: classes3.dex */
    class a implements Parcelable.Creator<SavedState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public SavedState createFromParcel(Parcel parcel) {
            return new SavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public SavedState[] newArray(int i9) {
            return new SavedState[i9];
        }
    }

    /* synthetic */ SavedState(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeFloat(this.minValue);
        parcel.writeFloat(this.maxValue);
        parcel.writeFloat(this.rangeInterval);
        parcel.writeInt(this.tickNumber);
        parcel.writeFloat(this.currSelectedMin);
        parcel.writeFloat(this.currSelectedMax);
    }

    public SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    private SavedState(Parcel parcel) {
        super(parcel);
        this.minValue = parcel.readFloat();
        this.maxValue = parcel.readFloat();
        this.rangeInterval = parcel.readFloat();
        this.tickNumber = parcel.readInt();
        this.currSelectedMin = parcel.readFloat();
        this.currSelectedMax = parcel.readFloat();
    }
}
