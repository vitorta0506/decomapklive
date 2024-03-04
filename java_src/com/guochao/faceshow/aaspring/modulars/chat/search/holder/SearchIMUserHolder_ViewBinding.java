package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.views.HeadPortraitView;
/* loaded from: classes3.dex */
public class SearchIMUserHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SearchIMUserHolder f17245b;

    /* renamed from: c  reason: collision with root package name */
    private View f17246c;

    /* renamed from: d  reason: collision with root package name */
    private View f17247d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIMUserHolder f17248a;

        a(SearchIMUserHolder searchIMUserHolder) {
            this.f17248a = searchIMUserHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17248a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIMUserHolder f17250a;

        b(SearchIMUserHolder searchIMUserHolder) {
            this.f17250a = searchIMUserHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17250a.onViewClicked(view);
        }
    }

    @UiThread
    public SearchIMUserHolder_ViewBinding(SearchIMUserHolder searchIMUserHolder, View view) {
        this.f17245b = searchIMUserHolder;
        View c10 = c.c(view, R.id.user_avatar, "field 'userAvatar' and method 'onViewClicked'");
        searchIMUserHolder.userAvatar = (HeadPortraitView) c.a(c10, R.id.user_avatar, "field 'userAvatar'", HeadPortraitView.class);
        this.f17246c = c10;
        c10.setOnClickListener(new a(searchIMUserHolder));
        View c11 = c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        searchIMUserHolder.userName = (TextView) c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f17247d = c11;
        c11.setOnClickListener(new b(searchIMUserHolder));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchIMUserHolder searchIMUserHolder = this.f17245b;
        if (searchIMUserHolder != null) {
            this.f17245b = null;
            searchIMUserHolder.userAvatar = null;
            searchIMUserHolder.userName = null;
            this.f17246c.setOnClickListener(null);
            this.f17246c = null;
            this.f17247d.setOnClickListener(null);
            this.f17247d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
