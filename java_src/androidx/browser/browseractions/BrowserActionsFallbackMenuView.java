package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.RestrictTo;
import androidx.browser.R;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BrowserActionsFallbackMenuView extends LinearLayout {
    private final int mBrowserActionsMenuMaxWidthPx;
    private final int mBrowserActionsMenuMinPaddingPx;

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBrowserActionsMenuMinPaddingPx = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_min_padding);
        this.mBrowserActionsMenuMaxWidthPx = getResources().getDimensionPixelOffset(R.dimen.browser_actions_context_menu_max_width);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i9, int i10) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.mBrowserActionsMenuMinPaddingPx * 2), this.mBrowserActionsMenuMaxWidthPx), BasicMeasure.EXACTLY), i10);
    }
}
