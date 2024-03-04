package com.guochao.faceshow.aaspring.modulars.ugc.publish.activity;

import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class SearchAttachTopicActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private SearchAttachTopicActivity f22968c;

    @UiThread
    public SearchAttachTopicActivity_ViewBinding(SearchAttachTopicActivity searchAttachTopicActivity, View view) {
        super(searchAttachTopicActivity, view);
        this.f22968c = searchAttachTopicActivity;
        searchAttachTopicActivity.mEditTextSearch = (EditText) c.d(view, R.id.et_search, "field 'mEditTextSearch'", EditText.class);
        searchAttachTopicActivity.hotTopic = (RecyclerView) c.d(view, R.id.hot_topic, "field 'hotTopic'", RecyclerView.class);
        searchAttachTopicActivity.recyclerContent = (ViewGroup) c.d(view, R.id.recycler_content_area, "field 'recyclerContent'", ViewGroup.class);
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SearchAttachTopicActivity searchAttachTopicActivity = this.f22968c;
        if (searchAttachTopicActivity != null) {
            this.f22968c = null;
            searchAttachTopicActivity.mEditTextSearch = null;
            searchAttachTopicActivity.hotTopic = null;
            searchAttachTopicActivity.recyclerContent = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
