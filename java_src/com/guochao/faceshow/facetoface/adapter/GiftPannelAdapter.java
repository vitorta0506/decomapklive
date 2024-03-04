package com.guochao.faceshow.facetoface.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.facetoface.data.GiftData;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class GiftPannelAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: a  reason: collision with root package name */
    private LayoutInflater f25231a;

    /* renamed from: b  reason: collision with root package name */
    private List<GiftData.GiftItemData> f25232b = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        LinearLayout f25233a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f25234b;

        /* renamed from: c  reason: collision with root package name */
        TextView f25235c;

        /* renamed from: d  reason: collision with root package name */
        TextView f25236d;

        public a(View view) {
            super(view);
            this.f25233a = (LinearLayout) view.findViewById(R.id.flItemLayout);
            this.f25234b = (ImageView) view.findViewById(R.id.ivGiftImg);
            this.f25235c = (TextView) view.findViewById(R.id.tvGiftName);
            this.f25236d = (TextView) view.findViewById(R.id.tvGiftCount);
        }
    }

    public GiftPannelAdapter(Context context) {
        this.f25231a = LayoutInflater.from(context);
    }

    private void a(a aVar, int i9, GiftData.GiftItemData giftItemData) {
        hc.a.j(aVar.f25234b, giftItemData.img);
        aVar.f25235c.setText(giftItemData.gname);
        aVar.f25236d.setVisibility(0);
        aVar.f25236d.setText(String.valueOf(giftItemData.counts));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f25232b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i9) {
        int adapterPosition = viewHolder.getAdapterPosition();
        a((a) viewHolder, adapterPosition, this.f25232b.get(adapterPosition));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i9) {
        return new a(this.f25231a.inflate(R.layout.gift_list_show_count_item, viewGroup, false));
    }

    public void setData(List<GiftData.GiftItemData> list) {
        this.f25232b = list;
        notifyDataSetChanged();
    }
}
