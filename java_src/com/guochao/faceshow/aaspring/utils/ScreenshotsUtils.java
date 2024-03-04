package com.guochao.faceshow.aaspring.utils;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.view.Window;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.utils.ScreenshotsUtils;
import com.guochao.faceshow.utils.Contants;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J&\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001e"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils;", "", "()V", "isPost", "", "()Z", "setPost", "(Z)V", "listener", "Landroid/hardware/display/DisplayManager$DisplayListener;", "getListener", "()Landroid/hardware/display/DisplayManager$DisplayListener;", "changeFlagSecure", "", PushConstants.INTENT_ACTIVITY_NAME, "Landroidx/fragment/app/FragmentActivity;", "switch", "", "initDisplayListener", "context", "Landroid/content/Context;", "removeDisplayListener", "updateScreenshotsSwitch", "fragment", "Landroidx/fragment/app/Fragment;", "roomId", "", "callBack", "Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;", "CallBack", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ScreenshotsUtils {
    private static boolean isPost;
    @NotNull
    public static final ScreenshotsUtils INSTANCE = new ScreenshotsUtils();
    @NotNull
    private static final DisplayManager.DisplayListener listener = new DisplayManager.DisplayListener() { // from class: com.guochao.faceshow.aaspring.utils.ScreenshotsUtils$listener$1
        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i9) {
            LogUtils.i("DisplayManager", "onDisplayAdded");
            EventBus.getDefault().post(new y7.k());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i9) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i9) {
        }
    };

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005À\u0006\u0003"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/ScreenshotsUtils$CallBack;", "", "onCallback", "", "onErrorCallback", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface CallBack {
        void onCallback();

        void onErrorCallback();
    }

    private ScreenshotsUtils() {
    }

    public final void changeFlagSecure(@Nullable FragmentActivity fragmentActivity, int i9) {
        Window window;
        Window window2;
        if (i9 == Contants.SWITCH_SCREEN_SHOTS_ON) {
            if (fragmentActivity == null || (window2 = fragmentActivity.getWindow()) == null) {
                return;
            }
            window2.clearFlags(8192);
        } else if (fragmentActivity == null || (window = fragmentActivity.getWindow()) == null) {
        } else {
            window.addFlags(8192);
        }
    }

    @NotNull
    public final DisplayManager.DisplayListener getListener() {
        return listener;
    }

    public final void initDisplayListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.display.DisplayManager");
        ((DisplayManager) systemService).registerDisplayListener(listener, new Handler(Looper.getMainLooper()));
    }

    public final boolean isPost() {
        return isPost;
    }

    public final void removeDisplayListener(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        DisplayManager.DisplayListener displayListener = listener;
        if (displayListener != null) {
            Object systemService = context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.display.DisplayManager");
            ((DisplayManager) systemService).unregisterDisplayListener(displayListener);
        }
    }

    public final void setPost(boolean z10) {
        isPost = z10;
    }

    public final void updateScreenshotsSwitch(@NotNull Fragment fragment, int i9, @NotNull String roomId, @NotNull final CallBack callBack) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        if (isPost) {
            return;
        }
        isPost = true;
        new PostRequest().O(fragment.getContext()).P(fragment).Q("tokens/live/newLive/updateLiveInfo").c(BaseFaceCastRequest.d.b().c(true)).v("screenShotSwitch", Integer.valueOf(i9)).v("liveId", roomId).I(3).M(new com.guochao.faceshow.aaspring.base.http.callback.c<Object>() { // from class: com.guochao.faceshow.aaspring.utils.ScreenshotsUtils$updateScreenshotsSwitch$1
            @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
            public void onCompleted() {
                super.onCompleted();
                ScreenshotsUtils.INSTANCE.setPost(false);
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onFailure(@NotNull g7.a<Object> exp) {
                Intrinsics.checkNotNullParameter(exp, "exp");
                ScreenshotsUtils.CallBack callBack2 = ScreenshotsUtils.CallBack.this;
                if (callBack2 != null) {
                    callBack2.onErrorCallback();
                }
            }

            @Override // com.guochao.faceshow.aaspring.base.http.callback.c
            public void onResponse(@Nullable Object obj, @NotNull FaceCastBaseResponse<Object> baseResponse) {
                Intrinsics.checkNotNullParameter(baseResponse, "baseResponse");
                ScreenshotsUtils.CallBack callBack2 = ScreenshotsUtils.CallBack.this;
                if (callBack2 != null) {
                    callBack2.onCallback();
                }
            }
        });
    }
}
