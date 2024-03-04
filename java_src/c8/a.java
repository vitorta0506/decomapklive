package c8;

import android.app.Activity;
import android.content.DialogInterface;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.beans.AdsBean;
import com.guochao.faceshow.aaspring.beans.AdsRequestBean;
import com.guochao.faceshow.aaspring.beans.UserSignBean;
import com.guochao.faceshow.aaspring.manager.i;
import com.guochao.faceshow.aaspring.modulars.gift.NewSignGetter;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.GsonGetter;
import com.guochao.faceshow.utils.MD5Utils;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.metadata.MetaData;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: i  reason: collision with root package name */
    private static a f1621i;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1622a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1623b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f1624c = false;

    /* renamed from: d  reason: collision with root package name */
    g f1625d = new c();

    /* renamed from: e  reason: collision with root package name */
    private Set<AdsRequestBean> f1626e = new HashSet();

    /* renamed from: f  reason: collision with root package name */
    private boolean f1627f = false;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private h f1628g;

    /* renamed from: h  reason: collision with root package name */
    private int f1629h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c8.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0024a implements IUnityAdsInitializationListener {
        C0024a() {
        }

        @Override // com.unity3d.ads.IUnityAdsInitializationListener
        public void onInitializationComplete() {
            a.this.v();
        }

        @Override // com.unity3d.ads.IUnityAdsInitializationListener
        public void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str) {
            LogUtils.i("AdsHelper", "onInitializationFailed: " + unityAdsInitializationError + "   " + str);
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "onInitializationFailed: " + unityAdsInitializationError + " " + str);
            a.this.f1622a = false;
            a.this.f1623b = false;
            a.this.f1624c = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements IUnityAdsLoadListener {
        b() {
        }

        @Override // com.unity3d.ads.IUnityAdsLoadListener
        public void onUnityAdsAdLoaded(String str) {
            a.this.f1622a = true;
            a.this.f1623b = false;
            if (a.this.f1628g == null || a.this.q() != 1) {
                return;
            }
            a.this.f1628g.c("");
        }

        @Override // com.unity3d.ads.IUnityAdsLoadListener
        public void onUnityAdsFailedToLoad(String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "onUnityAdsFailedToLoad: " + unityAdsLoadError + " " + str2);
            a.this.f1624c = true;
            if (a.this.f1628g != null) {
                a.this.f1628g.onError();
            }
        }
    }

    /* loaded from: classes3.dex */
    class c extends g {

        /* renamed from: c  reason: collision with root package name */
        private long f1632c;

        c() {
            super();
        }

        @Override // com.unity3d.ads.IUnityAdsLoadListener
        public void onUnityAdsAdLoaded(String str) {
            LogUtils.i("AdsHelper", "onUnityAdsReady = " + str);
            if (a.this.f1628g != null) {
                a.this.f1628g.c(str);
            }
        }

        @Override // com.unity3d.ads.IUnityAdsLoadListener
        public void onUnityAdsFailedToLoad(String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2) {
            LogUtils.i("AdsHelper", "onUnityAdsError = " + str);
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "(仅测试) 广告初始化error onUnityAdsFailedToLoad: " + unityAdsLoadError + " " + str2);
            EventTrackingUtils.getInstance().track(EventTrackingUtils.LOOK_ADS_LOAD_FAILED);
        }

        @Override // com.unity3d.ads.IUnityAdsShowListener
        public void onUnityAdsShowClick(String str) {
            LogUtils.i("AdsHelper", "onUnityAdsShowClick:   " + str);
        }

        @Override // com.unity3d.ads.IUnityAdsShowListener
        public void onUnityAdsShowComplete(String str, UnityAds.UnityAdsShowCompletionState unityAdsShowCompletionState) {
            LogUtils.i("AdsHelper", "onUnityAdsFinish = " + str);
            int i9 = f.f1640a[unityAdsShowCompletionState.ordinal()];
            if (i9 == 1) {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.LOOK_ADS_SKIPPED);
                ToastUtils.showToast(BaseApplication.getInstance(), BaseApplication.getInstance().getString(R.string.watch_cancelled));
            } else if (i9 != 2) {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.LOOK_ADS_FAILED);
            } else {
                EventTrackingUtils.getInstance().track(EventTrackingUtils.LOOK_ADS_SUCC);
                a.this.m(this.f1641a, this.f1632c);
            }
            a.this.v();
        }

        @Override // com.unity3d.ads.IUnityAdsShowListener
        public void onUnityAdsShowFailure(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2) {
            LogUtils.i("AdsHelper", "onUnityAdsShowFailure: " + unityAdsShowError + "  " + str2);
            BaseApplication baseApplication = BaseApplication.getInstance();
            ToastUtils.debugToast(baseApplication, "onUnityAdsShowFailure: " + unityAdsShowError.toString() + " " + str2);
            a.this.v();
        }

        @Override // com.unity3d.ads.IUnityAdsShowListener
        public void onUnityAdsShowStart(String str) {
            LogUtils.i("AdsHelper", "onUnityAdsStart = " + str);
            this.f1632c = System.currentTimeMillis() + i.u().s().getServerTimeDiff();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f1634a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AdsRequestBean f1635b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c8.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class DialogInterface$OnDismissListenerC0025a implements DialogInterface.OnDismissListener {
            DialogInterface$OnDismissListenerC0025a() {
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (a.this.f1622a) {
                    return;
                }
                if (a.this.f1628g != null) {
                    a.this.f1628g.a();
                }
                a.this.t();
            }
        }

        d(Activity activity, AdsRequestBean adsRequestBean) {
            this.f1634a = activity;
            this.f1635b = adsRequestBean;
        }

        private void a(AdsBean adsBean) {
            com.guochao.faceshow.dialog.a aVar = new com.guochao.faceshow.dialog.a(this.f1634a, String.valueOf(adsBean.getDiamondNum()));
            aVar.show();
            aVar.setOnDismissListener(new DialogInterface$OnDismissListenerC0025a());
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<String> aVar) {
            if (aVar != null && aVar.a() == 90001) {
                a.this.s((FragmentActivity) this.f1634a, this.f1635b);
                return;
            }
            if (aVar != null && aVar.a() == 0 && !TextUtils.isEmpty(aVar.d())) {
                try {
                    AdsBean adsBean = (AdsBean) GsonGetter.getGson().fromJson(new JSONObject(aVar.d()).toString(), (Class<Object>) AdsBean.class);
                    if (adsBean != null && adsBean.getDiamondNum() > 0) {
                        a(adsBean);
                        a.this.x(0);
                    }
                } catch (Exception unused) {
                }
            }
            if (aVar == null || (aVar.a() == 0 && TextUtils.isEmpty(aVar.d()))) {
                a.this.x(0);
            }
            if (a.this.f1628g != null) {
                a.this.f1628g.onError();
                ToastUtils.debugToast(BaseApplication.getInstance(), "(仅测试) tokens/live/userLookAdvertisement 响应error");
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable String str, @NonNull FaceCastBaseResponse<String> faceCastBaseResponse) {
            Activity activity;
            if (str == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str).getJSONObject("result");
                if (jSONObject.getInt("result") != 0) {
                    a.this.x(0);
                    onFailure(new g7.a<>(new Exception(""), -1));
                    return;
                }
                AdsBean adsBean = (AdsBean) GsonGetter.getGson().fromJson(jSONObject.toString(), (Class<Object>) AdsBean.class);
                if (a.this.f1628g != null && adsBean != null && adsBean.getResult() == 0) {
                    CustomNameCacheUtils.setInt(this.f1634a, CustomNameCacheUtils.MODULE_SEVER_CONFIG_TIME, CustomNameCacheUtils.KEY_SELECT_ADVERTISEMENT, 0);
                    a.this.f1628g.b(adsBean);
                    if (!a.this.f1622a) {
                        a.this.f1628g.onError();
                        LogUtils.i("zune：", "(仅测试) tokens/live/userLookAdvertisement 响应成功，但是再次初始化erroronError() ");
                        ToastUtils.debugToast(BaseApplication.getInstance(), "(仅测试) tokens/live/userLookAdvertisement 响应成功，但是再次初始化error");
                        a.this.t();
                    }
                } else {
                    a.this.x(0);
                    CustomNameCacheUtils.setInt(this.f1634a, CustomNameCacheUtils.MODULE_SEVER_CONFIG_TIME, CustomNameCacheUtils.KEY_SELECT_ADVERTISEMENT, 1);
                    onFailure(null);
                }
                i.u().z();
                if (adsBean != null && (activity = this.f1634a) != null && !activity.isDestroyed() && !this.f1634a.isFinishing() && adsBean.getDiamondCount() > 0) {
                    a(adsBean);
                } else {
                    ToastUtils.debugToast(BaseApplication.getInstance(), "(仅测试) tokens/live/userLookAdvertisement 响应成功，其它原因error");
                }
            } catch (Exception unused) {
                onFailure(new g7.a<>(new Exception(""), -1));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<UserSignBean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ FragmentActivity f1638a;

        e(FragmentActivity fragmentActivity) {
            this.f1638a = fragmentActivity;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c, com.guochao.faceshow.aaspring.base.http.callback.b
        public void onCompleted() {
            super.onCompleted();
            a.this.f1627f = false;
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<UserSignBean> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable UserSignBean userSignBean, @NonNull FaceCastBaseResponse<UserSignBean> faceCastBaseResponse) {
            if (userSignBean != null) {
                i.u().s().setE(userSignBean.getSesign());
                for (AdsRequestBean adsRequestBean : a.this.f1626e) {
                    FragmentActivity fragmentActivity = this.f1638a;
                    if (fragmentActivity != null && !fragmentActivity.isFinishing() && !this.f1638a.isDestroyed()) {
                        a.this.n(this.f1638a, adsRequestBean);
                    }
                }
                a.this.f1626e.clear();
            }
        }
    }

    /* loaded from: classes3.dex */
    static /* synthetic */ class f {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f1640a;

        static {
            int[] iArr = new int[UnityAds.UnityAdsShowCompletionState.values().length];
            f1640a = iArr;
            try {
                iArr[UnityAds.UnityAdsShowCompletionState.SKIPPED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1640a[UnityAds.UnityAdsShowCompletionState.COMPLETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public abstract class g implements IUnityAdsLoadListener, IUnityAdsShowListener {

        /* renamed from: a  reason: collision with root package name */
        Activity f1641a;

        public g() {
        }

        public void a(Activity activity) {
            this.f1641a = activity;
        }
    }

    /* loaded from: classes3.dex */
    public interface h {
        void a();

        void b(AdsBean adsBean);

        void c(String str);

        void onError();
    }

    private a() {
        t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(Activity activity, long j10) {
        n(activity, new AdsRequestBean(System.currentTimeMillis() + i.u().s().getServerTimeDiff(), j10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(Activity activity, AdsRequestBean adsRequestBean) {
        String str = SpUtils.getStr(BaseApplication.getInstance(), Contants.USER_ID);
        String mD5String = MD5Utils.getMD5String("userId=" + str + "&unixTime=" + adsRequestBean.getUnixTime() + "&sign=" + i.u().s().getE());
        LogUtils.e("MD5", "userId=" + str + "&unixTime=" + adsRequestBean.getUnixTime() + "&startTime=" + adsRequestBean.getStartTime() + "&sign=" + i.u().s().getE() + "&MD5=" + mD5String);
        new PostRequest().Q("tokens/live/v2/userLookAdvertisement").D("unixTime", String.valueOf(adsRequestBean.getUnixTime())).y("startTime", Long.valueOf(adsRequestBean.getStartTime())).y("signature", mD5String).M(new d(activity, adsRequestBean));
    }

    private void o(Activity activity) {
        int i9 = CustomNameCacheUtils.getInt(activity, CustomNameCacheUtils.MODULE_SEVER_CONFIG_TIME, CustomNameCacheUtils.KEY_SELECT_ADVERTISEMENT);
        if (i.u().s() != null && i9 == 0 && !this.f1624c) {
            this.f1625d.a(activity);
            if (!this.f1622a) {
                LogUtils.i("zune", "开始初始化");
                t();
                return;
            }
            LogUtils.i("zune", "已经准备好了");
            h hVar = this.f1628g;
            if (hVar != null) {
                hVar.c("");
                return;
            }
            return;
        }
        LogUtils.i("zune", "看广告的次数超限了");
        h hVar2 = this.f1628g;
        if (hVar2 != null) {
            hVar2.onError();
        }
    }

    public static a r() {
        if (f1621i == null) {
            synchronized (a.class) {
                if (f1621i == null) {
                    f1621i = new a();
                }
            }
        }
        return f1621i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(FragmentActivity fragmentActivity, AdsRequestBean adsRequestBean) {
        this.f1626e.add(adsRequestBean);
        if (this.f1627f) {
            return;
        }
        this.f1627f = true;
        NewSignGetter.INSTANCE.getNewSign(fragmentActivity, new e(fragmentActivity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        if (this.f1622a || this.f1623b) {
            return;
        }
        this.f1623b = true;
        MetaData metaData = new MetaData(BaseApplication.getInstance());
        Boolean bool = Boolean.TRUE;
        metaData.set("privacy.consent", bool);
        metaData.commit();
        MetaData metaData2 = new MetaData(BaseApplication.getInstance());
        metaData2.set("privacy.useroveragelimit", bool);
        metaData2.commit();
        UnityAds.initialize(BaseApplication.getInstance(), "2717418", new C0024a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        UnityAds.load("rewardedVideo", new b());
    }

    public void p(boolean z10) {
        if (z10) {
            BaseApplication baseApplication = BaseApplication.getInstance();
            SpUtils.setLong(baseApplication, "HidePermanentlyAds" + b8.e.g().getUserId(), -1L);
            return;
        }
        BaseApplication baseApplication2 = BaseApplication.getInstance();
        SpUtils.setLong(baseApplication2, "HidePermanentlyAds" + b8.e.g().getUserId(), System.currentTimeMillis());
    }

    public int q() {
        return this.f1629h;
    }

    public boolean u() {
        BaseApplication baseApplication = BaseApplication.getInstance();
        long j10 = SpUtils.getLong(baseApplication, "HidePermanentlyAds" + b8.e.g().getUserId());
        if (j10 == -1) {
            return true;
        }
        return j10 != 0 && System.currentTimeMillis() - j10 <= 86400000;
    }

    public void w(Activity activity, h hVar) {
        this.f1628g = hVar;
        o(activity);
    }

    public void x(int i9) {
        this.f1629h = i9;
    }

    public void y(Activity activity) {
        if (this.f1622a) {
            EventTrackingUtils.getInstance().track(EventTrackingUtils.LOOK_ADS_CLICK);
            UnityAds.show(activity, "rewardedVideo", this.f1625d);
        }
    }

    public void z() {
        this.f1625d.a(null);
        this.f1628g = null;
    }
}
