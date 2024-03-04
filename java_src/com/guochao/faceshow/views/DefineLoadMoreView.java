package com.guochao.faceshow.views;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.guochao.faceshow.R;
import com.yanzhenjie.loading.LoadingView;
import com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView;
/* loaded from: classes4.dex */
public class DefineLoadMoreView extends LinearLayout implements SwipeMenuRecyclerView.f, View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private LoadingView f26583a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f26584b;

    /* renamed from: c  reason: collision with root package name */
    private SwipeMenuRecyclerView.e f26585c;

    /* renamed from: d  reason: collision with root package name */
    boolean f26586d;

    public DefineLoadMoreView(Context context) {
        super(context);
        this.f26586d = true;
        setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        setGravity(17);
        setVisibility(8);
        getResources().getDisplayMetrics();
        LinearLayout.inflate(context, R.layout.layout_fotter_loadmore, this);
        this.f26583a = (LoadingView) findViewById(R.id.loading_view);
        this.f26584b = (TextView) findViewById(R.id.tv_message);
        this.f26583a.a(ContextCompat.getColor(getContext(), R.color.app_blue), ContextCompat.getColor(getContext(), R.color.app_blue), ContextCompat.getColor(getContext(), R.color.app_blue));
        setOnClickListener(this);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView.f
    public void a() {
        if (this.f26586d) {
            setVisibility(0);
            this.f26583a.setVisibility(0);
            this.f26584b.setVisibility(0);
            this.f26584b.setText(getContext().getString(R.string.loading_later));
            return;
        }
        setVisibility(8);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView.f
    public void b(boolean z10, boolean z11) {
        if (!z11) {
            setVisibility(0);
            if (z10) {
                this.f26583a.setVisibility(8);
                this.f26584b.setVisibility(0);
                this.f26584b.setText(getContext().getString(R.string.no_data_now));
                return;
            }
            this.f26583a.setVisibility(8);
            this.f26584b.setVisibility(0);
            this.f26584b.setText(getContext().getString(R.string.loading_later));
            return;
        }
        setVisibility(4);
    }

    @Override // com.yanzhenjie.recyclerview.swipe.SwipeMenuRecyclerView.f
    public void c(SwipeMenuRecyclerView.e eVar) {
        this.f26585c = eVar;
        setVisibility(0);
        this.f26583a.setVisibility(8);
        this.f26584b.setVisibility(0);
        this.f26584b.setText("点我加载更多");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SwipeMenuRecyclerView.e eVar = this.f26585c;
        if (eVar != null) {
            eVar.onLoadMore();
        }
    }

    public void setShow(boolean z10) {
        this.f26586d = z10;
    }
}
