package com.guochao.faceshow.aaspring.modulars.onevone.pendant.filter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.b;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FilterItemHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FilterItemHolder f21053b;

    /* renamed from: c  reason: collision with root package name */
    private View f21054c;

    /* loaded from: classes3.dex */
    class a extends b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FilterItemHolder f21055a;

        a(FilterItemHolder filterItemHolder) {
            this.f21055a = filterItemHolder;
        }

        @Override // butterknife.internal.b
        public void doClick(View view) {
            this.f21055a.onViewClicked(view);
        }
    }

    @UiThread
    public FilterItemHolder_ViewBinding(FilterItemHolder filterItemHolder, View view) {
        this.f21053b = filterItemHolder;
        View c10 = c.c(view, R.id.motion_pannel_item_img, "field 'motionPannelItemImg' and method 'onViewClicked'");
        filterItemHolder.motionPannelItemImg = (ImageView) c.a(c10, R.id.motion_pannel_item_img, "field 'motionPannelItemImg'", ImageView.class);
        this.f21054c = c10;
        c10.setOnClickListener(new a(filterItemHolder));
        filterItemHolder.selectItem = c.c(view, R.id.select_item, "field 'selectItem'");
        filterItemHolder.mTextViewName = (TextView) c.d(view, R.id.name, "field 'mTextViewName'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FilterItemHolder filterItemHolder = this.f21053b;
        if (filterItemHolder != null) {
            this.f21053b = null;
            filterItemHolder.motionPannelItemImg = null;
            filterItemHolder.selectItem = null;
            filterItemHolder.mTextViewName = null;
            this.f21054c.setOnClickListener(null);
            this.f21054c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
