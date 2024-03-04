package com.guochao.faceshow.aaspring.manager;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.d;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.request.BaseFaceCastRequest;
import com.guochao.faceshow.aaspring.base.http.request.GetRequest;
import com.guochao.faceshow.aaspring.base.http.request.PostRequest;
import com.guochao.faceshow.aaspring.base.http.response.FaceCastBaseResponse;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.GiftBagNumListBean;
import com.guochao.faceshow.aaspring.beans.SplashInfoData;
import com.guochao.faceshow.aaspring.config.ServerConfig;
import com.guochao.faceshow.aaspring.modulars.googlepay.firstrecharge.FirstRechargeDownTimeUtils;
import com.guochao.faceshow.aaspring.utils.CustomNameCacheUtils;
import com.guochao.faceshow.aaspring.utils.DateUtils;
import com.guochao.faceshow.aaspring.utils.EventTrackingV2Utils;
import com.guochao.faceshow.aaspring.utils.SpUtils;
import com.guochao.faceshow.aaspring.utils.SplashUtils;
import com.guochao.faceshow.bean.UserBean;
import com.guochao.faceshow.utils.BaseConfig;
import com.guochao.faceshow.utils.Contants;
import com.guochao.faceshow.utils.SensitiveWordFilter;
import com.guochao.lib_core.feature.Feature;
import java.util.ArrayList;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class i implements d.a {

    /* renamed from: g  reason: collision with root package name */
    private static i f16490g;

    /* renamed from: a  reason: collision with root package name */
    private ServerConfig f16491a;

    /* renamed from: b  reason: collision with root package name */
    private Context f16492b;

    /* renamed from: c  reason: collision with root package name */
    private final List<InterfaceC0154i> f16493c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public boolean f16494d = false;

    /* renamed from: e  reason: collision with root package name */
    private GiftBagNumListBean f16495e;

    /* renamed from: f  reason: collision with root package name */
    private bb.b f16496f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends com.guochao.faceshow.aaspring.base.http.callback.c<ServerConfig> {
        a() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable ServerConfig serverConfig, @NonNull FaceCastBaseResponse<ServerConfig> faceCastBaseResponse) {
            if (serverConfig != null) {
                if (!DateUtils.isSameData(String.valueOf(CustomNameCacheUtils.getLong(i.this.f16492b, CustomNameCacheUtils.MODULE_SEVER_CONFIG_TIME, CustomNameCacheUtils.KEY_SEVER_CONFIG_TIME)), serverConfig.getThisDate())) {
                    CustomNameCacheUtils.setInt(i.this.f16492b, CustomNameCacheUtils.MODULE_SEVER_CONFIG_TIME, CustomNameCacheUtils.KEY_SELECT_ADVERTISEMENT, 0);
                    CustomNameCacheUtils.setLong(i.this.f16492b, CustomNameCacheUtils.MODULE_SEVER_CONFIG_TIME, CustomNameCacheUtils.KEY_SEVER_CONFIG_TIME, Long.parseLong(serverConfig.getThisDate()));
                }
                i.this.k(serverConfig);
                i.this.f16491a = serverConfig;
                i.this.f16494d = true;
                EventBus.getDefault().post(i.this.f16491a);
                i.this.q();
                i.this.m();
                i.this.o();
                i.this.n();
                i.this.v();
                return;
            }
            onFailure(new g7.a<>(new Exception(), -1));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(g7.a<ServerConfig> aVar) {
            i.this.f16494d = false;
            ServerConfig serverConfig = (ServerConfig) com.guochao.faceshow.aaspring.manager.b.b("serverconfig" + SpUtils.getStr(i.this.f16492b, Contants.USER_ID), ServerConfig.class);
            if (serverConfig != null) {
                i.this.f16491a = serverConfig;
                i.this.k(serverConfig);
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements GCRequestJava.d<GiftBagNumListBean> {
        b() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.v2.GCRequestJava.d
        public void a(@NonNull Response<GiftBagNumListBean> response) {
            i.this.f16495e = response.getData();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c extends com.guochao.faceshow.aaspring.base.http.callback.c<List<String>> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends TypeToken<List<String>> {
            a() {
            }
        }

        c() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<List<String>> aVar) {
            SensitiveWordFilter.getInstance().updateWords((List) com.guochao.faceshow.aaspring.manager.b.a("sensitive_word", "sensitive", new a().getType()));
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable List<String> list, @NonNull FaceCastBaseResponse<List<String>> faceCastBaseResponse) {
            if (list == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
                return;
            }
            com.guochao.faceshow.aaspring.manager.b.f("sensitive_word", "sensitive", list);
            SensitiveWordFilter.getInstance().updateWords(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
        d() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else {
                c8.a.r().x(num.intValue());
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends com.guochao.faceshow.aaspring.base.http.callback.c<Integer> {
        e() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        /* renamed from: a */
        public void onResponse(@Nullable Integer num, @NonNull FaceCastBaseResponse<Integer> faceCastBaseResponse) {
            if (num == null) {
                onFailure(new g7.a<>(new Exception(""), -1));
            } else {
                h8.a.a(num);
            }
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Integer> aVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        f() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            if (obj != null) {
                try {
                    b8.e.g().c().setRestCount(new JSONObject(obj.toString()).getInt("restCount"));
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class g extends com.guochao.faceshow.aaspring.base.http.callback.c<Object> {
        g() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<Object> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable Object obj, @NonNull FaceCastBaseResponse<Object> faceCastBaseResponse) {
            if (obj != null) {
                try {
                    JSONObject jSONObject = new JSONObject(obj.toString());
                    int i9 = jSONObject.getInt("isExposuring");
                    long j10 = jSONObject.getLong("endTime");
                    UserBean c10 = b8.e.g().c();
                    c10.setIsExposuring(i9);
                    c10.setExposureEndTime(j10);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h extends com.guochao.faceshow.aaspring.base.http.callback.c<SplashInfoData> {
        h() {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onFailure(@NonNull g7.a<SplashInfoData> aVar) {
        }

        @Override // com.guochao.faceshow.aaspring.base.http.callback.c
        public void onResponse(@Nullable SplashInfoData splashInfoData, @NonNull FaceCastBaseResponse<SplashInfoData> faceCastBaseResponse) {
            SpUtils.setStr(i.this.f16492b, Contants.WELCOME_PAGE, new Gson().toJson(splashInfoData));
        }
    }

    /* renamed from: com.guochao.faceshow.aaspring.manager.i$i  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0154i {
        void onServerConfigChanged(ServerConfig serverConfig, ServerConfig serverConfig2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(ServerConfig serverConfig) {
        serverConfig.calServerTimeDiff();
        for (InterfaceC0154i interfaceC0154i : this.f16493c) {
            interfaceC0154i.onServerConfigChanged(this.f16491a, serverConfig);
        }
        this.f16491a = serverConfig;
        FirstRechargeDownTimeUtils.INSTANCE.setLoginTime(serverConfig);
        BaseFaceCastRequest.f16243v = this.f16491a.getE();
        com.guochao.faceshow.aaspring.manager.b.e("serverconfig" + b8.e.g().c().getUserId(), serverConfig);
        EventTrackingV2Utils.INSTANCE.setServerDiffTime(serverConfig.getServerTimeDiff());
    }

    private void l() {
        if (BaseConfig.isChinese()) {
            return;
        }
        new GetRequest("tokens/advertisement/checkShow").M(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (BaseConfig.isChinese()) {
            new GetRequest("tokens/superExposure/status").M(new g());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (BaseConfig.isChinese()) {
            new GetRequest("tokens/shortVideo/checkRestBrowseCount").M(new e());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (BaseConfig.isChinese()) {
            new GetRequest("tokens/userLike/checkSuperLikeRestCount").M(new f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        SplashUtils.getSplashScreenInfo(this.f16492b, new h());
        x();
        c8.b.k().q();
        k8.a.c().e();
    }

    public static i u() {
        i iVar;
        synchronized (i.class) {
            if (f16490g == null) {
                f16490g = new i();
            }
            iVar = f16490g;
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        new GetRequest("tokens/sensitive/words").M(new c());
    }

    @Override // b8.d.a
    public void onLogout() {
    }

    @Override // b8.d.a
    public void onUserChanged(UserBean userBean, UserBean userBean2) {
        com.guochao.faceshow.aaspring.manager.a.g().f16447b.clear();
        if (userBean == null || userBean2 == null || TextUtils.isEmpty(userBean2.getUserId()) || TextUtils.isEmpty(userBean.getUserId()) || !userBean2.getUserId().equals(userBean.getUserId()) || !this.f16494d) {
            this.f16494d = false;
            if (userBean2 != null) {
                y();
            } else {
                this.f16491a = ServerConfig.DEFAULT;
            }
        }
    }

    @Override // b8.d.a
    public /* synthetic */ void onUserChanged(UserBean userBean, UserBean userBean2, boolean z10, boolean z11, boolean z12) {
        b8.c.a(this, userBean, userBean2, z10, z11, z12);
    }

    public void p() {
        k(this.f16491a);
    }

    public void r() {
        new GCRequestJava("api/token/trade/bag/simpleList").j(new b()).method(GCRequest.Method.GET).request();
    }

    public void registerOnServerConfigChangedListener(InterfaceC0154i interfaceC0154i) {
        this.f16493c.add(interfaceC0154i);
    }

    public ServerConfig s() {
        if (this.f16491a == null) {
            this.f16491a = ServerConfig.DEFAULT;
        }
        return this.f16491a;
    }

    public GiftBagNumListBean t() {
        return this.f16495e;
    }

    public void unregisterOnServerConfigChangedListener(InterfaceC0154i interfaceC0154i) {
        this.f16493c.remove(interfaceC0154i);
    }

    public void w(Context context) {
        this.f16492b = context.getApplicationContext();
        b8.e.g().registerOnUserChangedListener(this);
        this.f16491a = ServerConfig.DEFAULT;
        String str = SpUtils.getStr(context, Contants.USER_ID);
        BaseFaceCastRequest.f16243v = this.f16491a.getE();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ServerConfig serverConfig = (ServerConfig) com.guochao.faceshow.aaspring.manager.b.b("serverconfig" + str, ServerConfig.class);
        if (serverConfig != null) {
            this.f16491a = serverConfig;
        }
        Feature.loadCacheFirst(str);
    }

    public void x() {
        if (this.f16496f == null) {
            this.f16496f = new bb.b();
        }
        this.f16496f.j();
    }

    public void y() {
        Feature.fetch();
        new PostRequest("sys/config/getConfigList").K(false).v(JThirdPlatFormInterface.KEY_TOKEN, SpUtils.getStr(this.f16492b, Contants.USER_TOKEN)).M(new a());
        l();
    }

    public void z() {
        com.guochao.faceshow.aaspring.manager.b.e("serverconfig" + b8.e.g().c().getUserId(), this.f16491a);
    }
}
