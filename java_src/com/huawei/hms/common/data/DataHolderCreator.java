package com.huawei.hms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4.dex */
public final class DataHolderCreator implements Parcelable.Creator<DataHolder> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public final DataHolder createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i9 = 0;
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i10 = 0;
        int i11 = 0;
        while (i9 <= validateObjectHeader && parcel.dataPosition() < validateObjectHeader) {
            i9++;
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId == 1000) {
                i10 = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId == 1) {
                strArr = SafeParcelReader.createStringArray(parcel, readHeader);
            } else if (fieldId == 2) {
                cursorWindowArr = (CursorWindow[]) SafeParcelReader.createTypedArray(parcel, readHeader, CursorWindow.CREATOR);
            } else if (fieldId == 3) {
                i11 = SafeParcelReader.readInt(parcel, readHeader);
            } else if (fieldId != 4) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                bundle = SafeParcelReader.createBundle(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new DataHolder(i10, strArr, cursorWindowArr, i11, bundle);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.Parcelable.Creator
    public final DataHolder[] newArray(int i9) {
        return new DataHolder[i9];
    }
}
