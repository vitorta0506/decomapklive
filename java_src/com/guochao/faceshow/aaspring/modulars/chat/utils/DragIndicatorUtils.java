package com.guochao.faceshow.aaspring.modulars.chat.utils;

import com.guochao.faceshow.utils.HandlerGetter;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/chat/utils/DragIndicatorUtils;", "", "()V", "isAniming", "", "()Z", "setAniming", "(Z)V", "resetAniming", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DragIndicatorUtils {
    @NotNull
    public static final DragIndicatorUtils INSTANCE = new DragIndicatorUtils();
    private static boolean isAniming;

    private DragIndicatorUtils() {
    }

    public final boolean isAniming() {
        return isAniming;
    }

    public final void resetAniming() {
        isAniming = true;
        HandlerGetter.getMainHandler().postDelayed(new Runnable() { // from class: com.guochao.faceshow.aaspring.modulars.chat.utils.c
            @Override // java.lang.Runnable
            public final void run() {
                DragIndicatorUtils.isAniming = false;
            }
        }, 720L);
    }

    public final void setAniming(boolean z10) {
        isAniming = z10;
    }
}
