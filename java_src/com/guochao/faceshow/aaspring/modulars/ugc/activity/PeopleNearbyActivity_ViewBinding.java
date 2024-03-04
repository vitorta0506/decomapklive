package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import androidx.annotation.UiThread;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class PeopleNearbyActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private PeopleNearbyActivity f22332c;

    /* renamed from: d  reason: collision with root package name */
    private View f22333d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PeopleNearbyActivity f22334a;

        a(PeopleNearbyActivity peopleNearbyActivity) {
            this.f22334a = peopleNearbyActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f22334a.onViewClicked(view);
        }
    }

    @UiThread
    public PeopleNearbyActivity_ViewBinding(PeopleNearbyActivity peopleNearbyActivity, View view) {
        super(peopleNearbyActivity, view);
        this.f22332c = peopleNearbyActivity;
        peopleNearbyActivity.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        View c10 = butterknife.internal.c.c(view, R.id.layout_location, "field 'layoutLocation' and method 'onViewClicked'");
        peopleNearbyActivity.layoutLocation = c10;
        this.f22333d = c10;
        c10.setOnClickListener(new a(peopleNearbyActivity));
        peopleNearbyActivity.include = butterknife.internal.c.c(view, R.id.include, "field 'include'");
        peopleNearbyActivity.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        PeopleNearbyActivity peopleNearbyActivity = this.f22332c;
        if (peopleNearbyActivity != null) {
            this.f22332c = null;
            peopleNearbyActivity.refreshLayout = null;
            peopleNearbyActivity.layoutLocation = null;
            peopleNearbyActivity.include = null;
            peopleNearbyActivity.emptyView = null;
            this.f22333d.setOnClickListener(null);
            this.f22333d = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
