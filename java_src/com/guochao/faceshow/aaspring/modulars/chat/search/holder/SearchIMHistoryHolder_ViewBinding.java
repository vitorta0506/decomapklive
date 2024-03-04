package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class SearchIMHistoryHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SearchIMHistoryHolder f17235b;

    /* renamed from: c  reason: collision with root package name */
    private View f17236c;

    /* renamed from: d  reason: collision with root package name */
    private View f17237d;

    /* loaded from: classes3.dex */
    class a extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIMHistoryHolder f17238a;

        a(SearchIMHistoryHolder searchIMHistoryHolder) {
            this.f17238a = searchIMHistoryHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17238a.onViewClicked(view);
        }
    }

    /* loaded from: classes3.dex */
    class b extends butterknife.internal.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SearchIMHistoryHolder f17240a;

        b(SearchIMHistoryHolder searchIMHistoryHolder) {
            this.f17240a = searchIMHistoryHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f17240a.onViewClicked(view);
        }
    }

    @UiThread
    public SearchIMHistoryHolder_ViewBinding(SearchIMHistoryHolder searchIMHistoryHolder, View view) {
        this.f17235b = searchIMHistoryHolder;
        View c10 = c.c(view, R.id.user_avatar, "field 'userAvatar' and method 'onViewClicked'");
        searchIMHistoryHolder.userAvatar = (NormalCircleImageView) c.a(c10, R.id.user_avatar, "field 'userAvatar'", NormalCircleImageView.class);
        this.f17236c = c10;
        c10.setOnClickListener(new a(searchIMHistoryHolder));
        searchIMHistoryHolder.userFlag = (NormalCircleImageView) c.d(view, R.id.user_flag, "field 'userFlag'", NormalCircleImageView.class);
        View c11 = c.c(view, R.id.user_name, "field 'userName' and method 'onViewClicked'");
        searchIMHistoryHolder.userName = (TextView) c.a(c11, R.id.user_name, "field 'userName'", TextView.class);
        this.f17237d = c11;
        c11.setOnClickListener(new b(searchIMHistoryHolder));
        searchIMHistoryHolder.chatRecord = (TextView) c.d(view, R.id.chat_record, "field 'chatRecord'", TextView.class);
        searchIMHistoryHolder.timeHistory = (TextView) c.d(view, R.id.time_history, "field 'timeHistory'", TextView.class);
        searchIMHistoryHolder.userDivider = c.c(view, R.id.user_divider, "field 'userDivider'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchIMHistoryHolder searchIMHistoryHolder = this.f17235b;
        if (searchIMHistoryHolder != null) {
            this.f17235b = null;
            searchIMHistoryHolder.userAvatar = null;
            searchIMHistoryHolder.userFlag = null;
            searchIMHistoryHolder.userName = null;
            searchIMHistoryHolder.chatRecord = null;
            searchIMHistoryHolder.timeHistory = null;
            searchIMHistoryHolder.userDivider = null;
            this.f17236c.setOnClickListener(null);
            this.f17236c = null;
            this.f17237d.setOnClickListener(null);
            this.f17237d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
