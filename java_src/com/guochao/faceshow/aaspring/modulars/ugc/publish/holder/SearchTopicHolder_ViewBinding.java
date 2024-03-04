package com.guochao.faceshow.aaspring.modulars.ugc.publish.holder;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class SearchTopicHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private SearchTopicHolder f23019b;

    @UiThread
    public SearchTopicHolder_ViewBinding(SearchTopicHolder searchTopicHolder, View view) {
        this.f23019b = searchTopicHolder;
        searchTopicHolder.topicName = (TextView) c.d(view, R.id.topic_name, "field 'topicName'", TextView.class);
        searchTopicHolder.joinNum = (TextView) c.d(view, R.id.join_num, "field 'joinNum'", TextView.class);
        searchTopicHolder.divider = c.c(view, R.id.divider, "field 'divider'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SearchTopicHolder searchTopicHolder = this.f23019b;
        if (searchTopicHolder != null) {
            this.f23019b = null;
            searchTopicHolder.topicName = null;
            searchTopicHolder.joinNum = null;
            searchTopicHolder.divider = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
