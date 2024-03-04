package j3;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.AssetDataSource;
import com.google.android.exoplayer2.upstream.ContentDataSource;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.RawResourceDataSource;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.util.l0;
import j3.i;
import j3.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class p implements i {

    /* renamed from: a  reason: collision with root package name */
    private final Context f53087a;

    /* renamed from: b  reason: collision with root package name */
    private final List<b0> f53088b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final i f53089c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private i f53090d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private i f53091e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private i f53092f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private i f53093g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private i f53094h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private i f53095i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private i f53096j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private i f53097k;

    /* loaded from: classes2.dex */
    public static final class a implements i.a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f53098a;

        /* renamed from: b  reason: collision with root package name */
        private final i.a f53099b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private b0 f53100c;

        public a(Context context) {
            this(context, new r.b());
        }

        @Override // j3.i.a
        /* renamed from: b */
        public p a() {
            p pVar = new p(this.f53098a, this.f53099b.a());
            b0 b0Var = this.f53100c;
            if (b0Var != null) {
                pVar.c(b0Var);
            }
            return pVar;
        }

        public a(Context context, i.a aVar) {
            this.f53098a = context.getApplicationContext();
            this.f53099b = aVar;
        }
    }

    public p(Context context, i iVar) {
        this.f53087a = context.getApplicationContext();
        this.f53089c = (i) com.google.android.exoplayer2.util.a.e(iVar);
    }

    private void n(i iVar) {
        for (int i9 = 0; i9 < this.f53088b.size(); i9++) {
            iVar.c(this.f53088b.get(i9));
        }
    }

    private i o() {
        if (this.f53091e == null) {
            AssetDataSource assetDataSource = new AssetDataSource(this.f53087a);
            this.f53091e = assetDataSource;
            n(assetDataSource);
        }
        return this.f53091e;
    }

    private i p() {
        if (this.f53092f == null) {
            ContentDataSource contentDataSource = new ContentDataSource(this.f53087a);
            this.f53092f = contentDataSource;
            n(contentDataSource);
        }
        return this.f53092f;
    }

    private i q() {
        if (this.f53095i == null) {
            g gVar = new g();
            this.f53095i = gVar;
            n(gVar);
        }
        return this.f53095i;
    }

    private i r() {
        if (this.f53090d == null) {
            FileDataSource fileDataSource = new FileDataSource();
            this.f53090d = fileDataSource;
            n(fileDataSource);
        }
        return this.f53090d;
    }

    private i s() {
        if (this.f53096j == null) {
            RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.f53087a);
            this.f53096j = rawResourceDataSource;
            n(rawResourceDataSource);
        }
        return this.f53096j;
    }

    private i t() {
        if (this.f53093g == null) {
            try {
                i iVar = (i) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f53093g = iVar;
                n(iVar);
            } catch (ClassNotFoundException unused) {
                com.google.android.exoplayer2.util.r.i("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating RTMP extension", e10);
            }
            if (this.f53093g == null) {
                this.f53093g = this.f53089c;
            }
        }
        return this.f53093g;
    }

    private i u() {
        if (this.f53094h == null) {
            UdpDataSource udpDataSource = new UdpDataSource();
            this.f53094h = udpDataSource;
            n(udpDataSource);
        }
        return this.f53094h;
    }

    private void v(@Nullable i iVar, b0 b0Var) {
        if (iVar != null) {
            iVar.c(b0Var);
        }
    }

    @Override // j3.i
    public long b(l lVar) throws IOException {
        com.google.android.exoplayer2.util.a.f(this.f53097k == null);
        String scheme = lVar.f53031a.getScheme();
        if (l0.q0(lVar.f53031a)) {
            String path = lVar.f53031a.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.f53097k = o();
            } else {
                this.f53097k = r();
            }
        } else if ("asset".equals(scheme)) {
            this.f53097k = o();
        } else if ("content".equals(scheme)) {
            this.f53097k = p();
        } else if ("rtmp".equals(scheme)) {
            this.f53097k = t();
        } else if ("udp".equals(scheme)) {
            this.f53097k = u();
        } else if ("data".equals(scheme)) {
            this.f53097k = q();
        } else if (!"rawresource".equals(scheme) && !"android.resource".equals(scheme)) {
            this.f53097k = this.f53089c;
        } else {
            this.f53097k = s();
        }
        return this.f53097k.b(lVar);
    }

    @Override // j3.i
    public void c(b0 b0Var) {
        com.google.android.exoplayer2.util.a.e(b0Var);
        this.f53089c.c(b0Var);
        this.f53088b.add(b0Var);
        v(this.f53090d, b0Var);
        v(this.f53091e, b0Var);
        v(this.f53092f, b0Var);
        v(this.f53093g, b0Var);
        v(this.f53094h, b0Var);
        v(this.f53095i, b0Var);
        v(this.f53096j, b0Var);
    }

    @Override // j3.i
    public void close() throws IOException {
        i iVar = this.f53097k;
        if (iVar != null) {
            try {
                iVar.close();
            } finally {
                this.f53097k = null;
            }
        }
    }

    @Override // j3.i
    public Map<String, List<String>> e() {
        i iVar = this.f53097k;
        return iVar == null ? Collections.emptyMap() : iVar.e();
    }

    @Override // j3.i
    @Nullable
    public Uri getUri() {
        i iVar = this.f53097k;
        if (iVar == null) {
            return null;
        }
        return iVar.getUri();
    }

    @Override // j3.f
    public int read(byte[] bArr, int i9, int i10) throws IOException {
        return ((i) com.google.android.exoplayer2.util.a.e(this.f53097k)).read(bArr, i9, i10);
    }
}
