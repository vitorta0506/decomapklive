package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class SearchUgcLocationHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SearchUgcLocationHolder f23020b;

    @UiThread
    public SearchUgcLocationHolder_ViewBinding(SearchUgcLocationHolder searchUgcLocationHolder, View view) {
        this.f23020b = searchUgcLocationHolder;
        searchUgcLocationHolder.ivUgcLocation = (ImageView) c.d(view, R.id.iv_ugc_location, "field 'ivUgcLocation'", ImageView.class);
        searchUgcLocationHolder.primaryTitle = (TextView) c.d(view, R.id.primary_title, "field 'primaryTitle'", TextView.class);
        searchUgcLocationHolder.secondaryTitle = (TextView) c.d(view, R.id.secondary_title, "field 'secondaryTitle'", TextView.class);
        searchUgcLocationHolder.checkStatus = (ImageView) c.d(view, R.id.check_status, "field 'checkStatus'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchUgcLocationHolder searchUgcLocationHolder = this.f23020b;
        if (searchUgcLocationHolder != null) {
            this.f23020b = null;
            searchUgcLocationHolder.ivUgcLocation = null;
            searchUgcLocationHolder.primaryTitle = null;
            searchUgcLocationHolder.secondaryTitle = null;
            searchUgcLocationHolder.checkStatus = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
