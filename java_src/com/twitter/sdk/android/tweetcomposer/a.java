package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.i;
import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.tweetcomposer.ComposerActivity;
/* loaded from: classes4.dex */
class a {

    /* renamed from: a  reason: collision with root package name */
    final ComposerView f35364a;

    /* renamed from: b  reason: collision with root package name */
    final s f35365b;

    /* renamed from: c  reason: collision with root package name */
    final Uri f35366c;

    /* renamed from: d  reason: collision with root package name */
    final ComposerActivity.a f35367d;

    /* renamed from: e  reason: collision with root package name */
    final d f35368e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.tweetcomposer.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0361a extends com.twitter.sdk.android.core.b<User> {
        C0361a() {
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            a.this.f35364a.setProfilePhotoView(null);
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(i<User> iVar) {
            a.this.f35364a.setProfilePhotoView(iVar.f35121a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface b {
        void a(String str);

        void b(String str);

        void c();
    }

    /* loaded from: classes4.dex */
    class c implements b {
        c() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.b
        public void a(String str) {
            int i9 = a.this.i(str);
            a.this.f35364a.setCharCount(a.e(i9));
            if (a.c(i9)) {
                a.this.f35364a.setCharCountTextStyle(R$style.tw__ComposerCharCountOverflow);
            } else {
                a.this.f35364a.setCharCountTextStyle(R$style.tw__ComposerCharCount);
            }
            a.this.f35364a.k(a.b(i9));
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.b
        public void b(String str) {
            Intent intent = new Intent(a.this.f35364a.getContext(), TweetUploadService.class);
            intent.putExtra("EXTRA_USER_TOKEN", a.this.f35365b.a());
            intent.putExtra("EXTRA_TWEET_TEXT", str);
            intent.putExtra("EXTRA_IMAGE_URI", a.this.f35366c);
            a.this.f35364a.getContext().startService(intent);
            a.this.f35367d.finish();
        }

        @Override // com.twitter.sdk.android.tweetcomposer.a.b
        public void c() {
            a.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        final com.twitter.a f35371a = new com.twitter.a();

        d() {
        }

        m a(s sVar) {
            return q.k().f(sVar);
        }

        com.twitter.a b() {
            return this.f35371a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ComposerView composerView, s sVar, Uri uri, String str, String str2, ComposerActivity.a aVar) {
        this(composerView, sVar, uri, str, str2, aVar, new d());
    }

    static boolean b(int i9) {
        return i9 > 0 && i9 <= 140;
    }

    static boolean c(int i9) {
        return i9 > 140;
    }

    static int e(int i9) {
        return 140 - i9;
    }

    String a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            if (sb2.length() > 0) {
                sb2.append(" ");
            }
            sb2.append(str2);
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        f();
        this.f35367d.finish();
    }

    void f() {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL");
        intent.setPackage(this.f35364a.getContext().getPackageName());
        this.f35364a.getContext().sendBroadcast(intent);
    }

    void g(Uri uri) {
        if (uri != null) {
            this.f35364a.setImageView(uri);
        }
    }

    void h() {
        AccountService d10 = this.f35368e.a(this.f35365b).d();
        Boolean bool = Boolean.FALSE;
        d10.verifyCredentials(bool, Boolean.TRUE, bool).enqueue(new C0361a());
    }

    int i(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return this.f35368e.b().a(str);
    }

    a(ComposerView composerView, s sVar, Uri uri, String str, String str2, ComposerActivity.a aVar, d dVar) {
        this.f35364a = composerView;
        this.f35365b = sVar;
        this.f35366c = uri;
        this.f35367d = aVar;
        this.f35368e = dVar;
        composerView.setCallbacks(new c());
        composerView.setTweetText(a(str, str2));
        h();
        g(uri);
    }
}
