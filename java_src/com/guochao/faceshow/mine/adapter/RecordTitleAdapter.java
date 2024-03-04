package com.guochao.faceshow.mine.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.adapter.BaseAdapter;
import com.guochao.faceshow.mine.model.TransactionType;
import java.util.List;
/* loaded from: classes4.dex */
public class RecordTitleAdapter<T> extends BaseAdapter<T, c> {

    /* renamed from: a  reason: collision with root package name */
    private List<TransactionType> f25426a;

    /* renamed from: b  reason: collision with root package name */
    private Context f25427b;

    /* renamed from: c  reason: collision with root package name */
    private b f25428c;

    /* renamed from: d  reason: collision with root package name */
    private int f25429d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f25430a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25431b;

        a(int i9, int i10) {
            this.f25430a = i9;
            this.f25431b = i10;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (RecordTitleAdapter.this.f25428c != null) {
                ((TransactionType) RecordTitleAdapter.this.f25426a.get(RecordTitleAdapter.this.f25429d)).isSelected = false;
                ((TransactionType) RecordTitleAdapter.this.f25426a.get(this.f25430a)).isSelected = true;
                RecordTitleAdapter recordTitleAdapter = RecordTitleAdapter.this;
                recordTitleAdapter.notifyItemChanged(recordTitleAdapter.f25429d);
                RecordTitleAdapter.this.notifyItemChanged(this.f25430a);
                RecordTitleAdapter.this.f25428c.a(view, this.f25430a, this.f25431b);
                RecordTitleAdapter.this.f25429d = this.f25430a;
            }
        }
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a(View view, int i9, int i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f25433a;

        /* renamed from: b  reason: collision with root package name */
        Context f25434b;

        /* renamed from: c  reason: collision with root package name */
        View f25435c;

        public c(View view, Context context) {
            super(view);
            this.f25435c = view;
            this.f25433a = (TextView) view.findViewById(R.id.tv_title);
            this.f25434b = context;
        }

        public void c(String str) {
            this.f25433a.setText(str);
        }
    }

    public RecordTitleAdapter(Context context, b bVar) {
        super(context);
        this.f25429d = 0;
        this.f25427b = context;
        this.f25428c = bVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(c cVar, int i9) {
        int adapterPosition = cVar.getAdapterPosition();
        String name = this.f25426a.get(i9).getName();
        int id2 = this.f25426a.get(i9).getId();
        cVar.c(name);
        cVar.f25435c.setTag(cVar.f25433a);
        if (this.f25426a.get(i9).isSelected) {
            cVar.f25433a.setTextColor(this.f25427b.getResources().getColor(R.color.blue400));
        } else {
            cVar.f25433a.setTextColor(this.f25427b.getResources().getColor(R.color.text_normal));
        }
        ViewGroup.LayoutParams layoutParams = cVar.f25433a.getLayoutParams();
        layoutParams.width = -2;
        cVar.f25433a.setLayoutParams(layoutParams);
        cVar.f25435c.setOnClickListener(new a(adapterPosition, id2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public c onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new c(getInflater().inflate(R.layout.item_live_title, viewGroup, false), this.f25427b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<TransactionType> list = this.f25426a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.guochao.faceshow.adapter.BaseAdapter
    public void notifyDataSetChanged(List<T> list) {
        this.f25426a = list;
        if (list != 0 && list.size() > 0) {
            this.f25426a.get(0).isSelected = true;
        }
        super.notifyDataSetChanged();
    }
}
