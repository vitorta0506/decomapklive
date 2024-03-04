package com.twitter.sdk.android.tweetcomposer;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.s;
/* loaded from: classes4.dex */
public class ComposerActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private com.twitter.sdk.android.tweetcomposer.a f35344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface a {
        void finish();
    }

    /* loaded from: classes4.dex */
    class b implements a {
        b() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerActivity.a
        public void finish() {
            ComposerActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.f35344a.d();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        s sVar = new s((TwitterAuthToken) intent.getParcelableExtra("EXTRA_USER_TOKEN"), -1L, "");
        Uri uri = (Uri) intent.getParcelableExtra("EXTRA_IMAGE_URI");
        String stringExtra = intent.getStringExtra("EXTRA_TEXT");
        String stringExtra2 = intent.getStringExtra("EXTRA_HASHTAGS");
        setTheme(intent.getIntExtra("EXTRA_THEME", R$style.ComposerLight));
        setContentView(R$layout.tw__activity_composer);
        this.f35344a = new com.twitter.sdk.android.tweetcomposer.a((ComposerView) findViewById(R$id.tw__composer_view), sVar, uri, stringExtra, stringExtra2, new b());
    }
}
