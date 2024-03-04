package androidx.cardview.widget;

import android.graphics.drawable.Drawable;
import android.view.View;
/* loaded from: classes.dex */
interface CardViewDelegate {
    Drawable getCardBackground();

    View getCardView();

    boolean getPreventCornerOverlap();

    boolean getUseCompatPadding();

    void setCardBackground(Drawable drawable);

    void setMinWidthHeightInternal(int i9, int i10);

    void setShadowPadding(int i9, int i10, int i11, int i12);
}
