package androidx.core.view;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public interface NestedScrollingChild2 extends NestedScrollingChild {
    boolean dispatchNestedPreScroll(int i9, int i10, @Nullable int[] iArr, @Nullable int[] iArr2, int i11);

    boolean dispatchNestedScroll(int i9, int i10, int i11, int i12, @Nullable int[] iArr, int i13);

    boolean hasNestedScrollingParent(int i9);

    boolean startNestedScroll(int i9, int i10);

    void stopNestedScroll(int i9);
}
