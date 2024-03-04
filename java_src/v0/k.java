package v0;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.modulars.live.common.x;
import j0.l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f58620a = "0123456789abcdef".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f58621b = new char[64];
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static volatile Handler f58622c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f58623a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f58623a = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f58623a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f58623a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f58623a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f58623a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private k() {
    }

    public static void a() {
        if (!r()) {
            throw new IllegalArgumentException("You must call this method on a background thread");
        }
    }

    public static void b() {
        if (!s()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        } else if (obj instanceof l) {
            return ((l) obj).a(obj2);
        } else {
            return obj.equals(obj2);
        }
    }

    public static boolean d(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @NonNull
    private static String e(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i9 = 0; i9 < bArr.length; i9++) {
            int i10 = bArr[i9] & UByte.MAX_VALUE;
            int i11 = i9 * 2;
            char[] cArr2 = f58620a;
            cArr[i11] = cArr2[i10 >>> 4];
            cArr[i11 + 1] = cArr2[i10 & 15];
        }
        return new String(cArr);
    }

    @NonNull
    public static <T> Queue<T> f(int i9) {
        return new ArrayDeque(i9);
    }

    public static int g(int i9, int i10, @Nullable Bitmap.Config config) {
        return i9 * i10 * i(config);
    }

    public static int h(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getHeight() * bitmap.getRowBytes();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + x.f19108w + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static int i(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i9 = a.f58623a[config.ordinal()];
        if (i9 != 1) {
            if (i9 == 2 || i9 == 3) {
                return 2;
            }
            return i9 != 4 ? 4 : 8;
        }
        return 1;
    }

    @NonNull
    public static <T> List<T> j(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t10 : collection) {
            if (t10 != null) {
                arrayList.add(t10);
            }
        }
        return arrayList;
    }

    private static Handler k() {
        if (f58622c == null) {
            synchronized (k.class) {
                if (f58622c == null) {
                    f58622c = new Handler(Looper.getMainLooper());
                }
            }
        }
        return f58622c;
    }

    public static int l(float f10) {
        return m(f10, 17);
    }

    public static int m(float f10, int i9) {
        return o(Float.floatToIntBits(f10), i9);
    }

    public static int n(int i9) {
        return o(i9, 17);
    }

    public static int o(int i9, int i10) {
        return (i10 * 31) + i9;
    }

    public static int p(@Nullable Object obj, int i9) {
        return o(obj == null ? 0 : obj.hashCode(), i9);
    }

    public static int q(boolean z10, int i9) {
        return o(z10 ? 1 : 0, i9);
    }

    public static boolean r() {
        return !s();
    }

    public static boolean s() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private static boolean t(int i9) {
        return i9 > 0 || i9 == Integer.MIN_VALUE;
    }

    public static boolean u(int i9, int i10) {
        return t(i9) && t(i10);
    }

    public static void v(Runnable runnable) {
        k().post(runnable);
    }

    public static void w(Runnable runnable) {
        k().removeCallbacks(runnable);
    }

    @NonNull
    public static String x(@NonNull byte[] bArr) {
        String e10;
        char[] cArr = f58621b;
        synchronized (cArr) {
            e10 = e(bArr, cArr);
        }
        return e10;
    }
}
