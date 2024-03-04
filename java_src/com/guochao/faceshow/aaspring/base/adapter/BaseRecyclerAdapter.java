package com.guochao.faceshow.aaspring.base.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import java.util.List;
/* loaded from: classes3.dex */
public class BaseRecyclerAdapter<T, VH extends BaseViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: a  reason: collision with root package name */
    private List<T> f16086a;

    /* renamed from: b  reason: collision with root package name */
    private Context f16087b;

    /* renamed from: c  reason: collision with root package name */
    private a<VH> f16088c;

    /* loaded from: classes3.dex */
    public interface a<VH> {
        int getItemCount();

        int getItemViewType(int i9);

        void onBindViewHolder(@NonNull VH vh2, int i9);

        @NonNull
        VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9);

        void onViewRecycled(@NonNull VH vh2);
    }

    public BaseRecyclerAdapter(Context context, List<T> list, a<VH> aVar) {
        this.f16086a = list;
        this.f16087b = context;
        this.f16088c = aVar;
    }

    public void a() {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: b */
    public void onViewRecycled(@NonNull VH vh2) {
        this.f16088c.onViewRecycled(vh2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f16088c.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i9) {
        return this.f16088c.getItemViewType(i9);
    }

    public List<T> getList() {
        return this.f16086a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i9) {
        onBindViewHolder((BaseRecyclerAdapter<T, VH>) ((BaseViewHolder) viewHolder), i9);
    }

    public void onBindViewHolder(@NonNull VH vh2, int i9) {
        this.f16088c.onBindViewHolder(vh2, i9);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return this.f16088c.onCreateViewHolder(viewGroup, i9);
    }
}
