package e5;

import com.google.api.client.http.v;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d extends v {

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f38465a;

    /* renamed from: b  reason: collision with root package name */
    private final int f38466b;

    /* renamed from: c  reason: collision with root package name */
    private final String f38467c;

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<String> f38468d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList<String> f38469e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(HttpURLConnection httpURLConnection) throws IOException {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f38468d = arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        this.f38469e = arrayList2;
        this.f38465a = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.f38466b = responseCode == -1 ? 0 : responseCode;
        this.f38467c = httpURLConnection.getResponseMessage();
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                for (String str : entry.getValue()) {
                    if (str != null) {
                        arrayList.add(key);
                        arrayList2.add(str);
                    }
                }
            }
        }
    }

    @Override // com.google.api.client.http.v
    public void a() {
        this.f38465a.disconnect();
    }

    @Override // com.google.api.client.http.v
    public InputStream b() throws IOException {
        InputStream errorStream;
        try {
            errorStream = this.f38465a.getInputStream();
        } catch (IOException unused) {
            errorStream = this.f38465a.getErrorStream();
        }
        if (errorStream == null) {
            return null;
        }
        return new a(errorStream);
    }

    @Override // com.google.api.client.http.v
    public String c() {
        return this.f38465a.getContentEncoding();
    }

    @Override // com.google.api.client.http.v
    public long d() {
        String headerField = this.f38465a.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.google.api.client.http.v
    public String e() {
        return this.f38465a.getHeaderField("Content-Type");
    }

    @Override // com.google.api.client.http.v
    public int f() {
        return this.f38468d.size();
    }

    @Override // com.google.api.client.http.v
    public String g(int i9) {
        return this.f38468d.get(i9);
    }

    @Override // com.google.api.client.http.v
    public String h(int i9) {
        return this.f38469e.get(i9);
    }

    @Override // com.google.api.client.http.v
    public String i() {
        return this.f38467c;
    }

    @Override // com.google.api.client.http.v
    public int j() {
        return this.f38466b;
    }

    @Override // com.google.api.client.http.v
    public String k() {
        String headerField = this.f38465a.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }

    /* loaded from: classes2.dex */
    private final class a extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private long f38470a;

        public a(InputStream inputStream) {
            super(inputStream);
            this.f38470a = 0L;
        }

        private void a() throws IOException {
            long d10 = d.this.d();
            if (d10 == -1) {
                return;
            }
            long j10 = this.f38470a;
            if (j10 == 0 || j10 >= d10) {
                return;
            }
            throw new IOException("Connection closed prematurely: bytesRead = " + this.f38470a + ", Content-Length = " + d10);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i9, int i10) throws IOException {
            int read = ((FilterInputStream) this).in.read(bArr, i9, i10);
            if (read == -1) {
                a();
            } else {
                this.f38470a += read;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j10) throws IOException {
            long skip = ((FilterInputStream) this).in.skip(j10);
            this.f38470a += skip;
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = ((FilterInputStream) this).in.read();
            if (read == -1) {
                a();
            } else {
                this.f38470a++;
            }
            return read;
        }
    }
}
