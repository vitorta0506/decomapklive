package com.twitter.sdk.android.core.identity;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.s;
/* loaded from: classes4.dex */
class d extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(TwitterAuthConfig twitterAuthConfig, com.twitter.sdk.android.core.b<s> bVar, int i9) {
        super(twitterAuthConfig, bVar, i9);
    }

    @Override // com.twitter.sdk.android.core.identity.a
    public boolean a(Activity activity) {
        activity.startActivityForResult(e(activity), this.f35131a);
        return true;
    }

    Intent e(Activity activity) {
        Intent intent = new Intent(activity, OAuthActivity.class);
        intent.putExtra("auth_config", b());
        return intent;
    }
}
