package com.guochao.faceshow.aaspring.modulars.live.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.MarqueeData;
import java.util.List;
/* loaded from: classes3.dex */
public class MarqueeRecycleAdapter extends RecyclerView.Adapter<MyViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private Context f18183a;

    /* renamed from: b  reason: collision with root package name */
    private List<MarqueeData> f18184b;

    /* loaded from: classes3.dex */
    public static class MyViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        public TextView f18185a;

        public MyViewHolder(@NonNull View view) {
            super(view);
            this.f18185a = (TextView) view.findViewById(R.id.live_join_user_nickname);
        }
    }

    public MarqueeRecycleAdapter(Context context, List<MarqueeData> list) {
        this.f18183a = context;
        this.f18184b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull MyViewHolder myViewHolder, int i9) {
        myViewHolder.f18185a.setText(this.f18184b.get(i9).getName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public MyViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (i9 == 100011) {
            return new MyViewHolder(LayoutInflater.from(this.f18183a).inflate(R.layout.item_join_name, viewGroup, false));
        }
        return new MyViewHolder(LayoutInflater.from(this.f18183a).inflate(R.layout.item_level_join_name, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f18184b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        return this.f18184b.get(i9).getType() == 0 ? 100011 : 100012;
    }
}
