package com.ethanhua.skeleton;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import io.supercharge.shimmerlayout.ShimmerLayout;
/* loaded from: classes.dex */
public class SkeletonAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private int f4805a;

    /* renamed from: b  reason: collision with root package name */
    private int f4806b;

    /* renamed from: c  reason: collision with root package name */
    private int f4807c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4808d;

    /* renamed from: e  reason: collision with root package name */
    private int f4809e;

    /* renamed from: f  reason: collision with root package name */
    private int f4810f;

    /* loaded from: classes.dex */
    class a extends RecyclerView.ViewHolder {
        a(View view) {
            super(view);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f4805a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
        if (this.f4808d) {
            ShimmerLayout shimmerLayout = (ShimmerLayout) viewHolder.itemView;
            shimmerLayout.setShimmerAnimationDuration(this.f4809e);
            shimmerLayout.setShimmerAngle(this.f4810f);
            shimmerLayout.setShimmerColor(this.f4807c);
            shimmerLayout.n();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        if (this.f4808d) {
            return new ShimmerViewHolder(from, viewGroup, this.f4806b);
        }
        return new a(from.inflate(this.f4806b, viewGroup, false));
    }
}
