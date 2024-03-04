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
public class ChooseLanguageActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChooseLanguageActivity f22129c;

    /* renamed from: d  reason: collision with root package name */
    private View f22130d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ChooseLanguageActivity f22131a;

        a(ChooseLanguageActivity chooseLanguageActivity) {
            this.f22131a = chooseLanguageActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22131a.onViewClicked(view);
        }
    }

    @UiThread
    public ChooseLanguageActivity_ViewBinding(ChooseLanguageActivity chooseLanguageActivity, View view) {
        super(chooseLanguageActivity, view);
        this.f22129c = chooseLanguageActivity;
        chooseLanguageActivity.searchContent = (EditText) butterknife.internal.c.d(view, R.id.search_content, "field 'searchContent'", EditText.class);
        View c10 = butterknife.internal.c.c(view, R.id.delete_edit, "field 'deleteEdit' and method 'onViewClicked'");
        chooseLanguageActivity.deleteEdit = (ImageView) butterknife.internal.c.a(c10, R.id.delete_edit, "field 'deleteEdit'", ImageView.class);
        this.f22130d = c10;
        c10.setOnClickListener(new a(chooseLanguageActivity));
        chooseLanguageActivity.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        chooseLanguageActivity.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        chooseLanguageActivity.recyclerContentArea = (FrameLayout) butterknife.internal.c.d(view, R.id.recycler_content_area, "field 'recyclerContentArea'", FrameLayout.class);
        chooseLanguageActivity.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChooseLanguageActivity chooseLanguageActivity = this.f22129c;
        if (chooseLanguageActivity != null) {
            this.f22129c = null;
            chooseLanguageActivity.searchContent = null;
            chooseLanguageActivity.deleteEdit = null;
            chooseLanguageActivity.recyclerView = null;
            chooseLanguageActivity.refreshLayout = null;
            chooseLanguageActivity.recyclerContentArea = null;
            chooseLanguageActivity.emptyView = null;
            this.f22130d.setOnClickListener(null);
            this.f22130d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
