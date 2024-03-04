package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
@RequiresApi(21)
/* loaded from: classes2.dex */
class FadeModeResult {
    final int endAlpha;
    final boolean endOnTop;
    final int startAlpha;

    private FadeModeResult(int i9, int i10, boolean z10) {
        this.startAlpha = i9;
        this.endAlpha = i10;
        this.endOnTop = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult endOnTop(int i9, int i10) {
        return new FadeModeResult(i9, i10, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FadeModeResult startOnTop(int i9, int i10) {
        return new FadeModeResult(i9, i10, false);
    }
}
