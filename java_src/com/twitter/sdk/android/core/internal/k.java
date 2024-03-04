package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.m;
import com.twitter.sdk.android.core.s;
import com.twitter.sdk.android.core.services.AccountService;
import java.io.IOException;
/* loaded from: classes4.dex */
public class k implements h<s> {

    /* renamed from: a  reason: collision with root package name */
    private final a f35180a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4.dex */
    public static class a {
        protected a() {
        }

        public AccountService a(s sVar) {
            return new m(sVar).d();
        }
    }

    public k() {
        this(new a());
    }

    @Override // com.twitter.sdk.android.core.internal.h
    /* renamed from: b */
    public void a(s sVar) {
        AccountService a10 = this.f35180a.a(sVar);
        try {
            Boolean bool = Boolean.TRUE;
            Boolean bool2 = Boolean.FALSE;
            a10.verifyCredentials(bool, bool2, bool2).execute();
        } catch (IOException | RuntimeException unused) {
        }
    }

    k(a aVar) {
        this.f35180a = aVar;
    }
}
