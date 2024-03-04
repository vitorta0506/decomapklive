package androidx.core.util;

import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Locale;
import java.util.Objects;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static int checkArgumentInRange(int i9, int i10, int i11, @NonNull String str) {
        if (i9 >= i10) {
            if (i9 <= i11) {
                return i9;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i10), Integer.valueOf(i11)));
    }

    @IntRange(from = 0)
    public static int checkArgumentNonnegative(int i9, @Nullable String str) {
        if (i9 >= 0) {
            return i9;
        }
        throw new IllegalArgumentException(str);
    }

    public static int checkFlagsArgument(int i9, int i10) {
        if ((i9 & i10) == i9) {
            return i9;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i9) + ", but only 0x" + Integer.toHexString(i10) + " are allowed");
    }

    @NonNull
    public static <T> T checkNotNull(@Nullable T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }

    public static void checkState(boolean z10, @Nullable String str) {
        if (!z10) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t10) {
        if (TextUtils.isEmpty(t10)) {
            throw new IllegalArgumentException();
        }
        return t10;
    }

    public static void checkArgument(boolean z10, @NonNull Object obj) {
        if (!z10) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @IntRange(from = 0)
    public static int checkArgumentNonnegative(int i9) {
        if (i9 >= 0) {
            return i9;
        }
        throw new IllegalArgumentException();
    }

    @NonNull
    public static <T> T checkNotNull(@Nullable T t10, @NonNull Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z10) {
        checkState(z10, null);
    }

    public static void checkArgument(boolean z10, @NonNull String str, @NonNull Object... objArr) {
        if (!z10) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t10, @NonNull Object obj) {
        if (TextUtils.isEmpty(t10)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return t10;
    }

    @NonNull
    public static <T extends CharSequence> T checkStringNotEmpty(@Nullable T t10, @NonNull String str, @NonNull Object... objArr) {
        if (TextUtils.isEmpty(t10)) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
        return t10;
    }

    public static long checkArgumentInRange(long j10, long j11, long j12, @NonNull String str) {
        if (j10 >= j11) {
            if (j10 <= j12) {
                return j10;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Long.valueOf(j11), Long.valueOf(j12)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Long.valueOf(j11), Long.valueOf(j12)));
    }

    public static float checkArgumentInRange(float f10, float f11, float f12, @NonNull String str) {
        if (f10 >= f11) {
            if (f10 <= f12) {
                return f10;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Float.valueOf(f11), Float.valueOf(f12)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Float.valueOf(f11), Float.valueOf(f12)));
    }

    public static double checkArgumentInRange(double d10, double d11, double d12, @NonNull String str) {
        if (d10 >= d11) {
            if (d10 <= d12) {
                return d10;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too high)", str, Double.valueOf(d11), Double.valueOf(d12)));
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%f, %f] (too low)", str, Double.valueOf(d11), Double.valueOf(d12)));
    }
}
