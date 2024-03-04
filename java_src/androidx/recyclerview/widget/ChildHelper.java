package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChildHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "ChildrenHelper";
    final Callback mCallback;
    final Bucket mBucket = new Bucket();
    final List<View> mHiddenViews = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Bucket {
        static final int BITS_PER_WORD = 64;
        static final long LAST_BIT = Long.MIN_VALUE;
        long mData = 0;
        Bucket mNext;

        Bucket() {
        }

        private void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        void clear(int i9) {
            if (i9 >= 64) {
                Bucket bucket = this.mNext;
                if (bucket != null) {
                    bucket.clear(i9 - 64);
                    return;
                }
                return;
            }
            this.mData &= ~(1 << i9);
        }

        int countOnesBefore(int i9) {
            Bucket bucket = this.mNext;
            if (bucket == null) {
                if (i9 >= 64) {
                    return Long.bitCount(this.mData);
                }
                return Long.bitCount(this.mData & ((1 << i9) - 1));
            } else if (i9 < 64) {
                return Long.bitCount(this.mData & ((1 << i9) - 1));
            } else {
                return bucket.countOnesBefore(i9 - 64) + Long.bitCount(this.mData);
            }
        }

        boolean get(int i9) {
            if (i9 < 64) {
                return (this.mData & (1 << i9)) != 0;
            }
            ensureNext();
            return this.mNext.get(i9 - 64);
        }

        void insert(int i9, boolean z10) {
            if (i9 >= 64) {
                ensureNext();
                this.mNext.insert(i9 - 64, z10);
                return;
            }
            long j10 = this.mData;
            boolean z11 = (Long.MIN_VALUE & j10) != 0;
            long j11 = (1 << i9) - 1;
            this.mData = ((j10 & (~j11)) << 1) | (j10 & j11);
            if (z10) {
                set(i9);
            } else {
                clear(i9);
            }
            if (z11 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z11);
            }
        }

        boolean remove(int i9) {
            if (i9 >= 64) {
                ensureNext();
                return this.mNext.remove(i9 - 64);
            }
            long j10 = 1 << i9;
            long j11 = this.mData;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (~j10);
            this.mData = j12;
            long j13 = j10 - 1;
            this.mData = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z10;
        }

        void reset() {
            this.mData = 0L;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.reset();
            }
        }

        void set(int i9) {
            if (i9 >= 64) {
                ensureNext();
                this.mNext.set(i9 - 64);
                return;
            }
            this.mData |= 1 << i9;
        }

        public String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Callback {
        void addView(View view, int i9);

        void attachViewToParent(View view, int i9, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int i9);

        View getChildAt(int i9);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    private int getOffset(int i9) {
        if (i9 < 0) {
            return -1;
        }
        int childCount = this.mCallback.getChildCount();
        int i10 = i9;
        while (i10 < childCount) {
            int countOnesBefore = i9 - (i10 - this.mBucket.countOnesBefore(i10));
            if (countOnesBefore == 0) {
                while (this.mBucket.get(i10)) {
                    i10++;
                }
                return i10;
            }
            i10 += countOnesBefore;
        }
        return -1;
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (this.mHiddenViews.remove(view)) {
            this.mCallback.onLeftHiddenState(view);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addView(View view, boolean z10) {
        addView(view, -1, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void attachViewToParent(View view, int i9, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int offset;
        if (i9 < 0) {
            offset = this.mCallback.getChildCount();
        } else {
            offset = getOffset(i9);
        }
        this.mBucket.insert(offset, z10);
        if (z10) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, offset, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detachViewFromParent(int i9) {
        int offset = getOffset(i9);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findHiddenNonRemovedView(int i9) {
        int size = this.mHiddenViews.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = this.mHiddenViews.get(i10);
            RecyclerView.ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (childViewHolder.getLayoutPosition() == i9 && !childViewHolder.isInvalid() && !childViewHolder.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getChildAt(int i9) {
        return this.mCallback.getChildAt(getOffset(i9));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View getUnfilteredChildAt(int i9) {
        return this.mCallback.getChildAt(i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void hide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild >= 0) {
            this.mBucket.set(indexOfChild);
            hideViewInternal(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int indexOfChild(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild == -1 || this.mBucket.get(indexOfChild)) {
            return -1;
        }
        return indexOfChild - this.mBucket.countOnesBefore(indexOfChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeView(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild < 0) {
            return;
        }
        if (this.mBucket.remove(indexOfChild)) {
            unhideViewInternal(view);
        }
        this.mCallback.removeViewAt(indexOfChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeViewAt(int i9) {
        int offset = getOffset(i9);
        View childAt = this.mCallback.getChildAt(offset);
        if (childAt == null) {
            return;
        }
        if (this.mBucket.remove(offset)) {
            unhideViewInternal(childAt);
        }
        this.mCallback.removeViewAt(offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean removeViewIfHidden(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild == -1) {
            unhideViewInternal(view);
            return true;
        } else if (this.mBucket.get(indexOfChild)) {
            this.mBucket.remove(indexOfChild);
            unhideViewInternal(view);
            this.mCallback.removeViewAt(indexOfChild);
            return true;
        } else {
            return false;
        }
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unhide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (this.mBucket.get(indexOfChild)) {
                this.mBucket.clear(indexOfChild);
                unhideViewInternal(view);
                return;
            }
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addView(View view, int i9, boolean z10) {
        int offset;
        if (i9 < 0) {
            offset = this.mCallback.getChildCount();
        } else {
            offset = getOffset(i9);
        }
        this.mBucket.insert(offset, z10);
        if (z10) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, offset);
    }
}
