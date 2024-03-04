package com.yanzhenjie.recyclerview.swipe.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.yanzhenjie.loading.LoadingView;
import com.yanzhenjie.recyclerview.swipe.R$color;
import com.yanzhenjie.recyclerview.swipe.R$id;
import com.yanzhenjie.recyclerview.swipe.R$layout;
import com.yanzhenjie.recyclerview.swipe.R$string;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
/* loaded from: classes5.dex */
public class DefaultLoadMoreView extends LinearLayout implements SwipeMenuRecyclerView.f, View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private LoadingView f37860a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f37861b;

    /* renamed from: c  reason: collision with root package name */
    private SwipeMenuRecyclerView.e f37862c;

    public DefaultLoadMoreView(Context context) {
        this(context, null);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView.f
    public void a() {
        setVisibility(0);
        this.f37860a.setVisibility(0);
        this.f37861b.setVisibility(0);
        this.f37861b.setText(R$string.recycler_swipe_load_more_message);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView.f
    public void b(boolean z10, boolean z11) {
        if (!z11) {
            setVisibility(0);
            if (z10) {
                this.f37860a.setVisibility(8);
                this.f37861b.setVisibility(0);
                this.f37861b.setText(R$string.recycler_swipe_data_empty);
                return;
            }
            this.f37860a.setVisibility(8);
            this.f37861b.setVisibility(0);
            this.f37861b.setText(R$string.recycler_swipe_more_not);
            return;
        }
        setVisibility(4);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView.f
    public void c(SwipeMenuRecyclerView.e eVar) {
        this.f37862c = eVar;
        setVisibility(0);
        this.f37860a.setVisibility(8);
        this.f37861b.setVisibility(0);
        this.f37861b.setText(R$string.recycler_swipe_click_load_more);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SwipeMenuRecyclerView.e eVar = this.f37862c;
        if (eVar != null) {
            eVar.onLoadMore();
        }
    }

    public DefaultLoadMoreView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        setGravity(17);
        setVisibility(8);
        setMinimumHeight((int) ((getResources().getDisplayMetrics().density * 60.0f) + 0.5d));
        LinearLayout.inflate(getContext(), R$layout.recycler_swipe_view_load_more, this);
        this.f37860a = (LoadingView) findViewById(R$id.loading_view);
        this.f37861b = (TextView) findViewById(R$id.tv_load_more_message);
        this.f37860a.a(ContextCompat.getColor(getContext(), R$color.recycler_swipe_color_loading_color1), ContextCompat.getColor(getContext(), R$color.recycler_swipe_color_loading_color2), ContextCompat.getColor(getContext(), R$color.recycler_swipe_color_loading_color3));
        setOnClickListener(this);
    }
}
