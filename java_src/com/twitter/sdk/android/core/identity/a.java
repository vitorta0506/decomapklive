package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.facebook.AccessToken;
import com.meizu.cloud.pushsdk.notification.model.TimeDisplaySetting;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.s;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final int f35131a;

    /* renamed from: b  reason: collision with root package name */
    private final TwitterAuthConfig f35132b;

    /* renamed from: c  reason: collision with root package name */
    private final com.twitter.sdk.android.core.b<s> f35133c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(TwitterAuthConfig twitterAuthConfig, com.twitter.sdk.android.core.b<s> bVar, int i9) {
        this.f35132b = twitterAuthConfig;
        this.f35133c = bVar;
        this.f35131a = i9;
    }

    public abstract boolean a(Activity activity);

    /* JADX INFO: Access modifiers changed from: package-private */
    public TwitterAuthConfig b() {
        return this.f35132b;
    }

    com.twitter.sdk.android.core.b<s> c() {
        return this.f35133c;
    }

    public boolean d(int i9, int i10, Intent intent) {
        if (this.f35131a != i9) {
            return false;
        }
        com.twitter.sdk.android.core.b<s> c10 = c();
        if (c10 != null) {
            if (i10 == -1) {
                String stringExtra = intent.getStringExtra("tk");
                String stringExtra2 = intent.getStringExtra(TimeDisplaySetting.TIME_DISPLAY_SETTING);
                String stringExtra3 = intent.getStringExtra("screen_name");
                c10.b(new com.twitter.sdk.android.core.i<>(new s(new TwitterAuthToken(stringExtra, stringExtra2), intent.getLongExtra(AccessToken.USER_ID_KEY, 0L), stringExtra3), null));
                return true;
            } else if (intent != null && intent.hasExtra("auth_error")) {
                c10.a((TwitterAuthException) intent.getSerializableExtra("auth_error"));
                return true;
            } else {
                c10.a(new TwitterAuthException("Authorize failed."));
                return true;
            }
        }
        return true;
    }
}
