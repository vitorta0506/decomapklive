package com.twitter.sdk.android.tweetui;

import android.view.View;
import com.twitter.sdk.android.core.TwitterApiException;
import com.twitter.sdk.android.core.TwitterException;
/* loaded from: classes4.dex */
class k extends c implements View.OnClickListener {

    /* renamed from: b  reason: collision with root package name */
    final com.twitter.sdk.android.core.models.l f35560b;

    /* renamed from: c  reason: collision with root package name */
    final z f35561c;

    /* renamed from: d  reason: collision with root package name */
    final d0 f35562d;

    /* loaded from: classes4.dex */
    static class a extends com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> {

        /* renamed from: a  reason: collision with root package name */
        final ToggleImageButton f35563a;

        /* renamed from: b  reason: collision with root package name */
        final com.twitter.sdk.android.core.models.l f35564b;

        /* renamed from: c  reason: collision with root package name */
        final com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> f35565c;

        a(ToggleImageButton toggleImageButton, com.twitter.sdk.android.core.models.l lVar, com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
            this.f35563a = toggleImageButton;
            this.f35564b = lVar;
            this.f35565c = bVar;
        }

        @Override // com.twitter.sdk.android.core.b
        public void a(TwitterException twitterException) {
            if (twitterException instanceof TwitterApiException) {
                int errorCode = ((TwitterApiException) twitterException).getErrorCode();
                if (errorCode == 139) {
                    this.f35565c.b(new com.twitter.sdk.android.core.i<>(new com.twitter.sdk.android.core.models.m().b(this.f35564b).c(true).a(), null));
                    return;
                } else if (errorCode != 144) {
                    this.f35563a.setToggledOn(this.f35564b.f35261g);
                    this.f35565c.a(twitterException);
                    return;
                } else {
                    this.f35565c.b(new com.twitter.sdk.android.core.i<>(new com.twitter.sdk.android.core.models.m().b(this.f35564b).c(false).a(), null));
                    return;
                }
            }
            this.f35563a.setToggledOn(this.f35564b.f35261g);
            this.f35565c.a(twitterException);
        }

        @Override // com.twitter.sdk.android.core.b
        public void b(com.twitter.sdk.android.core.i<com.twitter.sdk.android.core.models.l> iVar) {
            this.f35565c.b(iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(com.twitter.sdk.android.core.models.l lVar, d0 d0Var, com.twitter.sdk.android.core.b<com.twitter.sdk.android.core.models.l> bVar) {
        super(bVar);
        this.f35560b = lVar;
        this.f35562d = d0Var;
        this.f35561c = d0Var.d();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view instanceof ToggleImageButton) {
            ToggleImageButton toggleImageButton = (ToggleImageButton) view;
            com.twitter.sdk.android.core.models.l lVar = this.f35560b;
            if (lVar.f35261g) {
                this.f35561c.i(lVar.f35263i, new a(toggleImageButton, lVar, a()));
            } else {
                this.f35561c.d(lVar.f35263i, new a(toggleImageButton, lVar, a()));
            }
        }
    }
}
