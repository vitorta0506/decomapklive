package com.guochao.faceshow.aaspring.modulars.onevone.pendant.beauty;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.c;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class BeautyHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private BeautyHolder f21001b;

    @UiThread
    public BeautyHolder_ViewBinding(BeautyHolder beautyHolder, View view) {
        this.f21001b = beautyHolder;
        beautyHolder.beautyIcon = (ImageView) c.d(view, R.id.beauty_icon, "field 'beautyIcon'", ImageView.class);
        beautyHolder.beautyName = (TextView) c.d(view, R.id.beauty_name, "field 'beautyName'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BeautyHolder beautyHolder = this.f21001b;
        if (beautyHolder != null) {
            this.f21001b = null;
            beautyHolder.beautyIcon = null;
            beautyHolder.beautyName = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
