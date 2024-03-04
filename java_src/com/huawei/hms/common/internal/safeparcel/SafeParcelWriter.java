package com.huawei.hms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4.dex */
public class SafeParcelWriter {
    private static final int BIT16_MARK = 65535;
    private static final int FIELD_ID_CHECKER = 20293;
    private static final int NEGATIVE_MARK = -65536;
    private static final int OFFSET16 = 16;

    private SafeParcelWriter() {
    }

    public static int beginObjectHeader(Parcel parcel) {
        return getStartPosition(parcel, FIELD_ID_CHECKER);
    }

    public static void finishObjectHeader(Parcel parcel, int i9) {
        handleDataOver(parcel, i9);
    }

    private static int getStartPosition(Parcel parcel, int i9) {
        parcel.writeInt(i9 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void handleDataOver(Parcel parcel, int i9) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i9 - 4);
        parcel.writeInt(dataPosition - i9);
        parcel.setDataPosition(dataPosition);
    }

    private static void setHeader(Parcel parcel, int i9, int i10) {
        if (i10 >= 65535) {
            parcel.writeInt(i9 | (-65536));
            parcel.writeInt(i10);
            return;
        }
        parcel.writeInt(i9 | (i10 << 16));
    }

    private static <P extends Parcelable> void setSizeOfData(Parcel parcel, P p10, int i9) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        p10.writeToParcel(parcel, i9);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    public static void writeBigDecimal(Parcel parcel, int i9, BigDecimal bigDecimal, boolean z10) {
        if (bigDecimal == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        parcel.writeByteArray(bigDecimal.unscaledValue().toByteArray());
        parcel.writeInt(bigDecimal.scale());
        handleDataOver(parcel, startPosition);
    }

    public static void writeBigDecimalArray(Parcel parcel, int i9, BigDecimal[] bigDecimalArr, boolean z10) {
        if (bigDecimalArr == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int length = bigDecimalArr.length;
        parcel.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            parcel.writeByteArray(bigDecimalArr[i10].unscaledValue().toByteArray());
            parcel.writeInt(bigDecimalArr[i10].scale());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeBigInteger(Parcel parcel, int i9, BigInteger bigInteger, boolean z10) {
        if (bigInteger != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeByteArray(bigInteger.toByteArray());
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeBigIntegerArray(Parcel parcel, int i9, BigInteger[] bigIntegerArr, boolean z10) {
        if (bigIntegerArr == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        parcel.writeInt(bigIntegerArr.length);
        for (BigInteger bigInteger : bigIntegerArr) {
            parcel.writeByteArray(bigInteger.toByteArray());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeBoolean(Parcel parcel, int i9, boolean z10) {
        setHeader(parcel, i9, 4);
        if (z10) {
            parcel.writeInt(1);
        } else {
            parcel.writeInt(0);
        }
    }

    public static void writeBooleanArray(Parcel parcel, int i9, boolean[] zArr, boolean z10) {
        if (zArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeBooleanArray(zArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeBooleanList(Parcel parcel, int i9, List<Boolean> list, boolean z10) {
        if (list == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(list.get(i10).booleanValue() ? 1 : 0);
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeBooleanObject(Parcel parcel, int i9, Boolean bool, boolean z10) {
        if (bool != null) {
            setHeader(parcel, i9, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeBundle(Parcel parcel, int i9, Bundle bundle, boolean z10) {
        if (bundle != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeBundle(bundle);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeByte(Parcel parcel, int i9, byte b10) {
        setHeader(parcel, i9, 4);
        parcel.writeInt(b10);
    }

    public static void writeByteArray(Parcel parcel, int i9, byte[] bArr, boolean z10) {
        if (bArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeByteArray(bArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeByteArrayArray(Parcel parcel, int i9, byte[][] bArr, boolean z10) {
        if (bArr == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeByteArraySparseArray(Parcel parcel, int i9, SparseArray<byte[]> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeByteArray(sparseArray.valueAt(i10));
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeChar(Parcel parcel, int i9, char c10) {
        setHeader(parcel, i9, 4);
        parcel.writeInt(c10);
    }

    public static void writeCharArray(Parcel parcel, int i9, char[] cArr, boolean z10) {
        if (cArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeCharArray(cArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeDouble(Parcel parcel, int i9, double d10) {
        setHeader(parcel, i9, 8);
        parcel.writeDouble(d10);
    }

    public static void writeDoubleArray(Parcel parcel, int i9, double[] dArr, boolean z10) {
        if (dArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeDoubleArray(dArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeDoubleList(Parcel parcel, int i9, List<Double> list, boolean z10) {
        if (list == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeDouble(list.get(i10).doubleValue());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeDoubleObject(Parcel parcel, int i9, Double d10, boolean z10) {
        if (d10 != null) {
            setHeader(parcel, i9, 8);
            parcel.writeDouble(d10.doubleValue());
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeDoubleSparseArray(Parcel parcel, int i9, SparseArray<Double> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeDouble(sparseArray.valueAt(i10).doubleValue());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeFloat(Parcel parcel, int i9, float f10) {
        setHeader(parcel, i9, 4);
        parcel.writeFloat(f10);
    }

    public static void writeFloatArray(Parcel parcel, int i9, float[] fArr, boolean z10) {
        if (fArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeFloatArray(fArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeFloatList(Parcel parcel, int i9, List<Float> list, boolean z10) {
        if (list == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeFloat(list.get(i10).floatValue());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeFloatObject(Parcel parcel, int i9, Float f10, boolean z10) {
        if (f10 != null) {
            setHeader(parcel, i9, 4);
            parcel.writeFloat(f10.floatValue());
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeFloatSparseArray(Parcel parcel, int i9, SparseArray<Float> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeFloat(sparseArray.valueAt(i10).floatValue());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeIBinder(Parcel parcel, int i9, IBinder iBinder, boolean z10) {
        if (iBinder != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeStrongBinder(iBinder);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeIBinderArray(Parcel parcel, int i9, IBinder[] iBinderArr, boolean z10) {
        if (iBinderArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeBinderArray(iBinderArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeIBinderList(Parcel parcel, int i9, List<IBinder> list, boolean z10) {
        if (list != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeBinderList(list);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeIBinderSparseArray(Parcel parcel, int i9, SparseArray<IBinder> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeStrongBinder(sparseArray.valueAt(i10));
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeInt(Parcel parcel, int i9, int i10) {
        setHeader(parcel, i9, 4);
        parcel.writeInt(i10);
    }

    public static void writeIntArray(Parcel parcel, int i9, int[] iArr, boolean z10) {
        if (iArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeIntArray(iArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeIntegerList(Parcel parcel, int i9, List<Integer> list, boolean z10) {
        if (list == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(list.get(i10).intValue());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeIntegerObject(Parcel parcel, int i9, Integer num, boolean z10) {
        if (num != null) {
            setHeader(parcel, i9, 4);
            parcel.writeInt(num.intValue());
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeList(Parcel parcel, int i9, List list, boolean z10) {
        if (list != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeList(list);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeLong(Parcel parcel, int i9, long j10) {
        setHeader(parcel, i9, 8);
        parcel.writeLong(j10);
    }

    public static void writeLongArray(Parcel parcel, int i9, long[] jArr, boolean z10) {
        if (jArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeLongArray(jArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeLongList(Parcel parcel, int i9, List<Long> list, boolean z10) {
        if (list == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeLong(list.get(i10).longValue());
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeLongObject(Parcel parcel, int i9, Long l10, boolean z10) {
        if (l10 != null) {
            setHeader(parcel, i9, 8);
            parcel.writeLong(l10.longValue());
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeParcel(Parcel parcel, int i9, Parcel parcel2, boolean z10) {
        if (parcel2 != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeParcelArray(Parcel parcel, int i9, Parcel[] parcelArr, boolean z10) {
        if (parcelArr == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int length = parcelArr.length;
        parcel.writeInt(length);
        for (int i10 = 0; i10 < length; i10++) {
            if (parcelArr[i10] == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(parcelArr[i10].dataSize());
                parcel.appendFrom(parcelArr[i10], 0, parcelArr[i10].dataSize());
            }
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeParcelList(Parcel parcel, int i9, List<Parcel> list, boolean z10) {
        if (list == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            Parcel parcel2 = list.get(i10);
            if (parcel2 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            }
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeParcelSparseArray(Parcel parcel, int i9, SparseArray<Parcel> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            Parcel valueAt = sparseArray.valueAt(i10);
            if (valueAt == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(valueAt.dataSize());
                parcel.appendFrom(valueAt, 0, valueAt.dataSize());
            }
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeParcelable(Parcel parcel, int i9, Parcelable parcelable, int i10, boolean z10) {
        if (parcelable != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcelable.writeToParcel(parcel, i10);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeShort(Parcel parcel, int i9, short s10) {
        setHeader(parcel, i9, 4);
        parcel.writeInt(s10);
    }

    public static void writeSparseBooleanArray(Parcel parcel, int i9, SparseBooleanArray sparseBooleanArray, boolean z10) {
        if (sparseBooleanArray != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeSparseBooleanArray(sparseBooleanArray);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeSparseIntArray(Parcel parcel, int i9, SparseIntArray sparseIntArray, boolean z10) {
        if (sparseIntArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseIntArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseIntArray.keyAt(i10));
            parcel.writeInt(sparseIntArray.valueAt(i10));
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeSparseLongArray(Parcel parcel, int i9, SparseLongArray sparseLongArray, boolean z10) {
        if (sparseLongArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseLongArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseLongArray.keyAt(i10));
            parcel.writeLong(sparseLongArray.valueAt(i10));
        }
        handleDataOver(parcel, startPosition);
    }

    public static void writeString(Parcel parcel, int i9, String str, boolean z10) {
        if (str != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeString(str);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeStringArray(Parcel parcel, int i9, String[] strArr, boolean z10) {
        if (strArr != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeStringArray(strArr);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeStringList(Parcel parcel, int i9, List<String> list, boolean z10) {
        if (list != null) {
            int startPosition = getStartPosition(parcel, i9);
            parcel.writeStringList(list);
            handleDataOver(parcel, startPosition);
        } else if (z10) {
            setHeader(parcel, i9, 0);
        }
    }

    public static void writeStringSparseArray(Parcel parcel, int i9, SparseArray<String> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            parcel.writeString(sparseArray.valueAt(i10));
        }
        handleDataOver(parcel, startPosition);
    }

    public static <P extends Parcelable> void writeTypedArray(Parcel parcel, int i9, P[] pArr, int i10, boolean z10) {
        if (pArr == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        parcel.writeInt(startPosition);
        int length = pArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (pArr[i11] != null) {
                setSizeOfData(parcel, pArr[i11], i10);
            } else {
                parcel.writeInt(0);
            }
        }
        handleDataOver(parcel, startPosition);
    }

    public static <T extends Parcelable> void writeTypedList(Parcel parcel, int i9, List<T> list, boolean z10) {
        if (list == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            T t10 = list.get(i10);
            if (t10 != null) {
                setSizeOfData(parcel, t10, 0);
            } else {
                parcel.writeInt(0);
            }
        }
        handleDataOver(parcel, startPosition);
    }

    public static <T extends Parcelable> void writeTypedSparseArray(Parcel parcel, int i9, SparseArray<T> sparseArray, boolean z10) {
        if (sparseArray == null) {
            if (z10) {
                setHeader(parcel, i9, 0);
                return;
            }
            return;
        }
        int startPosition = getStartPosition(parcel, i9);
        int size = sparseArray.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            parcel.writeInt(sparseArray.keyAt(i10));
            T valueAt = sparseArray.valueAt(i10);
            if (valueAt != null) {
                setSizeOfData(parcel, valueAt, 0);
            } else {
                parcel.writeInt(0);
            }
        }
        handleDataOver(parcel, startPosition);
    }
}
