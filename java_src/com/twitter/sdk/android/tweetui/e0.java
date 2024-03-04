package com.twitter.sdk.android.tweetui;

import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.User;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4.dex */
public final class e0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.twitter.sdk.android.core.models.l a(com.twitter.sdk.android.core.models.l lVar) {
        com.twitter.sdk.android.core.models.l lVar2;
        return (lVar == null || (lVar2 = lVar.f35279y) == null) ? lVar : lVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return String.format(Locale.US, "https://twitter.com/hashtag/%s?ref_src=twsrc%%5Etwitterkit", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri c(String str, long j10) {
        String format;
        if (j10 <= 0) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            format = String.format(Locale.US, "https://twitter.com/%s/status/%d?ref_src=twsrc%%5Etwitterkit", "twitter_unknown", Long.valueOf(j10));
        } else {
            format = String.format(Locale.US, "https://twitter.com/%s/status/%d?ref_src=twsrc%%5Etwitterkit", str, Long.valueOf(j10));
        }
        return Uri.parse(format);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(String str) {
        return TextUtils.isEmpty(str) ? String.format(Locale.US, "https://twitter.com/%s?ref_src=twsrc%%5Etwitterkit", "twitter_unknown") : String.format(Locale.US, "https://twitter.com/%s?ref_src=twsrc%%5Etwitterkit", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(String str) {
        return String.format(Locale.US, "https://twitter.com/search?q=%%24%s&ref_src=twsrc%%5Etwitterkit", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f(com.twitter.sdk.android.core.models.l lVar) {
        User user;
        return (lVar == null || lVar.f35263i <= 0 || (user = lVar.D) == null || TextUtils.isEmpty(user.screenName)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean g(com.twitter.sdk.android.core.models.l lVar) {
        com.twitter.sdk.android.core.models.n nVar;
        List<MediaEntity> list;
        return lVar.f35276v != null && lVar.H == null && ((nVar = lVar.f35258d) == null || (list = nVar.f35310c) == null || list.isEmpty());
    }
}
