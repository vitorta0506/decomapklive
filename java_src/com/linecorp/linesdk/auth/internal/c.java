package com.linecorp.linesdk.auth.internal;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.linecorp.linesdk.LineAccessToken;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineCredential;
import com.linecorp.linesdk.LineIdToken;
import com.linecorp.linesdk.LineProfile;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.LineLoginResult;
import com.linecorp.linesdk.auth.internal.LineAuthenticationStatus;
import com.linecorp.linesdk.auth.internal.a;
import com.linecorp.linesdk.internal.pkce.PKCECode;
import java.util.List;
import vc.d;
import vc.h;
import wc.b;
import wc.e;
import wc.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class c {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private static Intent f28103i;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LineAuthenticationActivity f28104a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final LineAuthenticationConfig f28105b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final e f28106c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final i f28107d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final com.linecorp.linesdk.auth.internal.a f28108e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final vc.a f28109f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final LineAuthenticationParams f28110g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final LineAuthenticationStatus f28111h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b extends AsyncTask<a.c, Void, LineLoginResult> {
        private b() {
        }

        private void c(LineIdToken lineIdToken, String str) {
            qc.c<h> c10 = c.this.f28106c.c();
            if (c10.g()) {
                new b.C0681b().k(lineIdToken).h(c10.e().a()).j(str).g(c.this.f28105b.b()).i(c.this.f28111h.e()).f().b();
                return;
            }
            throw new RuntimeException("Failed to get OpenId Discovery Document.  Response Code: " + c10.d() + " Error Data: " + c10.c());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public LineLoginResult doInBackground(@Nullable a.c... cVarArr) {
            LineProfile lineProfile;
            a.c cVar = cVarArr[0];
            String g10 = cVar.g();
            PKCECode f10 = c.this.f28111h.f();
            String g11 = c.this.f28111h.g();
            if (!TextUtils.isEmpty(g10) && f10 != null && !TextUtils.isEmpty(g11)) {
                qc.c<vc.e> d10 = c.this.f28106c.d(c.this.f28105b.b(), g10, f10, g11);
                if (!d10.g()) {
                    return LineLoginResult.d(d10);
                }
                vc.e e10 = d10.e();
                d a10 = e10.a();
                List<qc.e> c10 = e10.c();
                String str = null;
                if (c10.contains(qc.e.f57157c)) {
                    qc.c<LineProfile> d11 = c.this.f28107d.d(a10);
                    if (!d11.g()) {
                        return LineLoginResult.d(d11);
                    }
                    LineProfile e11 = d11.e();
                    str = e11.getUserId();
                    lineProfile = e11;
                } else {
                    lineProfile = null;
                }
                c.this.f28109f.g(a10);
                LineIdToken b10 = e10.b();
                if (b10 != null) {
                    try {
                        c(b10, str);
                    } catch (Exception e12) {
                        return LineLoginResult.m(e12.getMessage());
                    }
                }
                return new LineLoginResult.b().n(c.this.f28111h.e()).m(lineProfile).l(b10).j(cVar.e()).k(new LineCredential(new LineAccessToken(a10.a(), a10.b(), a10.c()), c10)).h();
            }
            return LineLoginResult.m("Requested data is missing.");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(@NonNull LineLoginResult lineLoginResult) {
            c.this.f28111h.a();
            c.this.f28104a.d(lineLoginResult);
        }
    }

    /* renamed from: com.linecorp.linesdk.auth.internal.c$c  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private class RunnableC0276c implements Runnable {
        private RunnableC0276c() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            if (c.this.f28111h.h() == LineAuthenticationStatus.b.INTENT_RECEIVED || c.this.f28104a.isFinishing()) {
                return;
            }
            if (c.f28103i != null) {
                c.this.k(c.f28103i);
                Intent unused = c.f28103i = null;
                return;
            }
            c.this.f28104a.d(LineLoginResult.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull LineAuthenticationActivity lineAuthenticationActivity, @NonNull LineAuthenticationConfig lineAuthenticationConfig, @NonNull LineAuthenticationStatus lineAuthenticationStatus, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        this(lineAuthenticationActivity, lineAuthenticationConfig, new e(lineAuthenticationActivity.getApplicationContext(), lineAuthenticationConfig.c(), lineAuthenticationConfig.a()), new i(lineAuthenticationActivity.getApplicationContext(), lineAuthenticationConfig.a()), new com.linecorp.linesdk.auth.internal.a(lineAuthenticationStatus), new vc.a(lineAuthenticationActivity.getApplicationContext(), lineAuthenticationConfig.b()), lineAuthenticationStatus, lineAuthenticationParams);
    }

    @MainThread
    public static void m(Intent intent) {
        f28103i = intent;
    }

    @VisibleForTesting
    PKCECode i() {
        return PKCECode.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void j() {
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0276c(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void k(@NonNull Intent intent) {
        LineLoginResult l10;
        this.f28111h.b();
        a.c e10 = this.f28108e.e(intent);
        if (!e10.i()) {
            this.f28111h.a();
            if (e10.h()) {
                l10 = LineLoginResult.a(e10.f());
            } else {
                l10 = LineLoginResult.l(e10.f());
            }
            this.f28104a.d(l10);
            return;
        }
        new b().execute(e10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void l(int i9, int i10, @Nullable Intent intent) {
        if (i9 != 3 || this.f28111h.h() == LineAuthenticationStatus.b.INTENT_RECEIVED) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0276c(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void n() {
        this.f28111h.c();
        PKCECode i9 = i();
        this.f28111h.k(i9);
        try {
            a.b f10 = this.f28108e.f(this.f28104a, this.f28105b, i9, this.f28110g);
            if (f10.d()) {
                this.f28104a.startActivity(f10.a(), f10.c());
            } else {
                this.f28104a.startActivityForResult(f10.a(), 3, f10.c());
            }
            this.f28111h.l(f10.b());
        } catch (ActivityNotFoundException e10) {
            this.f28111h.a();
            this.f28104a.d(LineLoginResult.l(new LineApiError(e10, LineApiError.ErrorCode.LOGIN_ACTIVITY_NOT_FOUND)));
        }
    }

    @VisibleForTesting
    c(@NonNull LineAuthenticationActivity lineAuthenticationActivity, @NonNull LineAuthenticationConfig lineAuthenticationConfig, @NonNull e eVar, @NonNull i iVar, @NonNull com.linecorp.linesdk.auth.internal.a aVar, @NonNull vc.a aVar2, @NonNull LineAuthenticationStatus lineAuthenticationStatus, @NonNull LineAuthenticationParams lineAuthenticationParams) {
        this.f28104a = lineAuthenticationActivity;
        this.f28105b = lineAuthenticationConfig;
        this.f28106c = eVar;
        this.f28107d = iVar;
        this.f28108e = aVar;
        this.f28109f = aVar2;
        this.f28111h = lineAuthenticationStatus;
        this.f28110g = lineAuthenticationParams;
    }
}
