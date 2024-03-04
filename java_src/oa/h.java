package oa;

import androidx.recyclerview.widget.RecyclerView;
import com.unity3d.services.ads.adunit.AdUnitActivity;
/* loaded from: classes3.dex */
public class h {
    public static b a(RecyclerView recyclerView, int i9) {
        if (i9 != 0) {
            if (i9 == 1) {
                return new a(new pa.b(recyclerView));
            }
            throw new IllegalArgumentException(AdUnitActivity.EXTRA_ORIENTATION);
        }
        return new i(new pa.b(recyclerView));
    }
}
