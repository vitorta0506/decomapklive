package com.twitter.sdk.android.tweetui;

import android.app.Activity;
import android.os.Bundle;
import com.twitter.sdk.android.tweetui.internal.i;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class PlayerActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    s f35388a;

    /* loaded from: classes4.dex */
    public static class PlayerItem implements Serializable {
        public final String callToActionText;
        public final String callToActionUrl;
        public final boolean looping;
        public final boolean showVideoControls;
        public final String url;

        public PlayerItem(String str, boolean z10, boolean z11, String str2, String str3) {
            this.url = str;
            this.looping = z10;
            this.showVideoControls = z11;
            this.callToActionText = str2;
            this.callToActionUrl = str3;
        }
    }

    /* loaded from: classes4.dex */
    class a implements i.a {
        a() {
        }

        @Override // com.twitter.sdk.android.tweetui.internal.i.a
        public void a(float f10) {
        }

        @Override // com.twitter.sdk.android.tweetui.internal.i.a
        public void onDismiss() {
            PlayerActivity.this.finish();
            PlayerActivity.this.overridePendingTransition(0, R$anim.tw__slide_out);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(0, R$anim.tw__slide_out);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.tw__player_activity);
        s sVar = new s(findViewById(16908290), new a());
        this.f35388a = sVar;
        sVar.n((PlayerItem) getIntent().getSerializableExtra("PLAYER_ITEM"));
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.f35388a.k();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        this.f35388a.l();
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f35388a.m();
    }
}
