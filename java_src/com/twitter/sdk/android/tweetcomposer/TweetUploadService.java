package com.twitter.sdk.android.tweetcomposer;

import android.app.IntentService;
import android.content.Intent;
import android.net.Uri;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.models.i;
import com.twitter.sdk.android.core.models.l;
import com.twitter.sdk.android.core.q;
import com.twitter.sdk.android.core.s;
import java.io.File;
import okhttp3.MediaType;
import okhttp3.RequestBody;
/* loaded from: classes4.dex */
public class TweetUploadService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    c f35358a;

    /* renamed from: b  reason: collision with root package name */
    Intent f35359b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends com.twitter.sdk.android.core.b<i> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s f35360a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f35361b;

        a(s sVar, String str) {
            this.f35360a = sVar;
            this.f35361b = str;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            TweetUploadService.this.a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<i> iVar) {
            TweetUploadService.this.f(this.f35360a, this.f35361b, iVar.f35121a.f35241b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends com.twitter.sdk.android.core.b<l> {
        b() {
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            TweetUploadService.this.a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<l> iVar) {
            TweetUploadService.this.c(iVar.f35121a.a());
            TweetUploadService.this.stopSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class c {
        c() {
        }

        m a(s sVar) {
            return q.k().f(sVar);
        }
    }

    public TweetUploadService() {
        this(new c());
    }

    void a(TwitterException twitterException) {
        b(this.f35359b);
        com.twitter.sdk.android.core.l.g().e("TweetUploadService", "Post Tweet failed", twitterException);
        stopSelf();
    }

    void b(Intent intent) {
        Intent intent2 = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE");
        intent2.putExtra("EXTRA_RETRY_INTENT", intent);
        intent2.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent2);
    }

    void c(long j10) {
        Intent intent = new Intent("com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS");
        intent.putExtra("EXTRA_TWEET_ID", j10);
        intent.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent);
    }

    void d(s sVar, Uri uri, com.twitter.sdk.android.core.b<i> bVar) {
        m a10 = this.f35358a.a(sVar);
        String c10 = f.c(this, uri);
        if (c10 == null) {
            a(new TwitterException("Uri file path resolved to null"));
            return;
        }
        File file = new File(c10);
        a10.f().upload(RequestBody.create(MediaType.parse(f.b(file)), file), null, null).enqueue(bVar);
    }

    void e(s sVar, String str, Uri uri) {
        if (uri != null) {
            d(sVar, uri, new a(sVar, str));
        } else {
            f(sVar, str, null);
        }
    }

    void f(s sVar, String str, String str2) {
        this.f35358a.a(sVar).h().update(str, null, null, null, null, null, null, Boolean.TRUE, str2).enqueue(new b());
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        this.f35359b = intent;
        e(new s((TwitterAuthToken) intent.getParcelableExtra("EXTRA_USER_TOKEN"), -1L, ""), intent.getStringExtra("EXTRA_TWEET_TEXT"), (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI"));
    }

    TweetUploadService(c cVar) {
        super("TweetUploadService");
        this.f35358a = cVar;
    }
}
