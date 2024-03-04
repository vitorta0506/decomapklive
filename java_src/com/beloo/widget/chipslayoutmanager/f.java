package com.beloo.widget.chipslayoutmanager;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.beloo.widget.chipslayoutmanager.anchor.AnchorViewState;
/* loaded from: classes.dex */
public interface f {
    int a(RecyclerView.State state);

    RecyclerView.SmoothScroller b(@NonNull Context context, int i9, int i10, AnchorViewState anchorViewState);

    int c(RecyclerView.State state);

    boolean d(RecyclerView.Recycler recycler, RecyclerView.State state);

    int e(int i9, RecyclerView.Recycler recycler, RecyclerView.State state);

    int f(int i9, RecyclerView.Recycler recycler, RecyclerView.State state);

    int g(RecyclerView.State state);

    int h(RecyclerView.State state);

    boolean i();

    int j(RecyclerView.State state);

    boolean k();

    int l(RecyclerView.State state);
}
