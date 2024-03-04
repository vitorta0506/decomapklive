package com.twitter.sdk.android.core;

import android.content.Context;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    final Context f35317a;

    /* renamed from: b  reason: collision with root package name */
    final g f35318b;

    /* renamed from: c  reason: collision with root package name */
    final TwitterAuthConfig f35319c;

    /* renamed from: d  reason: collision with root package name */
    final ExecutorService f35320d;

    /* renamed from: e  reason: collision with root package name */
    final Boolean f35321e;

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f35322a;

        /* renamed from: b  reason: collision with root package name */
        private g f35323b;

        /* renamed from: c  reason: collision with root package name */
        private TwitterAuthConfig f35324c;

        /* renamed from: d  reason: collision with root package name */
        private ExecutorService f35325d;

        /* renamed from: e  reason: collision with root package name */
        private Boolean f35326e;

        public b(Context context) {
            if (context != null) {
                this.f35322a = context.getApplicationContext();
                return;
            }
            throw new IllegalArgumentException("Context must not be null.");
        }

        public n a() {
            return new n(this.f35322a, this.f35323b, this.f35324c, this.f35325d, this.f35326e);
        }

        public b b(boolean z10) {
            this.f35326e = Boolean.valueOf(z10);
            return this;
        }

        public b c(g gVar) {
            if (gVar != null) {
                this.f35323b = gVar;
                return this;
            }
            throw new IllegalArgumentException("Logger must not be null.");
        }

        public b d(TwitterAuthConfig twitterAuthConfig) {
            if (twitterAuthConfig != null) {
                this.f35324c = twitterAuthConfig;
                return this;
            }
            throw new IllegalArgumentException("TwitterAuthConfig must not be null.");
        }
    }

    private n(Context context, g gVar, TwitterAuthConfig twitterAuthConfig, ExecutorService executorService, Boolean bool) {
        this.f35317a = context;
        this.f35318b = gVar;
        this.f35319c = twitterAuthConfig;
        this.f35320d = executorService;
        this.f35321e = bool;
    }
}
