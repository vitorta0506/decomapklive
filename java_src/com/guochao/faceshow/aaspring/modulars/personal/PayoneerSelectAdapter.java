package com.guochao.faceshow.aaspring.modulars.personal;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.beans.PayoneerData;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.List;
/* loaded from: classes3.dex */
public class PayoneerSelectAdapter extends RecyclerView.Adapter<ViewHolder> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f21230a;

    /* renamed from: b  reason: collision with root package name */
    private List<PayoneerData> f21231b;

    /* renamed from: c  reason: collision with root package name */
    private LayoutInflater f21232c;

    /* renamed from: d  reason: collision with root package name */
    private z9.a f21233d = null;

    /* loaded from: classes3.dex */
    public class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f21234a;

        public ViewHolder(@NonNull View view) {
            super(view);
            this.f21234a = (TextView) view.findViewById(R.id.tv_payoneer_account);
            view.setOnClickListener(PayoneerSelectAdapter.this);
        }
    }

    public PayoneerSelectAdapter(Context context, List<PayoneerData> list) {
        this.f21230a = context;
        this.f21231b = list;
        this.f21232c = LayoutInflater.from(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i9) {
        viewHolder.itemView.setTag(Integer.valueOf(i9));
        viewHolder.f21234a.setText(this.f21231b.get(i9).getPayoneerId());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        return new ViewHolder(this.f21232c.inflate(R.layout.item_payoneer_account, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f21231b.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        z9.a aVar = this.f21233d;
        if (aVar != null) {
            aVar.b(view, BaseConfig.ITEM, intValue);
        }
    }

    public void setOnItemClickListener(z9.a aVar) {
        this.f21233d = aVar;
    }
}
