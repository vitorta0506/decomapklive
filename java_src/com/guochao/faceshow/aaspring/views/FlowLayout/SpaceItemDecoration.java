package com.guochao.faceshow.aaspring.views.FlowLayout;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class SpaceItemDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private int f23683a;

    public SpaceItemDecoration(int i9) {
        this.f23683a = i9;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i9 = this.f23683a;
        rect.top = i9;
        rect.left = i9;
        rect.right = i9;
        rect.bottom = i9;
    }
}
