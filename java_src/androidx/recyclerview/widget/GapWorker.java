package androidx.recyclerview.widget;

import androidx.annotation.Nullable;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<Task> sTaskComparator = new Comparator<Task>() { // from class: androidx.recyclerview.widget.GapWorker.1
        @Override // java.util.Comparator
        public int compare(Task task, Task task2) {
            RecyclerView recyclerView = task.view;
            if ((recyclerView == null) != (task2.view == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z10 = task.immediate;
            if (z10 != task2.immediate) {
                return z10 ? -1 : 1;
            }
            int i9 = task2.viewVelocity - task.viewVelocity;
            if (i9 != 0) {
                return i9;
            }
            int i10 = task.distanceToItem - task2.distanceToItem;
            if (i10 != 0) {
                return i10;
            }
            return 0;
        }
    };
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private ArrayList<Task> mTasks = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {
        int mCount;
        int[] mPrefetchArray;
        int mPrefetchDx;
        int mPrefetchDy;

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void addPosition(int i9, int i10) {
            if (i9 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i10 >= 0) {
                int i11 = this.mCount * 2;
                int[] iArr = this.mPrefetchArray;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.mPrefetchArray = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i11 >= iArr.length) {
                    int[] iArr3 = new int[i11 * 2];
                    this.mPrefetchArray = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.mPrefetchArray;
                iArr4[i11] = i9;
                iArr4[i11 + 1] = i10;
                this.mCount++;
                return;
            }
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void clearPrefetchPositions() {
            int[] iArr = this.mPrefetchArray;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.mCount = 0;
        }

        void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z10) {
            this.mCount = 0;
            int[] iArr = this.mPrefetchArray;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.isItemPrefetchEnabled()) {
                return;
            }
            if (z10) {
                if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                    layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                layoutManager.collectAdjacentPrefetchPositions(this.mPrefetchDx, this.mPrefetchDy, recyclerView.mState, this);
            }
            int i9 = this.mCount;
            if (i9 > layoutManager.mPrefetchMaxCountObserved) {
                layoutManager.mPrefetchMaxCountObserved = i9;
                layoutManager.mPrefetchMaxObservedInInitialPrefetch = z10;
                recyclerView.mRecycler.updateViewCacheSize();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean lastPrefetchIncludedPosition(int i9) {
            if (this.mPrefetchArray != null) {
                int i10 = this.mCount * 2;
                for (int i11 = 0; i11 < i10; i11 += 2) {
                    if (this.mPrefetchArray[i11] == i9) {
                        return true;
                    }
                }
            }
            return false;
        }

        void setPrefetchVector(int i9, int i10) {
            this.mPrefetchDx = i9;
            this.mPrefetchDy = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Task {
        public int distanceToItem;
        public boolean immediate;
        public int position;
        public RecyclerView view;
        public int viewVelocity;

        Task() {
        }

        public void clear() {
            this.immediate = false;
            this.viewVelocity = 0;
            this.distanceToItem = 0;
            this.view = null;
            this.position = 0;
        }
    }

    private void buildTaskList() {
        Task task;
        int size = this.mRecyclerViews.size();
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(i10);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.collectPrefetchPositionsFromView(recyclerView, false);
                i9 += recyclerView.mPrefetchRegistry.mCount;
            }
        }
        this.mTasks.ensureCapacity(i9);
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(i12);
            if (recyclerView2.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(layoutPrefetchRegistryImpl.mPrefetchDx) + Math.abs(layoutPrefetchRegistryImpl.mPrefetchDy);
                for (int i13 = 0; i13 < layoutPrefetchRegistryImpl.mCount * 2; i13 += 2) {
                    if (i11 >= this.mTasks.size()) {
                        task = new Task();
                        this.mTasks.add(task);
                    } else {
                        task = this.mTasks.get(i11);
                    }
                    int[] iArr = layoutPrefetchRegistryImpl.mPrefetchArray;
                    int i14 = iArr[i13 + 1];
                    task.immediate = i14 <= abs;
                    task.viewVelocity = abs;
                    task.distanceToItem = i14;
                    task.view = recyclerView2;
                    task.position = iArr[i13];
                    i11++;
                }
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    private void flushTaskWithDeadline(Task task, long j10) {
        RecyclerView.ViewHolder prefetchPositionWithDeadline = prefetchPositionWithDeadline(task.view, task.position, task.immediate ? Long.MAX_VALUE : j10);
        if (prefetchPositionWithDeadline == null || prefetchPositionWithDeadline.mNestedRecyclerView == null || !prefetchPositionWithDeadline.isBound() || prefetchPositionWithDeadline.isInvalid()) {
            return;
        }
        prefetchInnerRecyclerViewWithDeadline(prefetchPositionWithDeadline.mNestedRecyclerView.get(), j10);
    }

    private void flushTasksWithDeadline(long j10) {
        for (int i9 = 0; i9 < this.mTasks.size(); i9++) {
            Task task = this.mTasks.get(i9);
            if (task.view == null) {
                return;
            }
            flushTaskWithDeadline(task, j10);
            task.clear();
        }
    }

    static boolean isPrefetchPositionAttached(RecyclerView recyclerView, int i9) {
        int unfilteredChildCount = recyclerView.mChildHelper.getUnfilteredChildCount();
        for (int i10 = 0; i10 < unfilteredChildCount; i10++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.getUnfilteredChildAt(i10));
            if (childViewHolderInt.mPosition == i9 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void prefetchInnerRecyclerViewWithDeadline(@Nullable RecyclerView recyclerView, long j10) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.getUnfilteredChildCount() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        layoutPrefetchRegistryImpl.collectPrefetchPositionsFromView(recyclerView, true);
        if (layoutPrefetchRegistryImpl.mCount != 0) {
            try {
                TraceCompat.beginSection("RV Nested Prefetch");
                recyclerView.mState.prepareForNestedPrefetch(recyclerView.mAdapter);
                for (int i9 = 0; i9 < layoutPrefetchRegistryImpl.mCount * 2; i9 += 2) {
                    prefetchPositionWithDeadline(recyclerView, layoutPrefetchRegistryImpl.mPrefetchArray[i9], j10);
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    private RecyclerView.ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int i9, long j10) {
        if (isPrefetchPositionAttached(recyclerView, i9)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            RecyclerView.ViewHolder tryGetViewHolderForPositionByDeadline = recycler.tryGetViewHolderForPositionByDeadline(i9, false, j10);
            if (tryGetViewHolderForPositionByDeadline != null) {
                if (tryGetViewHolderForPositionByDeadline.isBound() && !tryGetViewHolderForPositionByDeadline.isInvalid()) {
                    recycler.recycleView(tryGetViewHolderForPositionByDeadline.itemView);
                } else {
                    recycler.addViewHolderToRecycledViewPool(tryGetViewHolderForPositionByDeadline, false);
                }
            }
            return tryGetViewHolderForPositionByDeadline;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public void add(RecyclerView recyclerView) {
        this.mRecyclerViews.add(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void postFromTraversal(RecyclerView recyclerView, int i9, int i10) {
        if (recyclerView.isAttachedToWindow() && this.mPostTimeNs == 0) {
            this.mPostTimeNs = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.setPrefetchVector(i9, i10);
    }

    void prefetch(long j10) {
        buildTaskList();
        flushTasksWithDeadline(j10);
    }

    public void remove(RecyclerView recyclerView) {
        this.mRecyclerViews.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection("RV Prefetch");
            if (!this.mRecyclerViews.isEmpty()) {
                int size = this.mRecyclerViews.size();
                long j10 = 0;
                for (int i9 = 0; i9 < size; i9++) {
                    RecyclerView recyclerView = this.mRecyclerViews.get(i9);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j10 = Math.max(recyclerView.getDrawingTime(), j10);
                    }
                }
                if (j10 != 0) {
                    prefetch(TimeUnit.MILLISECONDS.toNanos(j10) + this.mFrameIntervalNs);
                }
            }
        } finally {
            this.mPostTimeNs = 0L;
            TraceCompat.endSection();
        }
    }
}
