package com.google.api.client.http;

import com.google.api.client.util.e0;
import com.google.api.client.util.z;
import java.io.IOException;
/* loaded from: classes2.dex */
public class HttpResponseException extends IOException {
    private static final long serialVersionUID = -1875819453475890043L;
    private final int attemptCount;
    private final String content;
    private final transient j headers;
    private final int statusCode;
    private final String statusMessage;

    public HttpResponseException(p pVar) {
        this(new a(pVar));
    }

    public static StringBuilder computeMessageBuffer(p pVar) {
        StringBuilder sb2 = new StringBuilder();
        int f10 = pVar.f();
        if (f10 != 0) {
            sb2.append(f10);
        }
        String g10 = pVar.g();
        if (g10 != null) {
            if (f10 != 0) {
                sb2.append(' ');
            }
            sb2.append(g10);
        }
        m e10 = pVar.e();
        if (e10 != null) {
            if (sb2.length() > 0) {
                sb2.append('\n');
            }
            String g11 = e10.g();
            if (g11 != null) {
                sb2.append(g11);
                sb2.append(' ');
            }
            sb2.append(e10.j());
        }
        return sb2;
    }

    public final int getAttemptCount() {
        return this.attemptCount;
    }

    public final String getContent() {
        return this.content;
    }

    public j getHeaders() {
        return this.headers;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final String getStatusMessage() {
        return this.statusMessage;
    }

    public final boolean isSuccessStatusCode() {
        return r.b(this.statusCode);
    }

    protected HttpResponseException(a aVar) {
        super(aVar.f10982e);
        this.statusCode = aVar.f10978a;
        this.statusMessage = aVar.f10979b;
        this.headers = aVar.f10980c;
        this.content = aVar.f10981d;
        this.attemptCount = aVar.f10983f;
    }

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f10978a;

        /* renamed from: b  reason: collision with root package name */
        String f10979b;

        /* renamed from: c  reason: collision with root package name */
        j f10980c;

        /* renamed from: d  reason: collision with root package name */
        String f10981d;

        /* renamed from: e  reason: collision with root package name */
        String f10982e;

        /* renamed from: f  reason: collision with root package name */
        int f10983f;

        public a(int i9, String str, j jVar) {
            d(i9);
            e(str);
            c(jVar);
        }

        public HttpResponseException a() {
            return new HttpResponseException(this);
        }

        public a b(int i9) {
            z.a(i9 >= 0);
            this.f10983f = i9;
            return this;
        }

        public a c(j jVar) {
            this.f10980c = (j) z.d(jVar);
            return this;
        }

        public a d(int i9) {
            z.a(i9 >= 0);
            this.f10978a = i9;
            return this;
        }

        public a e(String str) {
            this.f10979b = str;
            return this;
        }

        public a(p pVar) {
            this(pVar.f(), pVar.g(), pVar.d());
            try {
                String l10 = pVar.l();
                this.f10981d = l10;
                if (l10.length() == 0) {
                    this.f10981d = null;
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            } catch (IllegalArgumentException e11) {
                e11.printStackTrace();
            }
            StringBuilder computeMessageBuffer = HttpResponseException.computeMessageBuffer(pVar);
            if (this.f10981d != null) {
                computeMessageBuffer.append(e0.f11107a);
                computeMessageBuffer.append(this.f10981d);
            }
            this.f10982e = computeMessageBuffer.toString();
        }
    }
}
