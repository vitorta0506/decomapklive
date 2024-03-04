package e5;

import com.google.api.client.http.u;
import com.google.api.client.http.v;
import com.google.api.client.util.d0;
import com.google.api.client.util.z;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
final class c extends u {

    /* renamed from: g  reason: collision with root package name */
    private static final InterfaceC0384c f38458g = new b();

    /* renamed from: e  reason: collision with root package name */
    private final HttpURLConnection f38459e;

    /* renamed from: f  reason: collision with root package name */
    private int f38460f = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Callable<Boolean> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InterfaceC0384c f38461a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ OutputStream f38462b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d0 f38463c;

        a(InterfaceC0384c interfaceC0384c, OutputStream outputStream, d0 d0Var) {
            this.f38461a = interfaceC0384c;
            this.f38462b = outputStream;
            this.f38463c = d0Var;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Boolean call() throws IOException {
            this.f38461a.a(this.f38462b, this.f38463c);
            return Boolean.TRUE;
        }
    }

    /* loaded from: classes2.dex */
    static class b implements InterfaceC0384c {
        b() {
        }

        @Override // e5.c.InterfaceC0384c
        public void a(OutputStream outputStream, d0 d0Var) throws IOException {
            d0Var.writeTo(outputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e5.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0384c {
        void a(OutputStream outputStream, d0 d0Var) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(HttpURLConnection httpURLConnection) {
        this.f38459e = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    private boolean n(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode() > 0;
        } catch (IOException unused) {
            return false;
        }
    }

    private void o(InterfaceC0384c interfaceC0384c, OutputStream outputStream) throws IOException {
        if (this.f38460f == 0) {
            interfaceC0384c.a(outputStream, f());
            return;
        }
        a aVar = new a(interfaceC0384c, outputStream, f());
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Future submit = newSingleThreadExecutor.submit(new FutureTask(aVar), null);
        newSingleThreadExecutor.shutdown();
        try {
            submit.get(this.f38460f, TimeUnit.MILLISECONDS);
            if (newSingleThreadExecutor.isTerminated()) {
                return;
            }
            newSingleThreadExecutor.shutdown();
        } catch (InterruptedException e10) {
            throw new IOException("Socket write interrupted", e10);
        } catch (ExecutionException e11) {
            throw new IOException("Exception in socket write", e11);
        } catch (TimeoutException e12) {
            throw new IOException("Socket write timed out", e12);
        }
    }

    @Override // com.google.api.client.http.u
    public void a(String str, String str2) {
        this.f38459e.addRequestProperty(str, str2);
    }

    @Override // com.google.api.client.http.u
    public v b() throws IOException {
        return m(f38458g);
    }

    @Override // com.google.api.client.http.u
    public void k(int i9, int i10) {
        this.f38459e.setReadTimeout(i10);
        this.f38459e.setConnectTimeout(i9);
    }

    @Override // com.google.api.client.http.u
    public void l(int i9) throws IOException {
        this.f38460f = i9;
    }

    v m(InterfaceC0384c interfaceC0384c) throws IOException {
        HttpURLConnection httpURLConnection = this.f38459e;
        if (f() != null) {
            String e10 = e();
            if (e10 != null) {
                a("Content-Type", e10);
            }
            String c10 = c();
            if (c10 != null) {
                a("Content-Encoding", c10);
            }
            long d10 = d();
            int i9 = (d10 > 0L ? 1 : (d10 == 0L ? 0 : -1));
            if (i9 >= 0) {
                httpURLConnection.setRequestProperty("Content-Length", Long.toString(d10));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if (!"POST".equals(requestMethod) && !"PUT".equals(requestMethod)) {
                z.c(i9 == 0, "%s with non-zero content length is not supported", requestMethod);
            } else {
                httpURLConnection.setDoOutput(true);
                if (i9 >= 0 && d10 <= 2147483647L) {
                    httpURLConnection.setFixedLengthStreamingMode((int) d10);
                } else {
                    httpURLConnection.setChunkedStreamingMode(0);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    try {
                        o(interfaceC0384c, outputStream);
                        try {
                            outputStream.close();
                        } catch (IOException e11) {
                            throw e11;
                        }
                    } catch (IOException e12) {
                        if (n(httpURLConnection)) {
                            try {
                                outputStream.close();
                            } catch (IOException unused) {
                            }
                        } else {
                            throw e12;
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        outputStream.close();
                    } catch (IOException unused2) {
                    }
                    throw th2;
                }
            }
        } else if ("DELETE".equals(httpURLConnection.getRequestMethod())) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setFixedLengthStreamingMode(0L);
        }
        try {
            httpURLConnection.connect();
            return new d(httpURLConnection);
        } catch (Throwable th3) {
            httpURLConnection.disconnect();
            throw th3;
        }
    }
}
