package com.guochao.faceshow.aaspring.modulars.rank.activity;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity_ViewBinding;
/* loaded from: classes3.dex */
public class RankListActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private RankListActivity f21679d;

    @UiThread
    public RankListActivity_ViewBinding(RankListActivity rankListActivity, View view) {
        super(rankListActivity, view);
        this.f21679d = rankListActivity;
        rankListActivity.backIV = (ImageView) c.b(view, R.id.backIV, "field 'backIV'", ImageView.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseViewPagerActivity_ViewBinding, com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        RankListActivity rankListActivity = this.f21679d;
        if (rankListActivity != null) {
            this.f21679d = null;
            rankListActivity.backIV = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
