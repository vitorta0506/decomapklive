package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
import com.guochao.faceshow.aaspring.views.VipIndicatorView;
/* loaded from: classes3.dex */
public class SearchNetUserHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SearchNetUserHolder f17252b;

    @UiThread
    public SearchNetUserHolder_ViewBinding(SearchNetUserHolder searchNetUserHolder, View view) {
        this.f17252b = searchNetUserHolder;
        searchNetUserHolder.userName = (TextView) c.d(view, R.id.user_name, "field 'userName'", TextView.class);
        searchNetUserHolder.userSign = (TextView) c.d(view, R.id.user_sign, "field 'userSign'", TextView.class);
        searchNetUserHolder.avatarBg = (HeadPortraitView) c.d(view, R.id.avatar_view, "field 'avatarBg'", HeadPortraitView.class);
        searchNetUserHolder.vipIndicator = (VipIndicatorView) c.d(view, R.id.vip_indicator, "field 'vipIndicator'", VipIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchNetUserHolder searchNetUserHolder = this.f17252b;
        if (searchNetUserHolder != null) {
            this.f17252b = null;
            searchNetUserHolder.userName = null;
            searchNetUserHolder.userSign = null;
            searchNetUserHolder.avatarBg = null;
            searchNetUserHolder.vipIndicator = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
