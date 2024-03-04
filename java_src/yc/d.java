package yc;

import android.os.Parcel;
import java.util.Date;
/* loaded from: classes4.dex */
public final class d {
    public static Date a(Parcel parcel) {
        long readLong = parcel.readLong();
        if (readLong != -1) {
            return new Date(readLong);
        }
        return null;
    }

    public static <T extends Enum<T>> T b(Parcel parcel, Class<T> cls) {
        String readString = parcel.readString();
        if (readString != null) {
            return (T) Enum.valueOf(cls, readString);
        }
        return null;
    }

    public static void c(Parcel parcel, Date date) {
        parcel.writeLong(date != null ? date.getTime() : -1L);
    }

    public static <T extends Enum> void d(Parcel parcel, T t10) {
        parcel.writeString(t10 != null ? t10.name() : null);
    }
}
