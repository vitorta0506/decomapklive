package h1;

import android.widget.ImageView;
import androidx.core.view.MotionEventCompat;
/* loaded from: classes.dex */
class l {

    /* loaded from: classes.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f40324a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f40324a = iArr;
            try {
                iArr[ImageView.ScaleType.MATRIX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(float f10, float f11, float f12) {
        if (f10 >= f11) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f11 >= f12) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i9) {
        return (i9 & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(ImageView imageView) {
        return imageView.getDrawable() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            return false;
        }
        if (a.f40324a[scaleType.ordinal()] != 1) {
            return true;
        }
        throw new IllegalStateException("Matrix scale type is not supported");
    }
}
