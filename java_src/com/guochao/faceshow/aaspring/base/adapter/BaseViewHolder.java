package com.guochao.faceshow.aaspring.base.adapter;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.ButterKnife;
/* loaded from: classes3.dex */
public class BaseViewHolder extends RecyclerView.ViewHolder {
    private final SparseArray<View> mViewSparseArray;

    public BaseViewHolder(View view) {
        super(view);
        this.mViewSparseArray = new SparseArray<>();
        ButterKnife.c(this, view);
    }

    public <T extends View> T getView(int i9) {
        T t10 = (T) this.mViewSparseArray.get(i9);
        if (t10 == null) {
            T t11 = (T) this.itemView.findViewById(i9);
            this.mViewSparseArray.put(i9, t11);
            return t11;
        }
        return t10;
    }

    @Nullable
    public <T extends View> T getViewKt(int i9) {
        return (T) getView(i9);
    }

    public void setText(int i9, String str) {
        TextView textView = (TextView) getView(i9);
        if (textView != null) {
            textView.setText(str);
        }
    }

    public BaseViewHolder(Context context, int i9, ViewGroup viewGroup) {
        this(LayoutInflater.from(context).inflate(i9, viewGroup, false));
    }
}
