package com.guochao.faceshow.aaspring.modulars.live.game;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.guochao.faceshow.R;
/* loaded from: classes3.dex */
public class DishWheelItemHolder_ViewBinding implements Unbinder {

    /* renamed from: b  reason: collision with root package name */
    private DishWheelItemHolder f19380b;

    @UiThread
    public DishWheelItemHolder_ViewBinding(DishWheelItemHolder dishWheelItemHolder, View view) {
        this.f19380b = dishWheelItemHolder;
        dishWheelItemHolder.imageWheel = (ImageView) butterknife.internal.c.d(view, R.id.image_wheel, "field 'imageWheel'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DishWheelItemHolder dishWheelItemHolder = this.f19380b;
        if (dishWheelItemHolder != null) {
            this.f19380b = null;
            dishWheelItemHolder.imageWheel = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
