package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.adapter.BaseViewHolder;
import com.guochao.faceshow.aaspring.beans.UgcTopicBean;
/* loaded from: classes3.dex */
public class AttachTopicHolder extends BaseViewHolder {

    /* renamed from: a  reason: collision with root package name */
    private UgcTopicBean f23000a;

    /* renamed from: b  reason: collision with root package name */
    private int f23001b;

    /* renamed from: c  reason: collision with root package name */
    private b f23002c;
    @BindView
    TextView topicName;

    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (AttachTopicHolder.this.f23002c != null) {
                AttachTopicHolder.this.f23002c.a(AttachTopicHolder.this.f23000a, AttachTopicHolder.this.f23001b);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(UgcTopicBean ugcTopicBean, int i9);
    }

    public AttachTopicHolder(ViewGroup viewGroup, int i9) {
        super(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_item_attach_topic, viewGroup, false));
        ButterKnife.c(this, this.itemView);
        this.topicName.setBackgroundResource(i9);
        this.itemView.setOnClickListener(new a());
    }

    public void f(UgcTopicBean ugcTopicBean, int i9) {
        this.f23000a = ugcTopicBean;
        this.f23001b = i9;
        this.topicName.setText(ugcTopicBean.getTopicName());
    }

    public void setOnClickListener(b bVar) {
        this.f23002c = bVar;
    }
}
