package retrofit2;

import java.io.IOException;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Timeout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class OkHttpCall<T> implements Call<T> {
    private final Object[] args;
    private final Call.Factory callFactory;
    private volatile boolean canceled;
    private Throwable creationFailure;
    private boolean executed;
    private okhttp3.Call rawCall;
    private final RequestFactory requestFactory;
    private final Converter<ResponseBody, T> responseConverter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class ExceptionCatchingResponseBody extends ResponseBody {
        private final ResponseBody delegate;
        private final BufferedSource delegateSource;
        IOException thrownException;

        ExceptionCatchingResponseBody(ResponseBody responseBody) {
            this.delegate = responseBody;
            this.delegateSource = Okio.buffer(new ForwardingSource(responseBody.source()) { // from class: retrofit2.OkHttpCall.ExceptionCatchingResponseBody.1
                @Override // okio.ForwardingSource, okio.Source
                public long read(Buffer buffer, long j10) throws IOException {
                    try {
                        return super.read(buffer, j10);
                    } catch (IOException e10) {
                        ExceptionCatchingResponseBody.this.thrownException = e10;
                        throw e10;
                    }
                }
            });
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.delegate.contentType();
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            return this.delegateSource;
        }

        void throwIfCaught() throws IOException {
            IOException iOException = this.thrownException;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class NoContentResponseBody extends ResponseBody {
        private final long contentLength;
        private final MediaType contentType;

        /* JADX INFO: Access modifiers changed from: package-private */
        public NoContentResponseBody(MediaType mediaType, long j10) {
            this.contentType = mediaType;
            this.contentLength = j10;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OkHttpCall(RequestFactory requestFactory, Object[] objArr, Call.Factory factory, Converter<ResponseBody, T> converter) {
        this.requestFactory = requestFactory;
        this.args = objArr;
        this.callFactory = factory;
        this.responseConverter = converter;
    }

    private okhttp3.Call createRawCall() throws IOException {
        okhttp3.Call newCall = this.callFactory.newCall(this.requestFactory.create(this.args));
        Objects.requireNonNull(newCall, "Call.Factory returned null.");
        return newCall;
    }

    private okhttp3.Call getRawCall() throws IOException {
        okhttp3.Call call = this.rawCall;
        if (call != null) {
            return call;
        }
        Throwable th2 = this.creationFailure;
        if (th2 != null) {
            if (!(th2 instanceof IOException)) {
                if (th2 instanceof RuntimeException) {
                    throw ((RuntimeException) th2);
                }
                throw ((Error) th2);
            }
            throw ((IOException) th2);
        }
        try {
            okhttp3.Call createRawCall = createRawCall();
            this.rawCall = createRawCall;
            return createRawCall;
        } catch (IOException | Error | RuntimeException e10) {
            Utils.throwIfFatal(e10);
            this.creationFailure = e10;
            throw e10;
        }
    }

    @Override // retrofit2.Call
    public void cancel() {
        okhttp3.Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // retrofit2.Call
    public void enqueue(final Callback<T> callback) {
        okhttp3.Call call;
        Throwable th2;
        Objects.requireNonNull(callback, "callback == null");
        synchronized (this) {
            if (!this.executed) {
                this.executed = true;
                call = this.rawCall;
                th2 = this.creationFailure;
                if (call == null && th2 == null) {
                    okhttp3.Call createRawCall = createRawCall();
                    this.rawCall = createRawCall;
                    call = createRawCall;
                }
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (th2 != null) {
            callback.onFailure(this, th2);
            return;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.enqueue(new okhttp3.Callback() { // from class: retrofit2.OkHttpCall.1
            private void callFailure(Throwable th3) {
                try {
                    callback.onFailure(OkHttpCall.this, th3);
                } catch (Throwable th4) {
                    Utils.throwIfFatal(th4);
                    th4.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(okhttp3.Call call2, IOException iOException) {
                callFailure(iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(okhttp3.Call call2, okhttp3.Response response) {
                try {
                    try {
                        callback.onResponse(OkHttpCall.this, OkHttpCall.this.parseResponse(response));
                    } catch (Throwable th3) {
                        Utils.throwIfFatal(th3);
                        th3.printStackTrace();
                    }
                } catch (Throwable th4) {
                    Utils.throwIfFatal(th4);
                    callFailure(th4);
                }
            }
        });
    }

    @Override // retrofit2.Call
    public Response<T> execute() throws IOException {
        okhttp3.Call rawCall;
        synchronized (this) {
            if (!this.executed) {
                this.executed = true;
                rawCall = getRawCall();
            } else {
                throw new IllegalStateException("Already executed.");
            }
        }
        if (this.canceled) {
            rawCall.cancel();
        }
        return parseResponse(rawCall.execute());
    }

    @Override // retrofit2.Call
    public boolean isCanceled() {
        boolean z10 = true;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            okhttp3.Call call = this.rawCall;
            if (call == null || !call.isCanceled()) {
                z10 = false;
            }
        }
        return z10;
    }

    @Override // retrofit2.Call
    public synchronized boolean isExecuted() {
        return this.executed;
    }

    Response<T> parseResponse(okhttp3.Response response) throws IOException {
        ResponseBody body = response.body();
        okhttp3.Response build = response.newBuilder().body(new NoContentResponseBody(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                return Response.error(Utils.buffer(body), build);
            } finally {
                body.close();
            }
        } else if (code != 204 && code != 205) {
            ExceptionCatchingResponseBody exceptionCatchingResponseBody = new ExceptionCatchingResponseBody(body);
            try {
                return Response.success(this.responseConverter.convert(exceptionCatchingResponseBody), build);
            } catch (RuntimeException e10) {
                exceptionCatchingResponseBody.throwIfCaught();
                throw e10;
            }
        } else {
            body.close();
            return Response.success((Object) null, build);
        }
    }

    @Override // retrofit2.Call
    public synchronized Request request() {
        try {
        } catch (IOException e10) {
            throw new RuntimeException("Unable to create request.", e10);
        }
        return getRawCall().request();
    }

    @Override // retrofit2.Call
    public synchronized Timeout timeout() {
        try {
        } catch (IOException e10) {
            throw new RuntimeException("Unable to create call.", e10);
        }
        return getRawCall().timeout();
    }

    @Override // retrofit2.Call
    /* renamed from: clone */
    public OkHttpCall<T> mo3387clone() {
        return new OkHttpCall<>(this.requestFactory, this.args, this.callFactory, this.responseConverter);
    }
}
