package androidx.legacy.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
@Deprecated
/* loaded from: classes.dex */
public class Space extends View {
    @Deprecated
    public Space(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        if (getVisibility() == 0) {
            setVisibility(4);
        }
    }

    private static int getDefaultSize2(int i9, int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != Integer.MIN_VALUE) {
            return mode != 1073741824 ? i9 : size;
        }
        return Math.min(i9, size);
    }

    @Override // android.view.View
    @Deprecated
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    @Deprecated
    protected void onMeasure(int i9, int i10) {
        setMeasuredDimension(getDefaultSize2(getSuggestedMinimumWidth(), i9), getDefaultSize2(getSuggestedMinimumHeight(), i10));
    }

    @Deprecated
    public Space(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Deprecated
    public Space(@NonNull Context context) {
        this(context, null);
    }
}
