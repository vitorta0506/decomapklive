package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.guochao.faceshow.aaspring.base.activity.BaseActivity;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.guochao.faceshow.utils.HandlerGetter;
import java.util.Arrays;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class b extends l {

    /* renamed from: e  reason: collision with root package name */
    private CallbackManager f20532e;

    /* loaded from: classes3.dex */
    class a implements FacebookCallback<LoginResult> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.login.utils.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC0198a implements Runnable {
            RunnableC0198a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Context context = b.this.f20570b;
                if (context instanceof BaseActivity) {
                    ((BaseActivity) context).showProgressDialog("");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.guochao.faceshow.aaspring.modulars.login.utils.b$a$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC0199b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ FacebookException f20535a;

            RunnableC0199b(FacebookException facebookException) {
                this.f20535a = facebookException;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.e(-1, this.f20535a.getMessage());
            }
        }

        a() {
        }

        @Override // com.facebook.FacebookCallback
        /* renamed from: a */
        public void onSuccess(LoginResult loginResult) {
            if (loginResult == null) {
                onError(new FacebookException("result is null"));
                return;
            }
            HandlerGetter.getMainHandler().post(new RunnableC0198a());
            b.this.p(loginResult.getAccessToken());
        }

        @Override // com.facebook.FacebookCallback
        public void onCancel() {
            onError(new FacebookException("called cancel"));
        }

        @Override // com.facebook.FacebookCallback
        public void onError(@NonNull FacebookException facebookException) {
            HandlerGetter.runOnUIThread(new RunnableC0199b(facebookException));
            LogUtils.i("zune：", "onError = " + facebookException);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.guochao.faceshow.aaspring.modulars.login.utils.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0200b implements GraphRequest.GraphJSONObjectCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AccessToken f20537a;

        C0200b(AccessToken accessToken) {
            this.f20537a = accessToken;
        }

        @Override // com.facebook.GraphRequest.GraphJSONObjectCallback
        public void onCompleted(JSONObject jSONObject, GraphResponse graphResponse) {
            if (jSONObject != null) {
                try {
                    b.this.a(7, this.f20537a.getToken(), jSONObject.optString("id"), null);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public b(Context context) {
        super(context);
        DelayIniter.initFacebook();
        this.f20532e = CallbackManager.Factory.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(AccessToken accessToken) {
        Bundle bundle = new Bundle();
        bundle.putString(GraphRequest.FIELDS_PARAM, "id,name,picture");
        GraphRequest newMeRequest = GraphRequest.newMeRequest(accessToken, new C0200b(accessToken));
        newMeRequest.setParameters(bundle);
        newMeRequest.executeAsync();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void g() {
        super.g();
        LoginManager.getInstance().unregisterCallback(this.f20532e);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void i(int i9, int i10, @Nullable Intent intent) {
        super.i(i9, i10, intent);
        CallbackManager callbackManager = this.f20532e;
        if (callbackManager != null) {
            callbackManager.onActivityResult(i9, i10, intent);
        }
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public boolean l() {
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
        LoginManager.getInstance().logOut();
        LoginManager.getInstance().registerCallback(this.f20532e, new a());
        LoginManager.getInstance().logIn((Activity) this.f20570b, Arrays.asList("public_profile"));
    }
}
