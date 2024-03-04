package cd;

import android.content.Context;
import com.previewlibrary.R$dimen;
/* loaded from: classes4.dex */
public class a {
    public static int a(Context context) {
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R$dimen.yms_dimens_50_0_px);
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : dimensionPixelSize;
    }
}
