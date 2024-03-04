package com.guochao.faceshow.aaspring.views.doodle.dialog;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class DoodleTextDialog_ViewBinding implements Unbinder {
    @UiThread
    public DoodleTextDialog_ViewBinding(DoodleTextDialog doodleTextDialog, View view) {
        TextView textView = (TextView) c.a(c.c(view, R.id.tv_cancel, "field 'tvCancel' and method 'onViewClicked'"), R.id.tv_cancel, "field 'tvCancel'", TextView.class);
        throw null;
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        throw new IllegalStateException("Bindings already cleared.");
    }
}
