package org.light.utils;

import android.view.MotionEvent;
import androidx.annotation.Keep;
@Keep
/* loaded from: classes7.dex */
public class TouchEventUtils {
    @Keep
    public static final int ACTION_DOWN = 0;
    @Keep
    public static final int ACTION_ILLEGAL = -1;
    @Keep
    public static final int ACTION_MOVE = 2;
    @Keep
    public static final int ACTION_POINTER_DOWN = 3;
    @Keep
    public static final int ACTION_POINTER_UP = 4;
    @Keep
    public static final int ACTION_UP = 1;

    @Keep
    public static int getEventAction(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            int i9 = 1;
            if (action != 1) {
                i9 = 2;
                if (action != 2) {
                    if (action != 5) {
                        return action != 6 ? -1 : 4;
                    }
                    return 3;
                }
            }
            return i9;
        }
        return 0;
    }
}
