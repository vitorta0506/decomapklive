package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class CompositeOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {
    @NonNull
    private final List<ViewPager2.OnPageChangeCallback> mCallbacks;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeOnPageChangeCallback(int i9) {
        this.mCallbacks = new ArrayList(i9);
    }

    private void throwCallbackListModifiedWhileInUse(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallbacks.add(onPageChangeCallback);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i9) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.mCallbacks) {
                onPageChangeCallback.onPageScrollStateChanged(i9);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i9, float f10, @Px int i10) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.mCallbacks) {
                onPageChangeCallback.onPageScrolled(i9, f10, i10);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i9) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.mCallbacks) {
                onPageChangeCallback.onPageSelected(i9);
            }
        } catch (ConcurrentModificationException e10) {
            throwCallbackListModifiedWhileInUse(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeOnPageChangeCallback(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.mCallbacks.remove(onPageChangeCallback);
    }
}
