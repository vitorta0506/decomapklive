package com.snapchat.kit.sdk;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes4.dex */
public final class h implements be.e {

    /* renamed from: a  reason: collision with root package name */
    private fi.a<ScheduledExecutorService> f29572a;

    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(byte b10) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ h(byte b10) {
        this();
    }

    @Override // be.e
    public final ScheduledExecutorService a() {
        return this.f29572a.get();
    }

    private h() {
        this.f29572a = eg.b.b(de.m.a());
    }
}
