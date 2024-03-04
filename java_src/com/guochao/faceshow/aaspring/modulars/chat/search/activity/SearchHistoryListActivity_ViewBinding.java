package com.guochao.faceshow.aaspring.modulars.chat.search.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity_ViewBinding;
/* loaded from: classes3.dex */
public class SearchHistoryListActivity_ViewBinding extends BaseIMListActivity_ViewBinding {

    /* renamed from: d  reason: collision with root package name */
    private SearchHistoryListActivity f17197d;

    /* renamed from: e  reason: collision with root package name */
    private View f17198e;

    /* renamed from: f  reason: collision with root package name */
    private View f17199f;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchHistoryListActivity f17200a;

        a(SearchHistoryListActivity searchHistoryListActivity) {
            this.f17200a = searchHistoryListActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17200a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchHistoryListActivity f17202a;

        b(SearchHistoryListActivity searchHistoryListActivity) {
            this.f17202a = searchHistoryListActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17202a.onViewClicked(view);
        }
    }

    @UiThread
    public SearchHistoryListActivity_ViewBinding(SearchHistoryListActivity searchHistoryListActivity, View view) {
        super(searchHistoryListActivity, view);
        this.f17197d = searchHistoryListActivity;
        searchHistoryListActivity.searchContent = (EditText) c.d(view, R.id.search_content, "field 'searchContent'", EditText.class);
        View c10 = c.c(view, R.id.cancel, "field 'cancel' and method 'onViewClicked'");
        searchHistoryListActivity.cancel = (TextView) c.a(c10, R.id.cancel, "field 'cancel'", TextView.class);
        this.f17198e = c10;
        c10.setOnClickListener(new a(searchHistoryListActivity));
        View c11 = c.c(view, R.id.delete_edit, "field 'deleteEdit' and method 'onViewClicked'");
        searchHistoryListActivity.deleteEdit = (ImageView) c.a(c11, R.id.delete_edit, "field 'deleteEdit'", ImageView.class);
        this.f17199f = c11;
        c11.setOnClickListener(new b(searchHistoryListActivity));
    }

    @Override // com.guochao.faceshow.aaspring.modulars.chat.notifycation.BaseIMListActivity_ViewBinding, com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SearchHistoryListActivity searchHistoryListActivity = this.f17197d;
        if (searchHistoryListActivity != null) {
            this.f17197d = null;
            searchHistoryListActivity.searchContent = null;
            searchHistoryListActivity.cancel = null;
            searchHistoryListActivity.deleteEdit = null;
            this.f17198e.setOnClickListener(null);
            this.f17198e = null;
            this.f17199f.setOnClickListener(null);
            this.f17199f = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
