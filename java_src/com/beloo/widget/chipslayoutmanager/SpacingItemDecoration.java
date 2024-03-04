package com.beloo.widget.chipslayoutmanager;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public class SpacingItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private int f4080a;

    /* renamed from: b  reason: collision with root package name */
    private int f4081b;

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i9 = this.f4080a;
        rect.left = i9 / 2;
        rect.right = i9 / 2;
        int i10 = this.f4081b;
        rect.top = i10 / 2;
        rect.bottom = i10 / 2;
    }
}
