package com.guochao.faceshow.aaspring.modulars.ugc.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class RecommendedAdapter_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private RecommendedAdapter f22536b;

    @UiThread
    public RecommendedAdapter_ViewBinding(RecommendedAdapter recommendedAdapter, View view) {
        this.f22536b = recommendedAdapter;
        recommendedAdapter.ivImage = (ImageView) c.d(view, R.id.iv_image, "field 'ivImage'", ImageView.class);
        recommendedAdapter.tvHeadName = (TextView) c.d(view, R.id.tv_head_name, "field 'tvHeadName'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RecommendedAdapter recommendedAdapter = this.f22536b;
        if (recommendedAdapter != null) {
            this.f22536b = null;
            recommendedAdapter.ivImage = null;
            recommendedAdapter.tvHeadName = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
