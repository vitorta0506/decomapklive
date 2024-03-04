package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final AnchorInfo mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final LayoutChunkResult mLayoutChunkResult;
    private LayoutState mLayoutState;
    int mOrientation;
    OrientationHelper mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AnchorInfo {
        int mCoordinate;
        boolean mLayoutFromEnd;
        OrientationHelper mOrientationHelper;
        int mPosition;
        boolean mValid;

        AnchorInfo() {
            reset();
        }

        void assignCoordinateFromPadding() {
            int startAfterPadding;
            if (this.mLayoutFromEnd) {
                startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
            } else {
                startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
            }
            this.mCoordinate = startAfterPadding;
        }

        public void assignFromView(View view, int i9) {
            if (this.mLayoutFromEnd) {
                this.mCoordinate = this.mOrientationHelper.getDecoratedEnd(view) + this.mOrientationHelper.getTotalSpaceChange();
            } else {
                this.mCoordinate = this.mOrientationHelper.getDecoratedStart(view);
            }
            this.mPosition = i9;
        }

        public void assignFromViewAndKeepVisibleRect(View view, int i9) {
            int totalSpaceChange = this.mOrientationHelper.getTotalSpaceChange();
            if (totalSpaceChange >= 0) {
                assignFromView(view, i9);
                return;
            }
            this.mPosition = i9;
            if (this.mLayoutFromEnd) {
                int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view);
                this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding > 0) {
                    int decoratedMeasurement = this.mCoordinate - this.mOrientationHelper.getDecoratedMeasurement(view);
                    int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                    int min = decoratedMeasurement - (startAfterPadding + Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding, 0));
                    if (min < 0) {
                        this.mCoordinate += Math.min(endAfterPadding, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(view);
            int startAfterPadding2 = decoratedStart - this.mOrientationHelper.getStartAfterPadding();
            this.mCoordinate = decoratedStart;
            if (startAfterPadding2 > 0) {
                int endAfterPadding2 = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view))) - (decoratedStart + this.mOrientationHelper.getDecoratedMeasurement(view));
                if (endAfterPadding2 < 0) {
                    this.mCoordinate -= Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
        }

        boolean isViewValidAsAnchor(View view, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.isItemRemoved() && layoutParams.getViewLayoutPosition() >= 0 && layoutParams.getViewLayoutPosition() < state.getItemCount();
        }

        void reset() {
            this.mPosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mValid = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;

        protected LayoutChunkResult() {
        }

        void resetInternal() {
            this.mConsumed = 0;
            this.mFinished = false;
            this.mIgnoreConsumed = false;
            this.mFocusable = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LayoutState {
        static final int INVALID_LAYOUT = Integer.MIN_VALUE;
        static final int ITEM_DIRECTION_HEAD = -1;
        static final int ITEM_DIRECTION_TAIL = 1;
        static final int LAYOUT_END = 1;
        static final int LAYOUT_START = -1;
        static final int SCROLLING_OFFSET_NaN = Integer.MIN_VALUE;
        static final String TAG = "LLM#LayoutState";
        int mAvailable;
        int mCurrentPosition;
        boolean mInfinite;
        int mItemDirection;
        int mLastScrollDelta;
        int mLayoutDirection;
        int mOffset;
        int mScrollingOffset;
        boolean mRecycle = true;
        int mExtraFillSpace = 0;
        int mNoRecycleSpace = 0;
        boolean mIsPreLayout = false;
        List<RecyclerView.ViewHolder> mScrapList = null;

        LayoutState() {
        }

        private View nextViewFromScrapList() {
            int size = this.mScrapList.size();
            for (int i9 = 0; i9 < size; i9++) {
                View view = this.mScrapList.get(i9).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.isItemRemoved() && this.mCurrentPosition == layoutParams.getViewLayoutPosition()) {
                    assignPositionFromScrapList(view);
                    return view;
                }
            }
            return null;
        }

        public void assignPositionFromScrapList() {
            assignPositionFromScrapList(null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasMore(RecyclerView.State state) {
            int i9 = this.mCurrentPosition;
            return i9 >= 0 && i9 < state.getItemCount();
        }

        void log() {
            Log.d(TAG, "avail:" + this.mAvailable + ", ind:" + this.mCurrentPosition + ", dir:" + this.mItemDirection + ", offset:" + this.mOffset + ", layoutDir:" + this.mLayoutDirection);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public View next(RecyclerView.Recycler recycler) {
            if (this.mScrapList != null) {
                return nextViewFromScrapList();
            }
            View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
            this.mCurrentPosition += this.mItemDirection;
            return viewForPosition;
        }

        public View nextViewInLimitedList(View view) {
            int viewLayoutPosition;
            int size = this.mScrapList.size();
            View view2 = null;
            int i9 = Integer.MAX_VALUE;
            for (int i10 = 0; i10 < size; i10++) {
                View view3 = this.mScrapList.get(i10).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.isItemRemoved() && (viewLayoutPosition = (layoutParams.getViewLayoutPosition() - this.mCurrentPosition) * this.mItemDirection) >= 0 && viewLayoutPosition < i9) {
                    view2 = view3;
                    if (viewLayoutPosition == 0) {
                        break;
                    }
                    i9 = viewLayoutPosition;
                }
            }
            return view2;
        }

        public void assignPositionFromScrapList(View view) {
            View nextViewInLimitedList = nextViewInLimitedList(view);
            if (nextViewInLimitedList == null) {
                this.mCurrentPosition = -1;
            } else {
                this.mCurrentPosition = ((RecyclerView.LayoutParams) nextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i9) {
                return new SavedState[i9];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorOffset;
        int mAnchorPosition;

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i9) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }

        SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollExtent(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollOffset(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollRange(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    private int fixLayoutEndGap(int i9, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z10) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i9;
        if (endAfterPadding2 > 0) {
            int i10 = -scrollBy(-endAfterPadding2, recycler, state);
            int i11 = i9 + i10;
            if (!z10 || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i11) <= 0) {
                return i10;
            }
            this.mOrientationHelper.offsetChildren(endAfterPadding);
            return endAfterPadding + i10;
        }
        return 0;
    }

    private int fixLayoutStartGap(int i9, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z10) {
        int startAfterPadding;
        int startAfterPadding2 = i9 - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 > 0) {
            int i10 = -scrollBy(startAfterPadding2, recycler, state);
            int i11 = i9 + i10;
            if (!z10 || (startAfterPadding = i11 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
                return i10;
            }
            this.mOrientationHelper.offsetChildren(-startAfterPadding);
            return i10 - startAfterPadding;
        }
        return 0;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void layoutForPredictiveAnimations(RecyclerView.Recycler recycler, RecyclerView.State state, int i9, int i10) {
        if (!state.willRunPredictiveAnimations() || getChildCount() == 0 || state.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
        int size = scrapList.size();
        int position = getPosition(getChildAt(0));
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView.ViewHolder viewHolder = scrapList.get(i13);
            if (!viewHolder.isRemoved()) {
                if (((viewHolder.getLayoutPosition() < position) != this.mShouldReverseLayout ? (char) 65535 : (char) 1) == 65535) {
                    i11 += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                } else {
                    i12 += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                }
            }
        }
        this.mLayoutState.mScrapList = scrapList;
        if (i11 > 0) {
            updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i9);
            LayoutState layoutState = this.mLayoutState;
            layoutState.mExtraFillSpace = i11;
            layoutState.mAvailable = 0;
            layoutState.assignPositionFromScrapList();
            fill(recycler, this.mLayoutState, state, false);
        }
        if (i12 > 0) {
            updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i10);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mExtraFillSpace = i12;
            layoutState2.mAvailable = 0;
            layoutState2.assignPositionFromScrapList();
            fill(recycler, this.mLayoutState, state, false);
        }
        this.mLayoutState.mScrapList = null;
    }

    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i9 = 0; i9 < getChildCount(); i9++) {
            View childAt = getChildAt(i9);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.getDecoratedStart(childAt));
        }
        Log.d(TAG, "==============");
    }

    private void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mRecycle || layoutState.mInfinite) {
            return;
        }
        int i9 = layoutState.mScrollingOffset;
        int i10 = layoutState.mNoRecycleSpace;
        if (layoutState.mLayoutDirection == -1) {
            recycleViewsFromEnd(recycler, i9, i10);
        } else {
            recycleViewsFromStart(recycler, i9, i10);
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i9, int i10) {
        if (i9 == i10) {
            return;
        }
        if (i10 <= i9) {
            while (i9 > i10) {
                removeAndRecycleViewAt(i9, recycler);
                i9--;
            }
            return;
        }
        for (int i11 = i10 - 1; i11 >= i9; i11--) {
            removeAndRecycleViewAt(i11, recycler);
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler, int i9, int i10) {
        int childCount = getChildCount();
        if (i9 < 0) {
            return;
        }
        int end = (this.mOrientationHelper.getEnd() - i9) + i10;
        if (this.mShouldReverseLayout) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                    recycleChildren(recycler, 0, i11);
                    return;
                }
            }
            return;
        }
        int i12 = childCount - 1;
        for (int i13 = i12; i13 >= 0; i13--) {
            View childAt2 = getChildAt(i13);
            if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                recycleChildren(recycler, i12, i13);
                return;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler, int i9, int i10) {
        if (i9 < 0) {
            return;
        }
        int i11 = i9 - i10;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                if (this.mOrientationHelper.getDecoratedEnd(childAt) > i11 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt) > i11) {
                    recycleChildren(recycler, 0, i12);
                    return;
                }
            }
            return;
        }
        int i13 = childCount - 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            View childAt2 = getChildAt(i14);
            if (this.mOrientationHelper.getDecoratedEnd(childAt2) > i11 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt2) > i11) {
                recycleChildren(recycler, i13, i14);
                return;
            }
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation != 1 && isLayoutRTL()) {
            this.mShouldReverseLayout = !this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = this.mReverseLayout;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        View findReferenceChild;
        boolean z10 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && anchorInfo.isViewValidAsAnchor(focusedChild, state)) {
            anchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z11 = this.mLastStackFromEnd;
        boolean z12 = this.mStackFromEnd;
        if (z11 == z12 && (findReferenceChild = findReferenceChild(recycler, state, anchorInfo.mLayoutFromEnd, z12)) != null) {
            anchorInfo.assignFromView(findReferenceChild, getPosition(findReferenceChild));
            if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
                int decoratedStart = this.mOrientationHelper.getDecoratedStart(findReferenceChild);
                int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(findReferenceChild);
                int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                boolean z13 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                if (decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding) {
                    z10 = true;
                }
                if (z13 || z10) {
                    if (anchorInfo.mLayoutFromEnd) {
                        startAfterPadding = endAfterPadding;
                    }
                    anchorInfo.mCoordinate = startAfterPadding;
                }
            }
            return true;
        }
        return false;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i9;
        int decoratedStart;
        if (!state.isPreLayout() && (i9 = this.mPendingScrollPosition) != -1) {
            if (i9 >= 0 && i9 < state.getItemCount()) {
                anchorInfo.mPosition = this.mPendingScrollPosition;
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.hasValidAnchor()) {
                    boolean z10 = this.mPendingSavedState.mAnchorLayoutFromEnd;
                    anchorInfo.mLayoutFromEnd = z10;
                    if (z10) {
                        anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                    } else {
                        anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
                    }
                    return true;
                } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (findViewByPosition != null) {
                        if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                            anchorInfo.assignCoordinateFromPadding();
                            return true;
                        } else if (this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                            anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding();
                            anchorInfo.mLayoutFromEnd = false;
                            return true;
                        } else if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition) < 0) {
                            anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                            anchorInfo.mLayoutFromEnd = true;
                            return true;
                        } else {
                            if (anchorInfo.mLayoutFromEnd) {
                                decoratedStart = this.mOrientationHelper.getDecoratedEnd(findViewByPosition) + this.mOrientationHelper.getTotalSpaceChange();
                            } else {
                                decoratedStart = this.mOrientationHelper.getDecoratedStart(findViewByPosition);
                            }
                            anchorInfo.mCoordinate = decoratedStart;
                        }
                    } else {
                        if (getChildCount() > 0) {
                            anchorInfo.mLayoutFromEnd = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                        }
                        anchorInfo.assignCoordinateFromPadding();
                    }
                    return true;
                } else {
                    boolean z11 = this.mShouldReverseLayout;
                    anchorInfo.mLayoutFromEnd = z11;
                    if (z11) {
                        anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                    } else {
                        anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void updateAnchorInfoForLayout(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        if (updateAnchorFromPendingData(state, anchorInfo) || updateAnchorFromChildren(recycler, state, anchorInfo)) {
            return;
        }
        anchorInfo.assignCoordinateFromPadding();
        anchorInfo.mPosition = this.mStackFromEnd ? state.getItemCount() - 1 : 0;
    }

    private void updateLayoutState(int i9, int i10, boolean z10, RecyclerView.State state) {
        int startAfterPadding;
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mLayoutDirection = i9;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]);
        int max2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z11 = i9 == 1;
        LayoutState layoutState = this.mLayoutState;
        int i11 = z11 ? max2 : max;
        layoutState.mExtraFillSpace = i11;
        if (!z11) {
            max = max2;
        }
        layoutState.mNoRecycleSpace = max;
        if (z11) {
            layoutState.mExtraFillSpace = i11 + this.mOrientationHelper.getEndPadding();
            View childClosestToEnd = getChildClosestToEnd();
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(childClosestToEnd);
            LayoutState layoutState3 = this.mLayoutState;
            layoutState2.mCurrentPosition = position + layoutState3.mItemDirection;
            layoutState3.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.mExtraFillSpace += this.mOrientationHelper.getStartAfterPadding();
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(childClosestToStart);
            LayoutState layoutState5 = this.mLayoutState;
            layoutState4.mCurrentPosition = position2 + layoutState5.mItemDirection;
            layoutState5.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        LayoutState layoutState6 = this.mLayoutState;
        layoutState6.mAvailable = i10;
        if (z10) {
            layoutState6.mAvailable = i10 - startAfterPadding;
        }
        layoutState6.mScrollingOffset = startAfterPadding;
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo) {
        updateLayoutStateToFillEnd(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo) {
        updateLayoutStateToFillStart(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        int i9;
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.mLayoutState.mLayoutDirection == -1) {
            i9 = 0;
        } else {
            i9 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i9;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int i9, int i10, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i9 = i10;
        }
        if (getChildCount() == 0 || i9 == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i9 > 0 ? 1 : -1, Math.abs(i9), true, state);
        collectPrefetchPositionsForLayoutState(state, this.mLayoutState, layoutPrefetchRegistry);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectInitialPrefetchPositions(int i9, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z10;
        int i10;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.hasValidAnchor()) {
            SavedState savedState2 = this.mPendingSavedState;
            z10 = savedState2.mAnchorLayoutFromEnd;
            i10 = savedState2.mAnchorPosition;
        } else {
            resolveShouldLayoutReverse();
            z10 = this.mShouldReverseLayout;
            i10 = this.mPendingScrollPosition;
            if (i10 == -1) {
                i10 = z10 ? i9 - 1 : 0;
            }
        }
        int i11 = z10 ? -1 : 1;
        for (int i12 = 0; i12 < this.mInitialPrefetchItemCount && i10 >= 0 && i10 < i9; i12++) {
            layoutPrefetchRegistry.addPosition(i10, 0);
            i10 += i11;
        }
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i9 = layoutState.mCurrentPosition;
        if (i9 < 0 || i9 >= state.getItemCount()) {
            return;
        }
        layoutPrefetchRegistry.addPosition(i9, Math.max(0, layoutState.mScrollingOffset));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i9) {
        if (getChildCount() == 0) {
            return null;
        }
        int i10 = (i9 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        if (this.mOrientation == 0) {
            return new PointF(i10, 0.0f);
        }
        return new PointF(0.0f, i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int convertFocusDirectionToLayoutDirection(int i9) {
        return i9 != 1 ? i9 != 2 ? i9 != 17 ? i9 != 33 ? i9 != 66 ? (i9 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    LayoutState createLayoutState() {
        return new LayoutState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    int fill(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean z10) {
        int i9 = layoutState.mAvailable;
        int i10 = layoutState.mScrollingOffset;
        if (i10 != Integer.MIN_VALUE) {
            if (i9 < 0) {
                layoutState.mScrollingOffset = i10 + i9;
            }
            recycleByLayoutState(recycler, layoutState);
        }
        int i11 = layoutState.mAvailable + layoutState.mExtraFillSpace;
        LayoutChunkResult layoutChunkResult = this.mLayoutChunkResult;
        while (true) {
            if ((!layoutState.mInfinite && i11 <= 0) || !layoutState.hasMore(state)) {
                break;
            }
            layoutChunkResult.resetInternal();
            layoutChunk(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                layoutState.mOffset += layoutChunkResult.mConsumed * layoutState.mLayoutDirection;
                if (!layoutChunkResult.mIgnoreConsumed || layoutState.mScrapList != null || !state.isPreLayout()) {
                    int i12 = layoutState.mAvailable;
                    int i13 = layoutChunkResult.mConsumed;
                    layoutState.mAvailable = i12 - i13;
                    i11 -= i13;
                }
                int i14 = layoutState.mScrollingOffset;
                if (i14 != Integer.MIN_VALUE) {
                    int i15 = i14 + layoutChunkResult.mConsumed;
                    layoutState.mScrollingOffset = i15;
                    int i16 = layoutState.mAvailable;
                    if (i16 < 0) {
                        layoutState.mScrollingOffset = i15 + i16;
                    }
                    recycleByLayoutState(recycler, layoutState);
                }
                if (z10 && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i9 - layoutState.mAvailable;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findFirstVisibleChildClosestToEnd(boolean z10, boolean z11) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(0, getChildCount(), z10, z11);
        }
        return findOneVisibleChild(getChildCount() - 1, -1, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findFirstVisibleChildClosestToStart(boolean z10, boolean z11) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(getChildCount() - 1, -1, z10, z11);
        }
        return findOneVisibleChild(0, getChildCount(), z10, z11);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i9, int i10) {
        int i11;
        int i12;
        ensureLayoutState();
        if ((i10 > i9 ? (char) 1 : i10 < i9 ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i9);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i9)) < this.mOrientationHelper.getStartAfterPadding()) {
            i11 = 16644;
            i12 = 16388;
        } else {
            i11 = 4161;
            i12 = 4097;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12);
        }
        return this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12);
    }

    View findOneVisibleChild(int i9, int i10, boolean z10, boolean z11) {
        ensureLayoutState();
        int i11 = z10 ? 24579 : 320;
        int i12 = z11 ? 320 : 0;
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12);
        }
        return this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i9, i10, i11, i12);
    }

    View findReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z10, boolean z11) {
        int i9;
        int i10;
        ensureLayoutState();
        int childCount = getChildCount();
        int i11 = -1;
        if (z11) {
            i9 = getChildCount() - 1;
            i10 = -1;
        } else {
            i11 = childCount;
            i9 = 0;
            i10 = 1;
        }
        int itemCount = state.getItemCount();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i9 != i11) {
            View childAt = getChildAt(i9);
            int position = getPosition(childAt);
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(childAt);
            int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(childAt);
            if (position >= 0 && position < itemCount) {
                if (!((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z12 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                    boolean z13 = decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding;
                    if (!z12 && !z13) {
                        return childAt;
                    }
                    if (z10) {
                        if (!z13) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    } else {
                        if (!z12) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            i9 += i10;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int i9) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i9 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i9) {
                return childAt;
            }
        }
        return super.findViewByPosition(i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Deprecated
    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i9;
        int i10;
        int i11;
        int i12;
        int decoratedMeasurementInOther;
        View next = layoutState.next(recycler);
        if (next == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) next.getLayoutParams();
        if (layoutState.mScrapList == null) {
            if (this.mShouldReverseLayout == (layoutState.mLayoutDirection == -1)) {
                addView(next);
            } else {
                addView(next, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (layoutState.mLayoutDirection == -1)) {
                addDisappearingView(next);
            } else {
                addDisappearingView(next, 0);
            }
        }
        measureChildWithMargins(next, 0, 0);
        layoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(next);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther = getWidth() - getPaddingRight();
                i12 = decoratedMeasurementInOther - this.mOrientationHelper.getDecoratedMeasurementInOther(next);
            } else {
                i12 = getPaddingLeft();
                decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + i12;
            }
            if (layoutState.mLayoutDirection == -1) {
                int i13 = layoutState.mOffset;
                i11 = i13;
                i10 = decoratedMeasurementInOther;
                i9 = i13 - layoutChunkResult.mConsumed;
            } else {
                int i14 = layoutState.mOffset;
                i9 = i14;
                i10 = decoratedMeasurementInOther;
                i11 = layoutChunkResult.mConsumed + i14;
            }
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
            if (layoutState.mLayoutDirection == -1) {
                int i15 = layoutState.mOffset;
                i10 = i15;
                i9 = paddingTop;
                i11 = decoratedMeasurementInOther2;
                i12 = i15 - layoutChunkResult.mConsumed;
            } else {
                int i16 = layoutState.mOffset;
                i9 = paddingTop;
                i10 = layoutChunkResult.mConsumed + i16;
                i11 = decoratedMeasurementInOther2;
                i12 = i16;
            }
        }
        layoutDecoratedWithMargins(next, i12, i9, i10, i11);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = next.hasFocusable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i9) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirection;
        View findPartiallyOrCompletelyInvisibleChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i9)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.getTotalSpace() * MAX_SCROLL_FACTOR), false, state);
        LayoutState layoutState = this.mLayoutState;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
        layoutState.mRecycle = false;
        fill(recycler, layoutState, state, true);
        if (convertFocusDirectionToLayoutDirection == -1) {
            findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToStart();
        } else {
            findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        }
        if (convertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd = getChildClosestToStart();
        } else {
            childClosestToEnd = getChildClosestToEnd();
        }
        if (childClosestToEnd.hasFocusable()) {
            if (findPartiallyOrCompletelyInvisibleChildClosestToEnd == null) {
                return null;
            }
            return childClosestToEnd;
        }
        return findPartiallyOrCompletelyInvisibleChildClosestToEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i9;
        int i10;
        int i11;
        int i12;
        int fixLayoutEndGap;
        int i13;
        View findViewByPosition;
        int decoratedStart;
        int i14;
        int i15 = -1;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (anchorInfo.mValid && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) {
            if (focusedChild != null && (this.mOrientationHelper.getDecoratedStart(focusedChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(focusedChild) <= this.mOrientationHelper.getStartAfterPadding())) {
                this.mAnchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
            }
        } else {
            anchorInfo.reset();
            AnchorInfo anchorInfo2 = this.mAnchorInfo;
            anchorInfo2.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(recycler, state, anchorInfo2);
            this.mAnchorInfo.mValid = true;
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = layoutState.mLastScrollDelta >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.getStartAfterPadding();
        int max2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.getEndPadding();
        if (state.isPreLayout() && (i13 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i13)) != null) {
            if (this.mShouldReverseLayout) {
                i14 = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition);
                decoratedStart = this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                i14 = this.mPendingScrollPositionOffset;
            }
            int i16 = i14 - decoratedStart;
            if (i16 > 0) {
                max += i16;
            } else {
                max2 -= i16;
            }
        }
        AnchorInfo anchorInfo3 = this.mAnchorInfo;
        if (!anchorInfo3.mLayoutFromEnd ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i15 = 1;
        }
        onAnchorReady(recycler, state, anchorInfo3, i15);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mIsPreLayout = state.isPreLayout();
        this.mLayoutState.mNoRecycleSpace = 0;
        AnchorInfo anchorInfo4 = this.mAnchorInfo;
        if (anchorInfo4.mLayoutFromEnd) {
            updateLayoutStateToFillStart(anchorInfo4);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mExtraFillSpace = max;
            fill(recycler, layoutState2, state, false);
            LayoutState layoutState3 = this.mLayoutState;
            i10 = layoutState3.mOffset;
            int i17 = layoutState3.mCurrentPosition;
            int i18 = layoutState3.mAvailable;
            if (i18 > 0) {
                max2 += i18;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = max2;
            layoutState4.mCurrentPosition += layoutState4.mItemDirection;
            fill(recycler, layoutState4, state, false);
            LayoutState layoutState5 = this.mLayoutState;
            i9 = layoutState5.mOffset;
            int i19 = layoutState5.mAvailable;
            if (i19 > 0) {
                updateLayoutStateToFillStart(i17, i10);
                LayoutState layoutState6 = this.mLayoutState;
                layoutState6.mExtraFillSpace = i19;
                fill(recycler, layoutState6, state, false);
                i10 = this.mLayoutState.mOffset;
            }
        } else {
            updateLayoutStateToFillEnd(anchorInfo4);
            LayoutState layoutState7 = this.mLayoutState;
            layoutState7.mExtraFillSpace = max2;
            fill(recycler, layoutState7, state, false);
            LayoutState layoutState8 = this.mLayoutState;
            i9 = layoutState8.mOffset;
            int i20 = layoutState8.mCurrentPosition;
            int i21 = layoutState8.mAvailable;
            if (i21 > 0) {
                max += i21;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            LayoutState layoutState9 = this.mLayoutState;
            layoutState9.mExtraFillSpace = max;
            layoutState9.mCurrentPosition += layoutState9.mItemDirection;
            fill(recycler, layoutState9, state, false);
            LayoutState layoutState10 = this.mLayoutState;
            i10 = layoutState10.mOffset;
            int i22 = layoutState10.mAvailable;
            if (i22 > 0) {
                updateLayoutStateToFillEnd(i20, i9);
                LayoutState layoutState11 = this.mLayoutState;
                layoutState11.mExtraFillSpace = i22;
                fill(recycler, layoutState11, state, false);
                i9 = this.mLayoutState.mOffset;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap2 = fixLayoutEndGap(i9, recycler, state, true);
                i11 = i10 + fixLayoutEndGap2;
                i12 = i9 + fixLayoutEndGap2;
                fixLayoutEndGap = fixLayoutStartGap(i11, recycler, state, false);
            } else {
                int fixLayoutStartGap = fixLayoutStartGap(i10, recycler, state, true);
                i11 = i10 + fixLayoutStartGap;
                i12 = i9 + fixLayoutStartGap;
                fixLayoutEndGap = fixLayoutEndGap(i12, recycler, state, false);
            }
            i10 = i11 + fixLayoutEndGap;
            i9 = i12 + fixLayoutEndGap;
        }
        layoutForPredictiveAnimations(recycler, state, i10, i9);
        if (!state.isPreLayout()) {
            this.mOrientationHelper.onLayoutComplete();
        } else {
            this.mAnchorInfo.reset();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.reset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.invalidateAnchor();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z10 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.mAnchorLayoutFromEnd = z10;
            if (z10) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                savedState.mAnchorPosition = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState.mAnchorPosition = getPosition(childClosestToStart);
                savedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            }
        } else {
            savedState.invalidateAnchor();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i9, int i10) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c10 = position < position2 ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            if (c10 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedStart(view2) + this.mOrientationHelper.getDecoratedMeasurement(view)));
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view2));
            }
        } else if (c10 == 65535) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedEnd(view2) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
    }

    int scrollBy(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i9 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = true;
        int i10 = i9 > 0 ? 1 : -1;
        int abs = Math.abs(i9);
        updateLayoutState(i10, abs, true, state);
        LayoutState layoutState = this.mLayoutState;
        int fill = layoutState.mScrollingOffset + fill(recycler, layoutState, state, false);
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i9 = i10 * fill;
        }
        this.mOrientationHelper.offsetChildren(-i9);
        this.mLayoutState.mLastScrollDelta = i9;
        return i9;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i9, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i9) {
        this.mPendingScrollPosition = i9;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i9, int i10) {
        this.mPendingScrollPosition = i9;
        this.mPendingScrollPositionOffset = i10;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i9, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i9, recycler, state);
    }

    public void setInitialPrefetchItemCount(int i9) {
        this.mInitialPrefetchItemCount = i9;
    }

    public void setOrientation(int i9) {
        if (i9 != 0 && i9 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i9);
        }
        assertNotInLayoutOrScroll(null);
        if (i9 != this.mOrientation || this.mOrientationHelper == null) {
            OrientationHelper createOrientationHelper = OrientationHelper.createOrientationHelper(this, i9);
            this.mOrientationHelper = createOrientationHelper;
            this.mAnchorInfo.mOrientationHelper = createOrientationHelper;
            this.mOrientation = i9;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z10) {
        this.mRecycleChildrenOnDetach = z10;
    }

    public void setReverseLayout(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (z10 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z10;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z10) {
        this.mSmoothScrollbarEnabled = z10;
    }

    public void setStackFromEnd(boolean z10) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z10) {
            return;
        }
        this.mStackFromEnd = z10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i9) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i9);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i9 = 1; i9 < getChildCount(); i9++) {
                View childAt = getChildAt(i9);
                int position2 = getPosition(childAt);
                int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("detected invalid position. loc invalid? ");
                    sb2.append(decoratedStart2 < decoratedStart);
                    throw new RuntimeException(sb2.toString());
                } else if (decoratedStart2 > decoratedStart) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i10 = 1; i10 < getChildCount(); i10++) {
            View childAt2 = getChildAt(i10);
            int position3 = getPosition(childAt2);
            int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("detected invalid position. loc invalid? ");
                sb3.append(decoratedStart3 < decoratedStart);
                throw new RuntimeException(sb3.toString());
            } else if (decoratedStart3 < decoratedStart) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    public LinearLayoutManager(Context context, int i9, boolean z10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i9);
        setReverseLayout(z10);
    }

    private void updateLayoutStateToFillEnd(int i9, int i10) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i10;
        LayoutState layoutState = this.mLayoutState;
        layoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        layoutState.mCurrentPosition = i9;
        layoutState.mLayoutDirection = 1;
        layoutState.mOffset = i10;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(int i9, int i10) {
        this.mLayoutState.mAvailable = i10 - this.mOrientationHelper.getStartAfterPadding();
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = i9;
        layoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        layoutState.mLayoutDirection = -1;
        layoutState.mOffset = i10;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i9, int i10) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i9, i10);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }
}
