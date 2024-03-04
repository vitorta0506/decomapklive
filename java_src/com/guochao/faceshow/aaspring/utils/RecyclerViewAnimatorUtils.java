package com.guochao.faceshow.aaspring.utils;

import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class RecyclerViewAnimatorUtils {
    public static final void closeAnimator(RecyclerView recyclerView) {
        RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator != null) {
            itemAnimator.setAddDuration(0L);
            itemAnimator.setChangeDuration(0L);
            itemAnimator.setMoveDuration(0L);
            itemAnimator.setRemoveDuration(0L);
            recyclerView.setItemAnimator(null);
        }
    }

    public static final void sync(final RecyclerView recyclerView, final int i9) {
        recyclerView.postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.utils.RecyclerViewAnimatorUtils.1
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = RecyclerView.this.findViewHolderForAdapterPosition(i9);
                if (findViewHolderForAdapterPosition != null) {
                    RecyclerView.this.scrollBy(0, findViewHolderForAdapterPosition.itemView.getTop());
                }
            }
        }, 100L);
    }
}
