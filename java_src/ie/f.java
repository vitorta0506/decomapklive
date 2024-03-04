package ie;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonParseException;
import com.snapchat.kit.sdk.f;
import java.io.IOException;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* loaded from: classes4.dex */
public final class f extends h {

    /* renamed from: b  reason: collision with root package name */
    private final com.snapchat.kit.sdk.f f41042b;

    /* renamed from: c  reason: collision with root package name */
    private final ce.c f41043c;

    /* renamed from: d  reason: collision with root package name */
    private final Gson f41044d;

    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f41045a;

        static {
            int[] iArr = new int[f.c.a().length];
            f41045a = iArr;
            try {
                iArr[f.c.f29540e - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f41045a[f.c.f29536a - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f41045a[f.c.f29537b - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f41045a[f.c.f29538c - 1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f41045a[f.c.f29539d - 1] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.snapchat.kit.sdk.f fVar, ce.c cVar, String str, Gson gson) {
        super(str);
        this.f41042b = fVar;
        this.f41043c = cVar;
        this.f41044d = gson;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // ie.h
    public final Request.Builder b(Interceptor.Chain chain) {
        this.f41042b.k();
        Headers.Builder a10 = a();
        Headers build = a10.add("authorization", "Bearer " + this.f41042b.b()).build();
        Request.Builder b10 = super.b(chain);
        b10.headers(build);
        return b10;
    }

    @Override // ie.h, okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Response intercept = super.intercept(chain);
        if (intercept != null && intercept.body() != null && intercept.code() == 401) {
            com.snapchat.kit.sdk.core.models.d dVar = null;
            try {
                dVar = (com.snapchat.kit.sdk.core.models.d) this.f41044d.fromJson(intercept.body().charStream(), (Class<Object>) com.snapchat.kit.sdk.core.models.d.class);
            } catch (JsonParseException unused) {
            }
            boolean z10 = false;
            if ((dVar == null || TextUtils.isEmpty(dVar.a()) || !TextUtils.equals(dVar.a().toLowerCase(), "invalid_token")) ? false : true) {
                int i9 = a.f41045a[this.f41042b.p() - 1];
                if (i9 == 2 || i9 == 3) {
                    this.f41042b.r();
                    this.f41043c.i();
                }
            } else {
                if (dVar != null && !TextUtils.isEmpty(dVar.a()) && TextUtils.equals(dVar.a().toLowerCase(), "force_logout")) {
                    z10 = true;
                }
                if (z10) {
                    this.f41042b.r();
                    this.f41043c.i();
                }
            }
        }
        return intercept;
    }
}
