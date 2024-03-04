package com.squareup.okhttp;

import androidx.core.app.NotificationCompat;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.internal.d;
import com.squareup.okhttp.internal.e;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import qe.g;
/* loaded from: classes4.dex */
public class Call {
    volatile boolean canceled;
    private final OkHttpClient client;
    g engine;
    private boolean executed;
    Request originalRequest;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class ApplicationInterceptorChain implements Interceptor.Chain {
        private final boolean forWebSocket;
        private final int index;
        private final Request request;

        ApplicationInterceptorChain(int i9, Request request, boolean z10) {
            this.index = i9;
            this.request = request;
            this.forWebSocket = z10;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Connection connection() {
            return null;
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Response proceed(Request request) throws IOException {
            if (this.index < Call.this.client.interceptors().size()) {
                ApplicationInterceptorChain applicationInterceptorChain = new ApplicationInterceptorChain(this.index + 1, request, this.forWebSocket);
                Interceptor interceptor = Call.this.client.interceptors().get(this.index);
                Response intercept = interceptor.intercept(applicationInterceptorChain);
                if (intercept != null) {
                    return intercept;
                }
                throw new NullPointerException("application interceptor " + interceptor + " returned null");
            }
            return Call.this.getResponse(request, this.forWebSocket);
        }

        @Override // com.squareup.okhttp.Interceptor.Chain
        public Request request() {
            return this.request;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class AsyncCall extends e {
        private final boolean forWebSocket;
        private final Callback responseCallback;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void cancel() {
            Call.this.cancel();
        }

        @Override // com.squareup.okhttp.internal.e
        protected void execute() {
            IOException e10;
            Response responseWithInterceptorChain;
            boolean z10 = true;
            try {
                try {
                    responseWithInterceptorChain = Call.this.getResponseWithInterceptorChain(this.forWebSocket);
                } catch (IOException e11) {
                    e10 = e11;
                    z10 = false;
                }
                try {
                    if (Call.this.canceled) {
                        this.responseCallback.onFailure(Call.this.originalRequest, new IOException("Canceled"));
                    } else {
                        this.responseCallback.onResponse(responseWithInterceptorChain);
                    }
                } catch (IOException e12) {
                    e10 = e12;
                    if (z10) {
                        Logger logger = d.logger;
                        Level level = Level.INFO;
                        logger.log(level, "Callback failure for " + Call.this.toLoggableString(), (Throwable) e10);
                    } else {
                        Call call = Call.this;
                        g gVar = call.engine;
                        this.responseCallback.onFailure(gVar == null ? call.originalRequest : gVar.l(), e10);
                    }
                }
            } finally {
                Call.this.client.getDispatcher().finished(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Call get() {
            return Call.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String host() {
            return Call.this.originalRequest.httpUrl().host();
        }

        Request request() {
            return Call.this.originalRequest;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Object tag() {
            return Call.this.originalRequest.tag();
        }

        private AsyncCall(Callback callback, boolean z10) {
            super("OkHttp %s", Call.this.originalRequest.urlString());
            this.responseCallback = callback;
            this.forWebSocket = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call(OkHttpClient okHttpClient, Request request) {
        this.client = okHttpClient.copyWithDefaults();
        this.originalRequest = request;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Response getResponseWithInterceptorChain(boolean z10) throws IOException {
        return new ApplicationInterceptorChain(0, this.originalRequest, z10).proceed(this.originalRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String toLoggableString() {
        String str = this.canceled ? "canceled call" : NotificationCompat.CATEGORY_CALL;
        HttpUrl resolve = this.originalRequest.httpUrl().resolve("/...");
        return str + " to " + resolve;
    }

    public void cancel() {
        this.canceled = true;
        g gVar = this.engine;
        if (gVar != null) {
            gVar.e();
        }
    }

    public void enqueue(Callback callback) {
        enqueue(callback, false);
    }

    public Response execute() throws IOException {
        synchronized (this) {
            if (!this.executed) {
                this.executed = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        try {
            this.client.getDispatcher().executed(this);
            Response responseWithInterceptorChain = getResponseWithInterceptorChain(false);
            if (responseWithInterceptorChain != null) {
                return responseWithInterceptorChain;
            }
            throw new IOException("Canceled");
        } finally {
            this.client.getDispatcher().finished(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.squareup.okhttp.Response getResponse(com.squareup.okhttp.Request r13, boolean r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.Call.getResponse(com.squareup.okhttp.Request, boolean):com.squareup.okhttp.Response");
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public synchronized boolean isExecuted() {
        return this.executed;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object tag() {
        return this.originalRequest.tag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enqueue(Callback callback, boolean z10) {
        synchronized (this) {
            if (!this.executed) {
                this.executed = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        this.client.getDispatcher().enqueue(new AsyncCall(callback, z10));
    }
}
