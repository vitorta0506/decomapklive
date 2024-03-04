package com.guochao.faceshow.aaspring.modulars.chat.notifycation.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
import com.guochao.faceshow.views.NormalCircleImageView;
/* loaded from: classes3.dex */
public class AuthorityViewHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private AuthorityViewHolder f17137b;

    @UiThread
    public AuthorityViewHolder_ViewBinding(AuthorityViewHolder authorityViewHolder, View view) {
        this.f17137b = authorityViewHolder;
        authorityViewHolder.iconItem = (NormalCircleImageView) c.d(view, R.id.icon_item, "field 'iconItem'", NormalCircleImageView.class);
        authorityViewHolder.primaryTitle = (TextView) c.d(view, R.id.primary_title, "field 'primaryTitle'", TextView.class);
        authorityViewHolder.secondaryTitle = (TextView) c.d(view, R.id.secondary_title, "field 'secondaryTitle'", TextView.class);
        authorityViewHolder.timeHistory = (TextView) c.d(view, R.id.time_history, "field 'timeHistory'", TextView.class);
        authorityViewHolder.unReadNum = (TextView) c.d(view, R.id.un_read_num, "field 'unReadNum'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        AuthorityViewHolder authorityViewHolder = this.f17137b;
        if (authorityViewHolder != null) {
            this.f17137b = null;
            authorityViewHolder.iconItem = null;
            authorityViewHolder.primaryTitle = null;
            authorityViewHolder.secondaryTitle = null;
            authorityViewHolder.timeHistory = null;
            authorityViewHolder.unReadNum = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
