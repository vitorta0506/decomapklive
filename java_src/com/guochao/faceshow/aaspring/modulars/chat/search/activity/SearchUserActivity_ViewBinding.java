package com.guochao.faceshow.aaspring.modulars.chat.search.activity;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding;
/* loaded from: classes3.dex */
public class SearchUserActivity_ViewBinding extends BaseActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    private SearchUserActivity f17220c;

    /* renamed from: d  reason: collision with root package name */
    private View f17221d;

    /* renamed from: e  reason: collision with root package name */
    private View f17222e;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchUserActivity f17223a;

        a(SearchUserActivity searchUserActivity) {
            this.f17223a = searchUserActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17223a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchUserActivity f17225a;

        b(SearchUserActivity searchUserActivity) {
            this.f17225a = searchUserActivity;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17225a.onViewClicked(view);
        }
    }

    @UiThread
    public SearchUserActivity_ViewBinding(SearchUserActivity searchUserActivity, View view) {
        super(searchUserActivity, view);
        this.f17220c = searchUserActivity;
        searchUserActivity.baseContent = (RecyclerView) c.d(view, R.id.base_content, "field 'baseContent'", RecyclerView.class);
        searchUserActivity.searchContent = (EditText) c.d(view, R.id.search_content, "field 'searchContent'", EditText.class);
        searchUserActivity.searchTitleLay = (LinearLayout) c.d(view, R.id.search_title_lay, "field 'searchTitleLay'", LinearLayout.class);
        View c10 = c.c(view, R.id.delete_edit, "field 'deleteEdit' and method 'onViewClicked'");
        searchUserActivity.deleteEdit = (ImageView) c.a(c10, R.id.delete_edit, "field 'deleteEdit'", ImageView.class);
        this.f17221d = c10;
        c10.setOnClickListener(new a(searchUserActivity));
        View c11 = c.c(view, R.id.cancel, "method 'onViewClicked'");
        this.f17222e = c11;
        c11.setOnClickListener(new b(searchUserActivity));
    }

    @Override // com.guochao.faceshow.aaspring.base.activity.BaseActivity_ViewBinding, butterknife.Unbinder
    public void unbind() {
        SearchUserActivity searchUserActivity = this.f17220c;
        if (searchUserActivity != null) {
            this.f17220c = null;
            searchUserActivity.baseContent = null;
            searchUserActivity.searchContent = null;
            searchUserActivity.searchTitleLay = null;
            searchUserActivity.deleteEdit = null;
            this.f17221d.setOnClickListener(null);
            this.f17221d = null;
            this.f17222e.setOnClickListener(null);
            this.f17222e = null;
            super.unbind();
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
