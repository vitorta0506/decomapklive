package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private String f3982a;

    /* renamed from: b  reason: collision with root package name */
    private List<String> f3983b;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f3984a;

        /* renamed from: b  reason: collision with root package name */
        private List<String> f3985b;

        /* synthetic */ a(z zVar) {
        }

        @NonNull
        public l a() {
            if (this.f3984a != null) {
                if (this.f3985b != null) {
                    l lVar = new l();
                    lVar.f3982a = this.f3984a;
                    lVar.f3983b = this.f3985b;
                    return lVar;
                }
                throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
            }
            throw new IllegalArgumentException("SKU type must be set");
        }

        @NonNull
        public a b(@NonNull List<String> list) {
            this.f3985b = new ArrayList(list);
            return this;
        }

        @NonNull
        public a c(@NonNull String str) {
            this.f3984a = str;
            return this;
        }
    }

    @NonNull
    public static a c() {
        return new a(null);
    }

    @NonNull
    public String a() {
        return this.f3982a;
    }

    @NonNull
    public List<String> b() {
        return this.f3983b;
    }
}
