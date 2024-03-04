package com.guochao.faceshow.aaspring.modulars.onevone.pendant.filter;

import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class FilterFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private FilterFragment f21052b;

    @UiThread
    public FilterFragment_ViewBinding(FilterFragment filterFragment, View view) {
        this.f21052b = filterFragment;
        filterFragment.filterSeekbar = (SeekBar) c.d(view, R.id.filter_seekbar, "field 'filterSeekbar'", SeekBar.class);
        filterFragment.content = (RecyclerView) c.d(view, R.id.content, "field 'content'", RecyclerView.class);
        filterFragment.tvFilterLevel = (TextView) c.d(view, R.id.tv_filter_level, "field 'tvFilterLevel'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        FilterFragment filterFragment = this.f21052b;
        if (filterFragment != null) {
            this.f21052b = null;
            filterFragment.filterSeekbar = null;
            filterFragment.content = null;
            filterFragment.tvFilterLevel = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
