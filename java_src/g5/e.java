package g5;

import com.google.api.client.json.JsonToken;
import com.google.api.client.util.b0;
import com.google.api.client.util.w;
import com.google.api.client.util.z;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class e implements w {

    /* renamed from: a  reason: collision with root package name */
    private final c f39957a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<String> f39958b;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final c f39959a;

        /* renamed from: b  reason: collision with root package name */
        Collection<String> f39960b = b0.a();

        public a(c cVar) {
            this.f39959a = (c) z.d(cVar);
        }
    }

    public e(c cVar) {
        this(new a(cVar));
    }

    private void c(f fVar) throws IOException {
        if (this.f39958b.isEmpty()) {
            return;
        }
        try {
            z.c((fVar.W(this.f39958b) == null || fVar.j() == JsonToken.END_OBJECT) ? false : true, "wrapper key(s) not found: %s", this.f39958b);
        } catch (Throwable th2) {
            fVar.close();
            throw th2;
        }
    }

    @Override // com.google.api.client.util.w
    public <T> T a(InputStream inputStream, Charset charset, Class<T> cls) throws IOException {
        return (T) d(inputStream, charset, cls);
    }

    public final c b() {
        return this.f39957a;
    }

    public Object d(InputStream inputStream, Charset charset, Type type) throws IOException {
        f c10 = this.f39957a.c(inputStream, charset);
        c(c10);
        return c10.C(type, true);
    }

    protected e(a aVar) {
        this.f39957a = aVar.f39959a;
        this.f39958b = new HashSet(aVar.f39960b);
    }
}
