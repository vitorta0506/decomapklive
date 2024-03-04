package com.google.auth;

import java.io.IOException;
import java.io.Serializable;
import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public abstract class Credentials implements Serializable {
    private static final long serialVersionUID = 808575179767517313L;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ URI f11507a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.google.auth.a f11508b;

        a(URI uri, com.google.auth.a aVar) {
            this.f11507a = uri;
            this.f11508b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Credentials.this.blockingGetToCallback(this.f11507a, this.f11508b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void blockingGetToCallback(URI uri, com.google.auth.a aVar) {
        try {
            aVar.a(getRequestMetadata(uri));
        } catch (Throwable th2) {
            aVar.onFailure(th2);
        }
    }

    public abstract String getAuthenticationType();

    public Map<String, List<String>> getRequestMetadata() throws IOException {
        return getRequestMetadata(null);
    }

    public abstract Map<String, List<String>> getRequestMetadata(URI uri) throws IOException;

    public abstract boolean hasRequestMetadata();

    public abstract boolean hasRequestMetadataOnly();

    public abstract void refresh() throws IOException;

    public void getRequestMetadata(URI uri, Executor executor, com.google.auth.a aVar) {
        executor.execute(new a(uri, aVar));
    }
}
