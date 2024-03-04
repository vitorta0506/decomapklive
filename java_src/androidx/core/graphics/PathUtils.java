package androidx.core.graphics;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class PathUtils {
    private PathUtils() {
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path) {
        return flatten(path, 0.5f);
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path, @FloatRange(from = 0.0d) float f10) {
        float[] approximate = path.approximate(f10);
        int length = approximate.length / 3;
        ArrayList arrayList = new ArrayList(length);
        for (int i9 = 1; i9 < length; i9++) {
            int i10 = i9 * 3;
            int i11 = (i9 - 1) * 3;
            float f11 = approximate[i10];
            float f12 = approximate[i10 + 1];
            float f13 = approximate[i10 + 2];
            float f14 = approximate[i11];
            float f15 = approximate[i11 + 1];
            float f16 = approximate[i11 + 2];
            if (f11 != f14 && (f12 != f15 || f13 != f16)) {
                arrayList.add(new PathSegment(new PointF(f15, f16), f14, new PointF(f12, f13), f11));
            }
        }
        return arrayList;
    }
}
