package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class ChooseResidenceActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChooseResidenceActivity f22141c;

    /* renamed from: d  reason: collision with root package name */
    private View f22142d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChooseResidenceActivity f22143a;

        a(ChooseResidenceActivity chooseResidenceActivity) {
            this.f22143a = chooseResidenceActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22143a.onViewClicked(view);
        }
    }

    @UiThread
    public ChooseResidenceActivity_ViewBinding(ChooseResidenceActivity chooseResidenceActivity, View view) {
        super(chooseResidenceActivity, view);
        this.f22141c = chooseResidenceActivity;
        chooseResidenceActivity.searchContent = (EditText) butterknife.internal.c.d(view, R.id.search_content, "field 'searchContent'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.delete_edit, "field 'deleteEdit' and method 'onViewClicked'");
        chooseResidenceActivity.deleteEdit = (ImageView) butterknife.internal.c.a(c10, R.id.delete_edit, "field 'deleteEdit'", ImageView.class);
        this.f22142d = c10;
        c10.setOnClickListener(new a(chooseResidenceActivity));
        chooseResidenceActivity.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        chooseResidenceActivity.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        chooseResidenceActivity.recyclerContentArea = (FrameLayout) butterknife.internal.c.d(view, R.id.recycler_content_area, "field 'recyclerContentArea'", FrameLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChooseResidenceActivity chooseResidenceActivity = this.f22141c;
        if (chooseResidenceActivity != null) {
            this.f22141c = null;
            chooseResidenceActivity.searchContent = null;
            chooseResidenceActivity.deleteEdit = null;
            chooseResidenceActivity.recyclerView = null;
            chooseResidenceActivity.refreshLayout = null;
            chooseResidenceActivity.recyclerContentArea = null;
            this.f22142d.setOnClickListener(null);
            this.f22142d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
