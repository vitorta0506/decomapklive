package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
/* loaded from: classes3.dex */
public class SearchIMBottomTipHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private boolean f17227a;

    /* renamed from: b  reason: collision with root package name */
    private b f17228b;
    @BindView
    TextView content;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SearchIMBottomTipHolder.this.f17228b != null) {
                SearchIMBottomTipHolder.this.f17228b.a(SearchIMBottomTipHolder.this.f17227a);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(boolean z10);
    }

    public SearchIMBottomTipHolder(ViewGroup viewGroup) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_search_im_bottom_tip, viewGroup, false));
        this.itemView.setOnClickListener(new a());
    }

    public void e(boolean z10) {
        boolean z11 = !z10;
        this.f17227a = z11;
        if (z11) {
            this.content.setText(this.itemView.getContext().getString(R.string.More_Chat_Records));
        } else {
            this.content.setText(this.itemView.getContext().getString(R.string.More_contacts));
        }
    }

    public void setOnClickListener(b bVar) {
        this.f17228b = bVar;
    }
}
