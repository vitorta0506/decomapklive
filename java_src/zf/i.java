package zf;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
/* loaded from: classes5.dex */
public class i extends StateListDrawable {

    /* renamed from: a  reason: collision with root package name */
    private int f60461a;

    public i(Drawable drawable, int i9) {
        this.f60461a = i9;
        addState(new int[]{16842913}, drawable);
        addState(new int[0], drawable);
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.StateListDrawable, android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean z10 = false;
        for (int i9 : iArr) {
            if (i9 == 16842913) {
                z10 = true;
            }
        }
        if (z10) {
            super.setColorFilter(this.f60461a, PorterDuff.Mode.SRC_ATOP);
        } else {
            super.clearColorFilter();
        }
        return super.onStateChange(iArr);
    }
}
