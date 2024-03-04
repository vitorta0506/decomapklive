package e4;

import androidx.annotation.NonNull;
import java.lang.reflect.Array;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class b {
    @NonNull
    public static <T> T[] a(@NonNull T[]... tArr) {
        if (tArr.length != 0) {
            int i9 = 0;
            for (T[] tArr2 : tArr) {
                i9 += tArr2.length;
            }
            T[] tArr3 = (T[]) Arrays.copyOf(tArr[0], i9);
            int length = tArr[0].length;
            for (int i10 = 1; i10 < tArr.length; i10++) {
                T[] tArr4 = tArr[i10];
                int length2 = tArr4.length;
                System.arraycopy(tArr4, 0, tArr3, length, length2);
                length += length2;
            }
            return tArr3;
        }
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass(), 0));
    }

    public static boolean b(@NonNull int[] iArr, int i9) {
        if (iArr == null) {
            return false;
        }
        for (int i10 : iArr) {
            if (i10 == i9) {
                return true;
            }
        }
        return false;
    }

    public static <T> boolean c(@NonNull T[] tArr, @NonNull T t10) {
        int length = tArr != null ? tArr.length : 0;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                break;
            } else if (!com.google.android.gms.common.internal.n.b(tArr[i9], t10)) {
                i9++;
            } else if (i9 >= 0) {
                return true;
            }
        }
        return false;
    }

    public static void d(@NonNull StringBuilder sb2, @NonNull double[] dArr) {
        int length = dArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append(Double.toString(dArr[i9]));
        }
    }

    public static void e(@NonNull StringBuilder sb2, @NonNull float[] fArr) {
        int length = fArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append(Float.toString(fArr[i9]));
        }
    }

    public static void f(@NonNull StringBuilder sb2, @NonNull int[] iArr) {
        int length = iArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append(Integer.toString(iArr[i9]));
        }
    }

    public static void g(@NonNull StringBuilder sb2, @NonNull long[] jArr) {
        int length = jArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append(Long.toString(jArr[i9]));
        }
    }

    public static <T> void h(@NonNull StringBuilder sb2, @NonNull T[] tArr) {
        int length = tArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append(tArr[i9]);
        }
    }

    public static void i(@NonNull StringBuilder sb2, @NonNull boolean[] zArr) {
        int length = zArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append(Boolean.toString(zArr[i9]));
        }
    }

    public static void j(@NonNull StringBuilder sb2, @NonNull String[] strArr) {
        int length = strArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (i9 != 0) {
                sb2.append(",");
            }
            sb2.append("\"");
            sb2.append(strArr[i9]);
            sb2.append("\"");
        }
    }
}
