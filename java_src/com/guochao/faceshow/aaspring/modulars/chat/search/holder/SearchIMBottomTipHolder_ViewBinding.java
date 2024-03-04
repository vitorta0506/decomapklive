package com.guochao.faceshow.aaspring.modulars.chat.search.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class SearchIMBottomTipHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SearchIMBottomTipHolder f17230b;

    @UiThread
    public SearchIMBottomTipHolder_ViewBinding(SearchIMBottomTipHolder searchIMBottomTipHolder, View view) {
        this.f17230b = searchIMBottomTipHolder;
        searchIMBottomTipHolder.content = (TextView) c.d(view, R.id.content, "field 'content'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchIMBottomTipHolder searchIMBottomTipHolder = this.f17230b;
        if (searchIMBottomTipHolder != null) {
            this.f17230b = null;
            searchIMBottomTipHolder.content = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
