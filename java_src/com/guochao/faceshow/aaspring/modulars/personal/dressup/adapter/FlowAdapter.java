package com.guochao.faceshow.aaspring.modulars.personal.dressup.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.personal.c;
import com.guochao.faceshow.mine.model.HobbyBean;
import java.util.List;
/* loaded from: classes3.dex */
public class FlowAdapter extends RecyclerView.Adapter<a> implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private List<HobbyBean> f21477a;

    /* renamed from: b  reason: collision with root package name */
    private int f21478b;

    /* renamed from: c  reason: collision with root package name */
    private Context f21479c;

    /* renamed from: d  reason: collision with root package name */
    private c f21480d = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private TextView f21481a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f21482b;

        public a(View view) {
            super(view);
            this.f21481a = (TextView) view.findViewById(R.id.text);
            this.f21482b = (ImageView) view.findViewById(R.id.close);
            view.setOnClickListener(FlowAdapter.this);
        }
    }

    public FlowAdapter(Context context, int i9, List<HobbyBean> list) {
        this.f21479c = context;
        this.f21478b = i9;
        this.f21477a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(@NonNull a aVar, int i9) {
        aVar.itemView.setTag(Integer.valueOf(i9));
        if (this.f21478b == 1) {
            aVar.f21482b.setVisibility(0);
            aVar.f21481a.setTextColor(ContextCompat.getColor(this.f21479c, R.color.white));
            aVar.itemView.setBackgroundResource(R.drawable.bg_lable_setected);
        } else {
            if (this.f21477a.get(i9).isSelect()) {
                aVar.f21481a.setTextColor(ContextCompat.getColor(this.f21479c, R.color.white));
                aVar.itemView.setBackgroundResource(R.drawable.bg_lable_setected);
            } else {
                aVar.f21481a.setTextColor(ContextCompat.getColor(this.f21479c, R.color.color_ugc_text_level_1));
                aVar.itemView.setBackgroundResource(R.drawable.bg_lable_unsetected);
            }
            aVar.f21482b.setVisibility(8);
        }
        aVar.f21481a.setText(this.f21477a.get(i9).getTags());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: b */
    public a onCreateViewHolder(@NonNull ViewGroup viewGroup, int i9) {
        if (this.f21478b == 1) {
            return new a(LayoutInflater.from(this.f21479c).inflate(R.layout.list_item_label1, viewGroup, false));
        }
        return new a(LayoutInflater.from(this.f21479c).inflate(R.layout.list_item_label, viewGroup, false));
    }

    public void c(c cVar) {
        this.f21480d = cVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f21477a.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (this.f21478b != 1 && !this.f21477a.get(intValue).isSelect()) {
            view.setBackgroundResource(R.drawable.bg_lable_setected);
            this.f21477a.get(intValue).setSelect(true);
        }
        c cVar = this.f21480d;
        if (cVar != null) {
            cVar.a(view, this.f21478b, intValue);
        }
    }
}
