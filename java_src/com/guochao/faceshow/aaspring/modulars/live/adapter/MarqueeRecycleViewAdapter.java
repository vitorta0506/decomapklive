package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import java.util.List;
/* loaded from: classes3.dex */
public class MarqueeRecycleViewAdapter extends RecyclerView.Adapter<MyViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private Context f18186a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f18187b;

    /* loaded from: classes3.dex */
    public static class MyViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f18188a;

        public MyViewHolder(@NonNull View view) {
            super(view);
            this.f18188a = (TextView) view.findViewById(R.id.pk_tips_tv);
        }
    }

    public MarqueeRecycleViewAdapter(Context context, List<String> list) {
        this.f18186a = context;
        this.f18187b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull MyViewHolder myViewHolder, int i9) {
        myViewHolder.f18188a.setText(this.f18187b.get(i9));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new MyViewHolder(LayoutInflater.from(this.f18186a).inflate(R.layout.item_text_content, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18187b.size();
    }
}
