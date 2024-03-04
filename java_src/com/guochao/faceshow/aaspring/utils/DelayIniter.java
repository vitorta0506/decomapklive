package com.guochao.faceshow.aaspring.utils;

import com.facebook.FacebookSdk;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Requester;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.TencentBean;
import com.guochao.faceshow.aaspring.beans.TencentConfigBean;
import com.guochao.faceshow.aaspring.manager.DownloadableResourceManager;
import com.guochao.faceshow.aaspring.utils.NetworkObserverHelper;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.TCConstants;
import com.guochao.library_xmagic.XMagicHelper;
import com.tencent.rtmp.TXLiveBase;
import com.tencent.rtmp.TXLiveBaseListener;
import com.tencent.ugc.TXUGCBase;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.n;
import java.io.File;
import java.security.interfaces.RSAPublicKey;
import java.util.Calendar;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0007J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0003J\b\u0010\u0016\u001a\u00020\u0010H\u0007J\b\u0010\u0017\u001a\u00020\u0010H\u0007J\b\u0010\u0018\u001a\u00020\u0010H\u0007J\b\u0010\u0019\u001a\u00020\u0010H\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/DelayIniter;", "", "()V", "context", "Lcom/guochao/faceshow/BaseApplication;", "kotlin.jvm.PlatformType", "facebookInited", "", "mCurrentNetwork", "", "mediaFileInited", "networkReged", "tencentInited", "twitterInited", "weiboInited", "checkNetworkToken", "", "checkSecondDay", "initFacebook", "initTXConfig", "tencentConfigBean", "Lcom/guochao/faceshow/aaspring/beans/TencentConfigBean;", "initTencentConfig", "initTwitter", "initWeiBo", "initWhenSplashOrMain", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DelayIniter {
    private static boolean facebookInited;
    private static boolean mediaFileInited;
    private static boolean networkReged;
    private static boolean tencentInited;
    private static boolean twitterInited;
    private static boolean weiboInited;
    @NotNull
    public static final DelayIniter INSTANCE = new DelayIniter();
    private static final BaseApplication context = BaseApplication.getInstance();
    private static int mCurrentNetwork = -1;

    private DelayIniter() {
    }

    @JvmStatic
    public static final void checkNetworkToken() {
        if (networkReged) {
            return;
        }
        networkReged = true;
        NetworkObserverHelper.create(BaseApplication.getInstance()).register(new NetworkObserverHelper.OnNetworkChangeCallBack() { // from class: com.guochao.faceshow.aaspring.utils.c
            @Override // com.guochao.faceshow.aaspring.utils.NetworkObserverHelper.OnNetworkChangeCallBack
            public final void onChange(int i9) {
                DelayIniter.m584checkNetworkToken$lambda3(i9);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: checkNetworkToken$lambda-3  reason: not valid java name */
    public static final void m584checkNetworkToken$lambda3(int i9) {
        if (mCurrentNetwork == 0 && i9 != 0) {
            BaseApplication.getInstance().refreshToken();
        }
        mCurrentNetwork = i9;
    }

    private final void checkSecondDay() {
        long j10 = SpUtils.getLong(BaseApplication.getInstance(), "second_day");
        if (j10 <= 0) {
            SpUtils.setLong(BaseApplication.getInstance(), "second_day", System.currentTimeMillis());
        } else if (SpUtils.getBool(BaseApplication.getInstance(), "second_day_uploaded", false)) {
        } else {
            Calendar calendar = Calendar.getInstance();
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTimeInMillis(j10);
            if (calendar.get(6) - calendar2.get(6) == 1 && calendar.get(1) == calendar2.get(1)) {
                EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.second_day_meeting);
                SpUtils.setBool(BaseApplication.getInstance(), "second_day_uploaded", true);
            }
        }
    }

    @JvmStatic
    public static final void initFacebook() {
        if (facebookInited) {
            return;
        }
        facebookInited = true;
        BaseApplication context2 = context;
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        FacebookSdk.sdkInitialize(context2);
    }

    @JvmStatic
    private static final void initTXConfig(TencentConfigBean tencentConfigBean) {
        BaseApplication context2 = BaseApplication.getInstance();
        com.guochao.faceshow.aaspring.manager.im.b.l0().k(context2, tencentConfigBean.getImAppId());
        XMagicHelper.Companion companion = XMagicHelper.Companion;
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        String beautyKey = tencentConfigBean.getBeautyKey();
        Intrinsics.checkNotNullExpressionValue(beautyKey, "tencentConfigBean.beautyKey");
        String beautyLicenseUrl = tencentConfigBean.getBeautyLicenseUrl();
        Intrinsics.checkNotNullExpressionValue(beautyLicenseUrl, "tencentConfigBean.beautyLicenseUrl");
        companion.init(context2, beautyKey, beautyLicenseUrl);
        TXLiveBase.setConsoleEnabled(false);
        TXLiveBase.setLogLevel(6);
        TXUGCBase.getInstance().setLicence(context2, tencentConfigBean.getBeautyLicenseUrl(), tencentConfigBean.getBeautyKey());
        TXLiveBase.setAppID(tencentConfigBean.getLiveAppId());
        TXLiveBase.setListener(new TXLiveBaseListener() { // from class: com.guochao.faceshow.aaspring.utils.DelayIniter$initTXConfig$1
            @Override // com.tencent.rtmp.TXLiveBaseListener
            public void onLicenceLoaded(int i9, @Nullable String str) {
                super.onLicenceLoaded(i9, str);
            }
        });
        TXLiveBase.getInstance().setLicence(context2, tencentConfigBean.getBeautyLicenseUrl(), tencentConfigBean.getBeautyKey());
    }

    @JvmStatic
    public static final void initTencentConfig() {
        if (tencentInited) {
            return;
        }
        tencentInited = true;
        if (SpUtils.getBool(context, "KEY_LICENCE_DIALOG_HAS_SHOWED") || !BaseConfig.isChinese()) {
            GCRequest gCRequest = new GCRequest("api/live/license");
            gCRequest.getCallbackHolder().setSuccessClz(TencentBean.class);
            gCRequest.getCallbackHolder().setSuccess(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.DelayIniter$initTencentConfig$$inlined$success$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                    invoke2(response);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull Response<Object> _response) {
                    BaseApplication baseApplication;
                    BaseApplication baseApplication2;
                    Intrinsics.checkNotNullParameter(_response, "_response");
                    RSAPublicKey rsaPublicKey = RsaUtils.getRsaPublicKey(Requester.PUBLIC_KEY);
                    TencentBean tencentBean = (TencentBean) _response.getData();
                    try {
                        TencentConfigBean tencentConfigBean = (TencentConfigBean) GsonGetter.getGson().fromJson(RsaUtils.decodeByPublicKey(tencentBean != null ? tencentBean.getLicense() : null, rsaPublicKey), (Class<Object>) TencentConfigBean.class);
                        if (tencentConfigBean == null || tencentConfigBean.equalsLocal()) {
                            return;
                        }
                        tencentConfigBean.saveLocal();
                        baseApplication = DelayIniter.context;
                        new File(baseApplication.getExternalFilesDir(null), TCConstants.UGC_LICENCE_NAME).deleteOnExit();
                        baseApplication2 = DelayIniter.context;
                        new File(baseApplication2.getExternalFilesDir(null), "TXLiveSDK.licence").deleteOnExit();
                    } catch (Exception unused) {
                    }
                }
            });
            gCRequest.getCallbackHolder().setFailClz(Object.class);
            gCRequest.getCallbackHolder().setFail(new Function1<Response<Object>, Unit>() { // from class: com.guochao.faceshow.aaspring.utils.DelayIniter$initTencentConfig$$inlined$fail$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Response<Object> response) {
                    invoke2(response);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Response<Object> response) {
                    Intrinsics.checkNotNull(response, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>");
                    System.out.println();
                }
            });
            gCRequest.request();
        }
    }

    @JvmStatic
    public static final void initTwitter() {
        if (twitterInited) {
            return;
        }
        twitterInited = true;
        try {
            n.b c10 = new n.b(BaseApplication.getInstance()).c(new com.twitter.sdk.android.core.c(3));
            BaseApplication baseApplication = context;
            com.twitter.sdk.android.core.l.i(c10.d(new TwitterAuthConfig(baseApplication.getString(R.string.CONSUMER_KEY), baseApplication.getString(R.string.CONSUMER_SECRET))).b(false).a());
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    public static final void initWeiBo() {
        if (weiboInited) {
            return;
        }
        weiboInited = true;
    }

    @JvmStatic
    public static final void initWhenSplashOrMain() {
        if (mediaFileInited) {
            return;
        }
        EventTrackingV2Utils.INSTANCE.track(EventTrackingV2Utils.app_open);
        INSTANCE.checkSecondDay();
        DownloadableResourceManager.INSTANCE.startDownload();
        mediaFileInited = true;
        MediaFileFinder.Companion.getInstance().readIfHasPermission();
        PhotoObserver companion = PhotoObserver.Companion.getInstance();
        BaseApplication context2 = context;
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        companion.init(context2);
        UnusedFileDeleter.delete();
        com.guochao.faceshow.aaspring.modulars.googlepay.i.e().f();
        TencentConfigBean tencentConfigBean = TencentConfigBean.getDefault();
        Intrinsics.checkNotNullExpressionValue(tencentConfigBean, "getDefault()");
        initTXConfig(tencentConfigBean);
        initWeiBo();
    }
}
