package com.guochao.faceshow.component.f2fmatch.utils;

import android.view.MotionEvent;
import com.guochao.faceshow.utils.DensityUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\f\"\u0004\b\u0011\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper;", "", "()V", "callback", "Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;", "getCallback", "()Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;", "setCallback", "(Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;)V", "lastX", "", "getLastX", "()F", "setLastX", "(F)V", "lastY", "getLastY", "setLastY", "onTouchEvent", "", "event", "Landroid/view/MotionEvent;", "Callback", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SlideTouchHelper {
    @Nullable
    private Callback callback;
    private float lastX;
    private float lastY;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/utils/SlideTouchHelper$Callback;", "", "slideDownConfirmed", "", "slideUpConfirmed", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public interface Callback {
        void slideDownConfirmed();

        void slideUpConfirmed();
    }

    @Nullable
    public final Callback getCallback() {
        return this.callback;
    }

    public final float getLastX() {
        return this.lastX;
    }

    public final float getLastY() {
        return this.lastY;
    }

    public final boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Callback callback = this.callback;
        if (callback == null) {
            return false;
        }
        int action = event.getAction();
        if (action == 0) {
            this.lastX = event.getX();
            this.lastY = event.getY();
        } else if (action == 1) {
            event.getX();
            float y10 = event.getY() - this.lastY;
            if (Math.abs(y10) < DensityUtil.dp2px(60.0f)) {
                return false;
            }
            if (y10 > 0.0f) {
                callback.slideDownConfirmed();
            } else {
                callback.slideUpConfirmed();
            }
        }
        return true;
    }

    public final void setCallback(@Nullable Callback callback) {
        this.callback = callback;
    }

    public final void setLastX(float f10) {
        this.lastX = f10;
    }

    public final void setLastY(float f10) {
        this.lastY = f10;
    }
}
