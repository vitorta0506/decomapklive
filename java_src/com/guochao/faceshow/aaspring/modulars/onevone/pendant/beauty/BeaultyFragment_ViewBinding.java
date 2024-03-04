package com.guochao.faceshow.aaspring.modulars.onevone.pendant.beauty;

import android.view.View;
import android.view.ViewGroup;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BeaultyFragment_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BeaultyFragment f21000b;

    @UiThread
    public BeaultyFragment_ViewBinding(BeaultyFragment beaultyFragment, View view) {
        this.f21000b = beaultyFragment;
        beaultyFragment.content = (RecyclerView) c.d(view, R.id.content, "field 'content'", RecyclerView.class);
        beaultyFragment.filterSeekbar = (SeekBar) c.d(view, R.id.filter_seekbar, "field 'filterSeekbar'", SeekBar.class);
        beaultyFragment.tvFilterLevel = (TextView) c.d(view, R.id.tv_filter_level, "field 'tvFilterLevel'", TextView.class);
        beaultyFragment.filterSeekLay = (ViewGroup) c.d(view, R.id.filter_seekbar_lay, "field 'filterSeekLay'", ViewGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BeaultyFragment beaultyFragment = this.f21000b;
        if (beaultyFragment != null) {
            this.f21000b = null;
            beaultyFragment.content = null;
            beaultyFragment.filterSeekbar = null;
            beaultyFragment.tvFilterLevel = null;
            beaultyFragment.filterSeekLay = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
