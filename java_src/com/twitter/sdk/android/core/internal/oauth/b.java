package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import java.util.Map;
/* loaded from: classes4.dex */
public class b {
    public String a(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        return b(twitterAuthConfig, twitterAuthToken, str, str2, str3, map).e();
    }

    c b(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        return new c(twitterAuthConfig, twitterAuthToken, str, str2, str3, map);
    }
}
