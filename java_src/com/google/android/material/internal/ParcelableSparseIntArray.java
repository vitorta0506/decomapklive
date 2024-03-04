package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class ParcelableSparseIntArray extends SparseIntArray implements Parcelable {
    public static final Parcelable.Creator<ParcelableSparseIntArray> CREATOR = new Parcelable.Creator<ParcelableSparseIntArray>() { // from class: com.google.android.material.internal.ParcelableSparseIntArray.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseIntArray createFromParcel(@NonNull Parcel parcel) {
            int readInt = parcel.readInt();
            ParcelableSparseIntArray parcelableSparseIntArray = new ParcelableSparseIntArray(readInt);
            int[] iArr = new int[readInt];
            int[] iArr2 = new int[readInt];
            parcel.readIntArray(iArr);
            parcel.readIntArray(iArr2);
            for (int i9 = 0; i9 < readInt; i9++) {
                parcelableSparseIntArray.put(iArr[i9], iArr2[i9]);
            }
            return parcelableSparseIntArray;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @NonNull
        public ParcelableSparseIntArray[] newArray(int i9) {
            return new ParcelableSparseIntArray[i9];
        }
    };

    public ParcelableSparseIntArray() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i9) {
        int[] iArr = new int[size()];
        int[] iArr2 = new int[size()];
        for (int i10 = 0; i10 < size(); i10++) {
            iArr[i10] = keyAt(i10);
            iArr2[i10] = valueAt(i10);
        }
        parcel.writeInt(size());
        parcel.writeIntArray(iArr);
        parcel.writeIntArray(iArr2);
    }

    public ParcelableSparseIntArray(int i9) {
        super(i9);
    }

    public ParcelableSparseIntArray(@NonNull SparseIntArray sparseIntArray) {
        for (int i9 = 0; i9 < sparseIntArray.size(); i9++) {
            put(sparseIntArray.keyAt(i9), sparseIntArray.valueAt(i9));
        }
    }
}
