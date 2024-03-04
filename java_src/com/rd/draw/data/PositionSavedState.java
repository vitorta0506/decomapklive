package com.rd.draw.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes4.dex */
public class PositionSavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<PositionSavedState> CREATOR = new a();
    private int lastSelectedPosition;
    private int selectedPosition;
    private int selectingPosition;

    /* loaded from: classes4.dex */
    static class a implements Parcelable.Creator<PositionSavedState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PositionSavedState createFromParcel(Parcel parcel) {
            return new PositionSavedState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PositionSavedState[] newArray(int i9) {
            return new PositionSavedState[i9];
        }
    }

    /* synthetic */ PositionSavedState(Parcel parcel, a aVar) {
        this(parcel);
    }

    public int a() {
        return this.lastSelectedPosition;
    }

    public int b() {
        return this.selectedPosition;
    }

    public int c() {
        return this.selectingPosition;
    }

    public void d(int i9) {
        this.lastSelectedPosition = i9;
    }

    public void e(int i9) {
        this.selectedPosition = i9;
    }

    public void f(int i9) {
        this.selectingPosition = i9;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i9) {
        super.writeToParcel(parcel, i9);
        parcel.writeInt(this.selectedPosition);
        parcel.writeInt(this.selectingPosition);
        parcel.writeInt(this.lastSelectedPosition);
    }

    public PositionSavedState(Parcelable parcelable) {
        super(parcelable);
    }

    private PositionSavedState(Parcel parcel) {
        super(parcel);
        this.selectedPosition = parcel.readInt();
        this.selectingPosition = parcel.readInt();
        this.lastSelectedPosition = parcel.readInt();
    }
}
