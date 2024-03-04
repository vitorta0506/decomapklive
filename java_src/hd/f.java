package hd;

import android.animation.IntEvaluator;
import android.animation.PropertyValuesHolder;
import androidx.annotation.NonNull;
import ed.b;
/* loaded from: classes4.dex */
public class f extends e {
    public f(@NonNull b.a aVar) {
        super(aVar);
    }

    @Override // hd.e
    @NonNull
    protected PropertyValuesHolder n(boolean z10) {
        int i9;
        int i10;
        String str;
        if (z10) {
            i10 = this.f40594g;
            i9 = (int) (i10 * this.f40595h);
            str = "ANIMATION_SCALE_REVERSE";
        } else {
            i9 = this.f40594g;
            i10 = (int) (i9 * this.f40595h);
            str = "ANIMATION_SCALE";
        }
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, i9, i10);
        ofInt.setEvaluator(new IntEvaluator());
        return ofInt;
    }
}
