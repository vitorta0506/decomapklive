package com.bumptech.glide.integration.okhttp3;

import androidx.annotation.NonNull;
import e0.e;
import j0.g;
import j0.n;
import j0.o;
import j0.r;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.OkHttpClient;
/* loaded from: classes.dex */
public class b implements n<g, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f4203a;

    /* loaded from: classes.dex */
    public static class a implements o<g, InputStream> {

        /* renamed from: b  reason: collision with root package name */
        private static volatile Call.Factory f4204b;

        /* renamed from: a  reason: collision with root package name */
        private final Call.Factory f4205a;

        public a() {
            this(b());
        }

        private static Call.Factory b() {
            if (f4204b == null) {
                synchronized (a.class) {
                    if (f4204b == null) {
                        f4204b = new OkHttpClient();
                    }
                }
            }
            return f4204b;
        }

        @Override // j0.o
        public void a() {
        }

        @Override // j0.o
        @NonNull
        public n<g, InputStream> c(r rVar) {
            return new b(this.f4205a);
        }

        public a(@NonNull Call.Factory factory) {
            this.f4205a = factory;
        }
    }

    public b(@NonNull Call.Factory factory) {
        this.f4203a = factory;
    }

    @Override // j0.n
    /* renamed from: c */
    public n.a<InputStream> a(@NonNull g gVar, int i9, int i10, @NonNull e eVar) {
        return new n.a<>(gVar, new d0.a(this.f4203a, gVar));
    }

    @Override // j0.n
    /* renamed from: d */
    public boolean b(@NonNull g gVar) {
        return true;
    }
}
