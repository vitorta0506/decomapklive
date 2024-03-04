package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.guochao.faceshow.aaspring.utils.DelayIniter;
import com.guochao.faceshow.aaspring.utils.LogUtils;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.s;
/* loaded from: classes3.dex */
public class n extends l {

    /* renamed from: e  reason: collision with root package name */
    private com.twitter.sdk.android.core.identity.h f20582e;

    /* loaded from: classes3.dex */
    class a extends com.twitter.sdk.android.core.b<s> {
        a() {
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            LogUtils.i("zune：", "TwitterException = " + twitterException);
            n.this.e(-1, twitterException == null ? "" : twitterException.getMessage());
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<s> iVar) {
            String valueOf = String.valueOf(iVar.f35121a.a());
            String str = iVar.f35121a.a().token;
            String str2 = iVar.f35121a.a().secret;
            String str3 = "" + iVar.f35121a.c();
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                LogUtils.i("zune：", "authToken = " + valueOf + ", userId = " + str3);
                n.this.a(8, str, str3, str2);
                return;
            }
            a(null);
        }
    }

    public n(Context context) {
        super(context);
        DelayIniter.initTwitter();
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void i(int i9, int i10, @Nullable Intent intent) {
        super.i(i9, i10, intent);
        com.twitter.sdk.android.core.identity.h hVar = this.f20582e;
        if (hVar == null || i9 != hVar.e()) {
            return;
        }
        this.f20582e.g(i9, i10, intent);
    }

    @Override // com.guochao.faceshow.aaspring.modulars.login.utils.l
    public void m() {
        if (this.f20582e == null) {
            this.f20582e = new com.twitter.sdk.android.core.identity.h();
        }
        this.f20582e.d();
        this.f20582e.a((Activity) this.f20570b, new a());
    }
}
