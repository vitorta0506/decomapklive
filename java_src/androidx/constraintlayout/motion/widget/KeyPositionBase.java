package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.view.View;
import java.util.HashSet;
/* loaded from: classes.dex */
abstract class KeyPositionBase extends Key {
    protected static final float SELECTION_SLOPE = 20.0f;
    int mCurveFit = Key.UNSET;

    abstract void calcPosition(int i9, int i10, float f10, float f11, float f12, float f13);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    abstract float getPositionX();

    abstract float getPositionY();

    public abstract boolean intersects(int i9, int i10, RectF rectF, RectF rectF2, float f10, float f11);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void positionAttributes(View view, RectF rectF, RectF rectF2, float f10, float f11, String[] strArr, float[] fArr);
}
