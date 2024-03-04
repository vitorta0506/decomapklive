package com.google.android.material.snackbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {
    private Button actionView;
    private int maxInlineActionWidth;
    private TextView messageView;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    private static void updateTopBottomPadding(@NonNull View view, int i9, int i10) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i9, ViewCompat.getPaddingEnd(view), i10);
        } else {
            view.setPadding(view.getPaddingLeft(), i9, view.getPaddingRight(), i10);
        }
    }

    private boolean updateViewsWithinLayout(int i9, int i10, int i11) {
        boolean z10;
        if (i9 != getOrientation()) {
            setOrientation(i9);
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.messageView.getPaddingTop() == i10 && this.messageView.getPaddingBottom() == i11) {
            return z10;
        }
        updateTopBottomPadding(this.messageView, i10, i11);
        return true;
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentIn(int i9, int i10) {
        this.messageView.setAlpha(0.0f);
        long j10 = i10;
        long j11 = i9;
        this.messageView.animate().alpha(1.0f).setDuration(j10).setStartDelay(j11).start();
        if (this.actionView.getVisibility() == 0) {
            this.actionView.setAlpha(0.0f);
            this.actionView.animate().alpha(1.0f).setDuration(j10).setStartDelay(j11).start();
        }
    }

    @Override // com.google.android.material.snackbar.ContentViewCallback
    public void animateContentOut(int i9, int i10) {
        this.messageView.setAlpha(1.0f);
        long j10 = i10;
        long j11 = i9;
        this.messageView.animate().alpha(0.0f).setDuration(j10).setStartDelay(j11).start();
        if (this.actionView.getVisibility() == 0) {
            this.actionView.setAlpha(1.0f);
            this.actionView.animate().alpha(0.0f).setDuration(j10).setStartDelay(j11).start();
        }
    }

    public Button getActionView() {
        return this.actionView;
    }

    public TextView getMessageView() {
        return this.messageView;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.messageView = (TextView) findViewById(R.id.snackbar_text);
        this.actionView = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003e, code lost:
        if (updateViewsWithinLayout(1, r0, r0 - r1) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (updateViewsWithinLayout(0, r0, r0) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
        r3 = true;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            android.content.res.Resources r0 = r7.getResources()
            int r1 = com.google.android.material.R.dimen.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r2 = com.google.android.material.R.dimen.design_snackbar_padding_vertical
            int r1 = r1.getDimensionPixelSize(r2)
            android.widget.TextView r2 = r7.messageView
            android.text.Layout r2 = r2.getLayout()
            int r2 = r2.getLineCount()
            r3 = 0
            r4 = 1
            if (r2 <= r4) goto L27
            r2 = 1
            goto L28
        L27:
            r2 = 0
        L28:
            if (r2 == 0) goto L41
            int r5 = r7.maxInlineActionWidth
            if (r5 <= 0) goto L41
            android.widget.Button r5 = r7.actionView
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.maxInlineActionWidth
            if (r5 <= r6) goto L41
            int r1 = r0 - r1
            boolean r0 = r7.updateViewsWithinLayout(r4, r0, r1)
            if (r0 == 0) goto L4c
            goto L4b
        L41:
            if (r2 == 0) goto L44
            goto L45
        L44:
            r0 = r1
        L45:
            boolean r0 = r7.updateViewsWithinLayout(r3, r0, r0)
            if (r0 == 0) goto L4c
        L4b:
            r3 = 1
        L4c:
            if (r3 == 0) goto L51
            super.onMeasure(r8, r9)
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public void setMaxInlineActionWidth(int i9) {
        this.maxInlineActionWidth = i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateActionTextColorAlphaIfNeeded(float f10) {
        if (f10 != 1.0f) {
            this.actionView.setTextColor(MaterialColors.layer(MaterialColors.getColor(this, R.attr.colorSurface), this.actionView.getCurrentTextColor(), f10));
        }
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
