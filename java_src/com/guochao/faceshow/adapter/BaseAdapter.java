package com.guochao.faceshow.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class BaseAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    private LayoutInflater mInflater;

    public BaseAdapter(Context context) {
        this.mInflater = LayoutInflater.from(context);
    }

    public LayoutInflater getInflater() {
        return this.mInflater;
    }

    public abstract void notifyDataSetChanged(List<T> list);
}
