package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.recaptcha.RecaptchaAction;
import com.google.android.gms.recaptcha.RecaptchaActionType;
import com.google.android.gms.recaptcha.RecaptchaHandle;
import com.google.android.gms.recaptcha.RecaptchaResultData;
import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
/* loaded from: classes3.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f20552a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements t4.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f20553a;

        a(h hVar) {
            this.f20553a = hVar;
        }

        @Override // t4.d
        public void a(@NonNull Exception exc) {
            i.this.f(exc);
            h hVar = this.f20553a;
            if (hVar != null) {
                hVar.a(exc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements t4.e<RecaptchaHandle> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f20555a;

        b(h hVar) {
            this.f20555a = hVar;
        }

        @Override // t4.e
        /* renamed from: a */
        public void onSuccess(RecaptchaHandle recaptchaHandle) {
            h hVar = this.f20555a;
            if (hVar != null) {
                hVar.b(recaptchaHandle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements t4.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f20557a;

        c(g gVar) {
            this.f20557a = gVar;
        }

        @Override // t4.d
        public void a(@NonNull Exception exc) {
            i.this.f(exc);
            g gVar = this.f20557a;
            if (gVar != null) {
                gVar.a(exc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements t4.e<RecaptchaResultData> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f20559a;

        d(g gVar) {
            this.f20559a = gVar;
        }

        @Override // t4.e
        /* renamed from: a */
        public void onSuccess(RecaptchaResultData recaptchaResultData) {
            String I = recaptchaResultData.I();
            if (this.f20559a != null && !I.isEmpty()) {
                this.f20559a.b(I);
            }
            LogUtils.d("executeRecaptcha", "reCAPTCHA response token: " + I);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements t4.d {
        e() {
        }

        @Override // t4.d
        public void a(@NonNull Exception exc) {
            i.this.f(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements t4.e<Boolean> {
        f() {
        }

        @Override // t4.e
        /* renamed from: a */
        public void onSuccess(Boolean bool) {
        }
    }

    public static i d() {
        i iVar;
        synchronized (i.class) {
            if (f20552a == null) {
                f20552a = new i();
            }
            iVar = f20552a;
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Exception exc) {
        if (exc instanceof ApiException) {
            int statusCode = ((ApiException) exc).getStatusCode();
            if (statusCode == 36014) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "操作已中止。");
                LogUtils.d("executeRecaptcha", "操作已中止。");
                return;
            } else if (statusCode == 36010) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "所有允许的验证尝试均已用尽。");
                LogUtils.d("executeRecaptcha", "所有允许的验证尝试均已用尽。");
                return;
            } else if (statusCode == 36006) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "质询帐户请求令牌已过期。");
                LogUtils.d("executeRecaptcha", "质询帐户请求令牌已过期。");
                return;
            } else if (statusCode == 36008) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "验证 PIN 的格式无效。");
                LogUtils.d("executeRecaptcha", "验证 PIN 的格式无效。");
                return;
            } else if (statusCode == 36007) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "质询帐户请求令牌无效。");
                LogUtils.d("executeRecaptcha", "质询帐户请求令牌无效。");
                return;
            } else if (statusCode == 36009) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "验证 PIN 与发送到被质疑帐户的 PIN 不匹配。");
                LogUtils.d("executeRecaptcha", "验证 PIN 与发送到被质疑帐户的 PIN 不匹配。");
                return;
            } else if (statusCode == 36005) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "在两个因素身份验证调用期间发生内部错误。");
                LogUtils.d("executeRecaptcha", "在两个因素身份验证调用期间发生内部错误。");
                return;
            } else if (statusCode == 36004) {
                ToastUtils.debugToast(BaseApplication.getInstance(), "重新验证码功能被禁用。");
                LogUtils.d("executeRecaptcha", "重新验证码功能被禁用。");
                return;
            } else {
                BaseApplication baseApplication = BaseApplication.getInstance();
                ToastUtils.debugToast(baseApplication, statusCode + "message:" + exc.getMessage());
                return;
            }
        }
        ToastUtils.debugToast(BaseApplication.getInstance(), exc.getMessage());
        LogUtils.d("executeRecaptcha", exc.getMessage());
    }

    public void b(Activity activity, RecaptchaHandle recaptchaHandle) {
        if (recaptchaHandle != null) {
            com.google.android.gms.recaptcha.a.a(activity).d(recaptchaHandle).f(activity, new f()).d(activity, new e());
        }
    }

    public void c(Activity activity, RecaptchaHandle recaptchaHandle, g gVar) {
        if (recaptchaHandle != null) {
            com.google.android.gms.recaptcha.a.a(activity).b(recaptchaHandle, new RecaptchaAction(new RecaptchaActionType(RecaptchaActionType.SIGNUP))).f(activity, new d(gVar)).d(activity, new c(gVar));
            return;
        }
        if (gVar != null) {
            gVar.a(null);
        }
        ToastUtils.debugToast(BaseApplication.getInstance(), "初始化失败了 开始从h5获取token");
    }

    public void e(Activity activity, h hVar) {
        if (o9.b.e()) {
            com.google.android.gms.recaptcha.a.a(activity).init("6LfxD78dAAAAABBJJlZ2aR6oUq9-nqpVTbBadeNn").f(activity, new b(hVar)).d(activity, new a(hVar));
        }
    }
}
