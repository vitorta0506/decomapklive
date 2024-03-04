package com.guochao.faceshow.aaspring.modulars.ugc.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
/* loaded from: classes3.dex */
public class ChooseFriendSettingActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private ChooseFriendSettingActivity f22118c;

    @UiThread
    public ChooseFriendSettingActivity_ViewBinding(ChooseFriendSettingActivity chooseFriendSettingActivity, View view) {
        super(chooseFriendSettingActivity, view);
        this.f22118c = chooseFriendSettingActivity;
        chooseFriendSettingActivity.searchContent = (EditText) butterknife.internal.c.d(view, R.id.search_content, "field 'searchContent'", EditText.class);
        chooseFriendSettingActivity.deleteEdit = (ImageView) butterknife.internal.c.d(view, R.id.delete_edit, "field 'deleteEdit'", ImageView.class);
        chooseFriendSettingActivity.recyclerView = (RecyclerView) butterknife.internal.c.d(view, R.id.recycler_view, "field 'recyclerView'", RecyclerView.class);
        chooseFriendSettingActivity.refreshLayout = (SmartRefreshLayout) butterknife.internal.c.d(view, R.id.refresh_layout, "field 'refreshLayout'", SmartRefreshLayout.class);
        chooseFriendSettingActivity.recyclerContentArea = (FrameLayout) butterknife.internal.c.d(view, R.id.recycler_content_area, "field 'recyclerContentArea'", FrameLayout.class);
        chooseFriendSettingActivity.emptyView = butterknife.internal.c.c(view, R.id.empty_view, "field 'emptyView'");
        chooseFriendSettingActivity.rlSearch = (RelativeLayout) butterknife.internal.c.d(view, R.id.rl_search, "field 'rlSearch'", RelativeLayout.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        ChooseFriendSettingActivity chooseFriendSettingActivity = this.f22118c;
        if (chooseFriendSettingActivity != null) {
            this.f22118c = null;
            chooseFriendSettingActivity.searchContent = null;
            chooseFriendSettingActivity.deleteEdit = null;
            chooseFriendSettingActivity.recyclerView = null;
            chooseFriendSettingActivity.refreshLayout = null;
            chooseFriendSettingActivity.recyclerContentArea = null;
            chooseFriendSettingActivity.emptyView = null;
            chooseFriendSettingActivity.rlSearch = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
