package x3;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import java.util.List;
/* loaded from: classes2.dex */
public class a {
    public static int a(@NonNull Parcel parcel) {
        return v(parcel, 20293);
    }

    public static void b(@NonNull Parcel parcel, int i9) {
        w(parcel, i9);
    }

    public static void c(@NonNull Parcel parcel, int i9, boolean z10) {
        x(parcel, i9, 4);
        parcel.writeInt(z10 ? 1 : 0);
    }

    public static void d(@NonNull Parcel parcel, int i9, @NonNull Boolean bool, boolean z10) {
        if (bool != null) {
            x(parcel, i9, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z10) {
            x(parcel, i9, 0);
        }
    }

    public static void e(@NonNull Parcel parcel, int i9, @NonNull Bundle bundle, boolean z10) {
        if (bundle == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeBundle(bundle);
        w(parcel, v10);
    }

    public static void f(@NonNull Parcel parcel, int i9, @NonNull byte[] bArr, boolean z10) {
        if (bArr == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeByteArray(bArr);
        w(parcel, v10);
    }

    public static void g(@NonNull Parcel parcel, int i9, @NonNull Double d10, boolean z10) {
        if (d10 != null) {
            x(parcel, i9, 8);
            parcel.writeDouble(d10.doubleValue());
        } else if (z10) {
            x(parcel, i9, 0);
        }
    }

    public static void h(@NonNull Parcel parcel, int i9, float f10) {
        x(parcel, i9, 4);
        parcel.writeFloat(f10);
    }

    public static void i(@NonNull Parcel parcel, int i9, @NonNull Float f10, boolean z10) {
        if (f10 != null) {
            x(parcel, i9, 4);
            parcel.writeFloat(f10.floatValue());
        } else if (z10) {
            x(parcel, i9, 0);
        }
    }

    public static void j(@NonNull Parcel parcel, int i9, @NonNull IBinder iBinder, boolean z10) {
        if (iBinder == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeStrongBinder(iBinder);
        w(parcel, v10);
    }

    public static void k(@NonNull Parcel parcel, int i9, int i10) {
        x(parcel, i9, 4);
        parcel.writeInt(i10);
    }

    public static void l(@NonNull Parcel parcel, int i9, @NonNull int[] iArr, boolean z10) {
        if (iArr == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeIntArray(iArr);
        w(parcel, v10);
    }

    public static void m(@NonNull Parcel parcel, int i9, long j10) {
        x(parcel, i9, 8);
        parcel.writeLong(j10);
    }

    public static void n(@NonNull Parcel parcel, int i9, @NonNull Long l10, boolean z10) {
        if (l10 != null) {
            x(parcel, i9, 8);
            parcel.writeLong(l10.longValue());
        } else if (z10) {
            x(parcel, i9, 0);
        }
    }

    public static void o(@NonNull Parcel parcel, int i9, @NonNull Parcel parcel2, boolean z10) {
        if (parcel2 == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        w(parcel, v10);
    }

    public static void p(@NonNull Parcel parcel, int i9, @NonNull Parcelable parcelable, int i10, boolean z10) {
        if (parcelable == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcelable.writeToParcel(parcel, i10);
        w(parcel, v10);
    }

    public static void q(@NonNull Parcel parcel, int i9, @NonNull String str, boolean z10) {
        if (str == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeString(str);
        w(parcel, v10);
    }

    public static void r(@NonNull Parcel parcel, int i9, @NonNull String[] strArr, boolean z10) {
        if (strArr == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeStringArray(strArr);
        w(parcel, v10);
    }

    public static void s(@NonNull Parcel parcel, int i9, @NonNull List<String> list, boolean z10) {
        if (list == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeStringList(list);
        w(parcel, v10);
    }

    public static <T extends Parcelable> void t(@NonNull Parcel parcel, int i9, @NonNull T[] tArr, int i10, boolean z10) {
        if (tArr == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        parcel.writeInt(tArr.length);
        for (T t10 : tArr) {
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                y(parcel, t10, i10);
            }
        }
        w(parcel, v10);
    }

    public static <T extends Parcelable> void u(@NonNull Parcel parcel, int i9, @NonNull List<T> list, boolean z10) {
        if (list == null) {
            if (z10) {
                x(parcel, i9, 0);
                return;
            }
            return;
        }
        int v10 = v(parcel, i9);
        int size = list.size();
        parcel.writeInt(size);
        for (int i10 = 0; i10 < size; i10++) {
            T t10 = list.get(i10);
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                y(parcel, t10, 0);
            }
        }
        w(parcel, v10);
    }

    private static int v(Parcel parcel, int i9) {
        parcel.writeInt(i9 | SupportMenu.CATEGORY_MASK);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    private static void w(Parcel parcel, int i9) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i9 - 4);
        parcel.writeInt(dataPosition - i9);
        parcel.setDataPosition(dataPosition);
    }

    private static void x(Parcel parcel, int i9, int i10) {
        parcel.writeInt(i9 | (i10 << 16));
    }

    private static void y(Parcel parcel, Parcelable parcelable, int i9) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i9);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
}
