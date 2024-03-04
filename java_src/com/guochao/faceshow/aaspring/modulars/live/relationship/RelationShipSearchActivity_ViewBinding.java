package com.guochao.faceshow.aaspring.modulars.live.relationship;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class RelationShipSearchActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private RelationShipSearchActivity f19839c;

    /* renamed from: d  reason: collision with root package name */
    private View f19840d;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RelationShipSearchActivity f19841a;

        a(RelationShipSearchActivity relationShipSearchActivity) {
            this.f19841a = relationShipSearchActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f19841a.onViewClicked(view);
        }
    }

    @UiThread
    public RelationShipSearchActivity_ViewBinding(RelationShipSearchActivity relationShipSearchActivity, View view) {
        super(relationShipSearchActivity, view);
        this.f19839c = relationShipSearchActivity;
        View c10 = c.c(view, R.id.tv_confirm, "field 'tvConfirm' and method 'onViewClicked'");
        relationShipSearchActivity.tvConfirm = (TextView) c.a(c10, R.id.tv_confirm, "field 'tvConfirm'", TextView.class);
        this.f19840d = c10;
        c10.setOnClickListener(new a(relationShipSearchActivity));
        relationShipSearchActivity.confirmLayout = c.c(view, R.id.confirm_layout, "field 'confirmLayout'");
        relationShipSearchActivity.bgConfirm = (ImageView) c.d(view, R.id.bg_config, "field 'bgConfirm'", ImageView.class);
        relationShipSearchActivity.emptyText = c.c(view, R.id.empty_text, "field 'emptyText'");
        relationShipSearchActivity.emptyView = c.c(view, R.id.empty_view, "field 'emptyView'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        RelationShipSearchActivity relationShipSearchActivity = this.f19839c;
        if (relationShipSearchActivity != null) {
            this.f19839c = null;
            relationShipSearchActivity.tvConfirm = null;
            relationShipSearchActivity.confirmLayout = null;
            relationShipSearchActivity.bgConfirm = null;
            relationShipSearchActivity.emptyText = null;
            relationShipSearchActivity.emptyView = null;
            this.f19840d.setOnClickListener(null);
            this.f19840d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
