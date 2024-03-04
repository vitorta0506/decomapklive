package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class SafeParcelReader {

    /* loaded from: classes2.dex */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ParseException(@androidx.annotation.NonNull java.lang.String r3, @androidx.annotation.NonNull android.os.Parcel r4) {
            /*
                r2 = this;
                int r0 = r4.dataPosition()
                int r4 = r4.dataSize()
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                r1.append(r3)
                java.lang.String r3 = " Parcel: pos="
                r1.append(r3)
                r1.append(r0)
                java.lang.String r3 = " size="
                r1.append(r3)
                r1.append(r4)
                java.lang.String r3 = r1.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ParseException.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    @NonNull
    public static Float A(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        if (G == 0) {
            return null;
        }
        J(parcel, i9, G, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static int B(@NonNull Parcel parcel) {
        return parcel.readInt();
    }

    @NonNull
    public static IBinder C(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + G);
        return readStrongBinder;
    }

    public static int D(@NonNull Parcel parcel, int i9) {
        K(parcel, i9, 4);
        return parcel.readInt();
    }

    public static long E(@NonNull Parcel parcel, int i9) {
        K(parcel, i9, 8);
        return parcel.readLong();
    }

    @NonNull
    public static Long F(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        if (G == 0) {
            return null;
        }
        J(parcel, i9, G, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static int G(@NonNull Parcel parcel, int i9) {
        return (i9 & SupportMenu.CATEGORY_MASK) != -65536 ? (char) (i9 >> 16) : parcel.readInt();
    }

    public static void H(@NonNull Parcel parcel, int i9) {
        parcel.setDataPosition(parcel.dataPosition() + G(parcel, i9));
    }

    public static int I(@NonNull Parcel parcel) {
        int B = B(parcel);
        int G = G(parcel, B);
        int dataPosition = parcel.dataPosition();
        if (u(B) == 20293) {
            int i9 = G + dataPosition;
            if (i9 < dataPosition || i9 > parcel.dataSize()) {
                throw new ParseException("Size read is invalid start=" + dataPosition + " end=" + i9, parcel);
            }
            return i9;
        }
        throw new ParseException("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(B))), parcel);
    }

    private static void J(Parcel parcel, int i9, int i10, int i11) {
        if (i10 == i11) {
            return;
        }
        String hexString = Integer.toHexString(i10);
        throw new ParseException("Expected size " + i11 + " got " + i10 + " (0x" + hexString + ")", parcel);
    }

    private static void K(Parcel parcel, int i9, int i10) {
        int G = G(parcel, i9);
        if (G == i10) {
            return;
        }
        String hexString = Integer.toHexString(G);
        throw new ParseException("Expected size " + i10 + " got " + G + " (0x" + hexString + ")", parcel);
    }

    @NonNull
    public static BigDecimal a(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + G);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    @NonNull
    public static BigDecimal[] b(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i10] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + G);
        return bigDecimalArr;
    }

    @NonNull
    public static BigInteger c(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + G);
        return new BigInteger(createByteArray);
    }

    @NonNull
    public static BigInteger[] d(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            bigIntegerArr[i10] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + G);
        return bigIntegerArr;
    }

    @NonNull
    public static boolean[] e(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + G);
        return createBooleanArray;
    }

    @NonNull
    public static Bundle f(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + G);
        return readBundle;
    }

    @NonNull
    public static byte[] g(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + G);
        return createByteArray;
    }

    @NonNull
    public static double[] h(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + G);
        return createDoubleArray;
    }

    @NonNull
    public static float[] i(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + G);
        return createFloatArray;
    }

    @NonNull
    public static int[] j(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + G);
        return createIntArray;
    }

    @NonNull
    public static long[] k(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + G);
        return createLongArray;
    }

    @NonNull
    public static Parcel l(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, G);
        parcel.setDataPosition(dataPosition + G);
        return obtain;
    }

    @NonNull
    public static Parcel[] m(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i10 = 0; i10 < readInt; i10++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i10] = obtain;
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                parcelArr[i10] = null;
            }
        }
        parcel.setDataPosition(dataPosition + G);
        return parcelArr;
    }

    @NonNull
    public static <T extends Parcelable> T n(@NonNull Parcel parcel, int i9, @NonNull Parcelable.Creator<T> creator) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + G);
        return createFromParcel;
    }

    @NonNull
    public static String o(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + G);
        return readString;
    }

    @NonNull
    public static String[] p(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + G);
        return createStringArray;
    }

    @NonNull
    public static ArrayList<String> q(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + G);
        return createStringArrayList;
    }

    @NonNull
    public static <T> T[] r(@NonNull Parcel parcel, int i9, @NonNull Parcelable.Creator<T> creator) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + G);
        return tArr;
    }

    @NonNull
    public static <T> ArrayList<T> s(@NonNull Parcel parcel, int i9, @NonNull Parcelable.Creator<T> creator) {
        int G = G(parcel, i9);
        int dataPosition = parcel.dataPosition();
        if (G == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + G);
        return createTypedArrayList;
    }

    public static void t(@NonNull Parcel parcel, int i9) {
        if (parcel.dataPosition() == i9) {
            return;
        }
        throw new ParseException("Overread allowed size end=" + i9, parcel);
    }

    public static int u(int i9) {
        return (char) i9;
    }

    public static boolean v(@NonNull Parcel parcel, int i9) {
        K(parcel, i9, 4);
        return parcel.readInt() != 0;
    }

    @NonNull
    public static Boolean w(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        if (G == 0) {
            return null;
        }
        J(parcel, i9, G, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static double x(@NonNull Parcel parcel, int i9) {
        K(parcel, i9, 8);
        return parcel.readDouble();
    }

    @NonNull
    public static Double y(@NonNull Parcel parcel, int i9) {
        int G = G(parcel, i9);
        if (G == 0) {
            return null;
        }
        J(parcel, i9, G, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float z(@NonNull Parcel parcel, int i9) {
        K(parcel, i9, 4);
        return parcel.readFloat();
    }
}
