package ae;

import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class d {
    public static boolean a(@NonNull View view, PointF pointF, boolean z10) {
        if (c(view) && view.getVisibility() == 0) {
            return false;
        }
        if ((view instanceof ViewGroup) && pointF != null && !e.c(view)) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            PointF pointF2 = new PointF();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = viewGroup.getChildAt(i9);
                if (e(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if ("fixed".equals(childAt.getTag())) {
                        return false;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    boolean a10 = a(childAt, pointF, z10);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return a10;
                }
            }
        }
        return z10 || d(view);
    }

    public static boolean b(@NonNull View view, PointF pointF) {
        if (d(view) && view.getVisibility() == 0) {
            return false;
        }
        if (!(view instanceof ViewGroup) || pointF == null) {
            return true;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        PointF pointF2 = new PointF();
        for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount - 1);
            if (e(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                if ("fixed".equals(childAt.getTag())) {
                    return false;
                }
                pointF.offset(pointF2.x, pointF2.y);
                boolean b10 = b(childAt, pointF);
                pointF.offset(-pointF2.x, -pointF2.y);
                return b10;
            }
        }
        return true;
    }

    public static boolean c(@NonNull View view) {
        return view.canScrollVertically(1);
    }

    public static boolean d(@NonNull View view) {
        return view.canScrollVertically(-1);
    }

    public static boolean e(@NonNull View view, @NonNull View view2, float f10, float f11, PointF pointF) {
        if (view2.getVisibility() != 0) {
            return false;
        }
        float[] fArr = {f10, f11};
        fArr[0] = fArr[0] + (view.getScrollX() - view2.getLeft());
        fArr[1] = fArr[1] + (view.getScrollY() - view2.getTop());
        boolean z10 = fArr[0] >= 0.0f && fArr[1] >= 0.0f && fArr[0] < ((float) view2.getWidth()) && fArr[1] < ((float) view2.getHeight());
        if (z10 && pointF != null) {
            pointF.set(fArr[0] - f10, fArr[1] - f11);
        }
        return z10;
    }
}
