package com.guochao.faceshow.aaspring.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.LiveOverResult;
import com.guochao.faceshow.utils.BaseConfig;
import java.util.concurrent.TimeUnit;
import r7.a;
/* loaded from: classes3.dex */
public class UserStateHolder {
    private static boolean isLiveOnHome;
    private static boolean isLivingInMic;
    private static boolean isPKPrepare;
    private static boolean isPkingInLive;
    private static boolean isPrivateOrMultiLiving;
    private static boolean isRelease;
    private static boolean sLiving;
    private static boolean sWatchingLive;

    public static boolean checkLivePkState() {
        y7.l lVar = (y7.l) MemoryCache.getInstance().get(y7.l.class);
        if (isIsPKPrepare() || isPkingInLive()) {
            return true;
        }
        if ((lVar == null || !lVar.f60144b) && !isLivingInMic()) {
            return isPrivateOrMultiLiving();
        }
        return true;
    }

    public static boolean checkLiveState(@StringRes int i9, @StringRes int i10, @StringRes int i11, @StringRes int i12) {
        y7.l lVar = (y7.l) MemoryCache.getInstance().get(y7.l.class);
        if ((lVar != null && lVar.f60143a) || isLiving()) {
            if (!TextUtils.isEmpty(BaseApplication.getInstance().getString(i9))) {
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(i9));
            }
            return true;
        } else if (lVar != null && lVar.f60144b) {
            if (!TextUtils.isEmpty(BaseApplication.getInstance().getString(i10))) {
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(i10));
            }
            return true;
        } else if (isLivingInMic()) {
            if (!TextUtils.isEmpty(BaseApplication.getInstance().getString(i11))) {
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(i11));
            }
            return true;
        } else if (com.guochao.faceshow.aaspring.modulars.trtc.call.a.r().q() != null) {
            ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(i12));
            return true;
        } else {
            return false;
        }
    }

    public static void checkLocalLiving(final a.InterfaceC0631a<LiveOverResult> interfaceC0631a, boolean z10) {
        if (z10) {
            isRelease = false;
        }
        if (BaseConfig.isChinese()) {
            interfaceC0631a.a(null);
            return;
        }
        String isLocalLiving = isLocalLiving();
        LogUtils.i("LiveRoom：", "checkLocalLiving liveId = " + isLocalLiving);
        if (!TextUtils.isEmpty(isLocalLiving)) {
            new PostRequest("tokens/live/newLive/finishLive").v("liveId", isLocalLiving).v("type", "2").M(new com.guochao.faceshow.aaspring.base.http.callback.c<LiveOverResult>() { // from class: com.guochao.faceshow.aaspring.utils.UserStateHolder.1
                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onFailure(@NonNull g7.a<LiveOverResult> aVar) {
                    LogUtils.i("LiveRoom：", "close_onFailure");
                    if (UserStateHolder.isRelease) {
                        return;
                    }
                    io.reactivex.k.just(1).delay(1L, TimeUnit.SECONDS).subscribeOn(di.a.b()).observeOn(sh.a.a()).subscribe(new SimpleObserver<Integer>() { // from class: com.guochao.faceshow.aaspring.utils.UserStateHolder.1.1
                        @Override // com.guochao.faceshow.aaspring.utils.SimpleObserver, io.reactivex.r
                        public void onNext(Integer num) {
                            super.onNext((C02321) num);
                            UserStateHolder.checkLocalLiving(a.InterfaceC0631a.this, false);
                        }
                    });
                }

                @Override // com.guochao.faceshow.aaspring.base.http.callback.c
                public void onResponse(@Nullable LiveOverResult liveOverResult, @NonNull FaceCastBaseResponse<LiveOverResult> faceCastBaseResponse) {
                    LogUtils.i("LiveRoom：", "close_response");
                    if (faceCastBaseResponse.getCode() != 1) {
                        onFailure(new g7.a<>(new Exception(""), -1));
                        return;
                    }
                    a.InterfaceC0631a interfaceC0631a2 = a.InterfaceC0631a.this;
                    if (interfaceC0631a2 != null) {
                        interfaceC0631a2.a(liveOverResult);
                    }
                }
            });
        } else if (interfaceC0631a != null) {
            interfaceC0631a.a(null);
        }
    }

    public static boolean isIsPKPrepare() {
        return isPKPrepare;
    }

    public static boolean isLiveOnHome() {
        return isLiveOnHome;
    }

    public static boolean isLiving() {
        return sLiving || isLivingOld();
    }

    public static boolean isLivingInMic() {
        return isLivingInMic;
    }

    private static boolean isLivingOld() {
        y7.l lVar = (y7.l) MemoryCache.getInstance().get(y7.l.class);
        return lVar != null && lVar.f60143a;
    }

    public static String isLocalLiving() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        return SpUtils.getStr(baseApplication, "living" + b8.e.g().getUserId(), "");
    }

    public static boolean isPkingInLive() {
        return isPkingInLive;
    }

    public static boolean isPrivateOrMultiLiving() {
        return isPrivateOrMultiLiving;
    }

    public static boolean isWatchingLive() {
        return sWatchingLive;
    }

    public static void release() {
        isRelease = true;
    }

    public static void reset() {
        sLiving = false;
        sWatchingLive = false;
        isLiveOnHome = false;
        isLivingInMic = false;
    }

    public static void setIsLiveOnHome(boolean z10) {
        isLiveOnHome = z10;
    }

    public static void setIsLivingInMic(boolean z10) {
        isLivingInMic = z10;
    }

    public static void setIsPKPrepare(boolean z10) {
        isPKPrepare = z10;
    }

    public static void setIsPkingInLive(boolean z10) {
        isPkingInLive = z10;
    }

    public static void setIsPrivateOrMultiLiving(boolean z10) {
        isPrivateOrMultiLiving = z10;
    }

    public static void setLiving(boolean z10) {
        sLiving = z10;
        if (z10) {
            return;
        }
        isPrivateOrMultiLiving = false;
    }

    public static void setLocalLiving(String str) {
        BaseApplication baseApplication = BaseApplication.getInstance();
        SpUtils.setStr(baseApplication, "living" + b8.e.g().getUserId(), str);
    }

    public static void setWatchingLive(boolean z10) {
        sWatchingLive = z10;
    }
}
