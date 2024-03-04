package com.twitter.sdk.android.tweetui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import androidx.webkit.internal.AssetHelper;
import com.twitter.sdk.android.core.models.User;
/* loaded from: classes4.dex */
class u implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final com.twitter.sdk.android.core.models.l f35585a;

    /* renamed from: b  reason: collision with root package name */
    final d0 f35586b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(com.twitter.sdk.android.core.models.l lVar, d0 d0Var) {
        this.f35585a = lVar;
        this.f35586b = d0Var;
    }

    String a(Resources resources) {
        int i9 = R$string.tw__share_content_format;
        com.twitter.sdk.android.core.models.l lVar = this.f35585a;
        return resources.getString(i9, lVar.D.screenName, Long.toString(lVar.f35263i));
    }

    Intent b(String str, String str2) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        return intent;
    }

    String c(Resources resources) {
        int i9 = R$string.tw__share_subject_format;
        User user = this.f35585a.D;
        return resources.getString(i9, user.name, user.screenName);
    }

    void d(Intent intent, Context context) {
        if (com.twitter.sdk.android.core.f.b(context, intent)) {
            return;
        }
        com.twitter.sdk.android.core.l.g().e("TweetUi", "Activity cannot be found to handle share intent");
    }

    void e(Context context, Resources resources) {
        com.twitter.sdk.android.core.models.l lVar = this.f35585a;
        if (lVar == null || lVar.D == null) {
            return;
        }
        d(Intent.createChooser(b(c(resources), a(resources)), resources.getString(R$string.tw__share_tweet)), context);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        e(view.getContext(), view.getResources());
    }
}
