package sc;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.linecorp.linesdk.LineAccessToken;
import com.linecorp.linesdk.LineApiError;
import com.linecorp.linesdk.LineApiResponseCode;
import com.linecorp.linesdk.openchat.OpenChatParameters;
import com.linecorp.linesdk.openchat.OpenChatRoomInfo;
import wc.i;
/* loaded from: classes4.dex */
public class d implements rc.a {

    /* renamed from: e  reason: collision with root package name */
    private static final qc.c f57849e = qc.c.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("access token is null"));
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f57850a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final wc.e f57851b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final i f57852c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final vc.a f57853d;

    /* JADX INFO: Access modifiers changed from: private */
    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface a<T> {
        qc.c<T> a(vc.d dVar);
    }

    public d(@NonNull String str, @NonNull wc.e eVar, @NonNull i iVar, @NonNull vc.a aVar) {
        this.f57850a = str;
        this.f57851b = eVar;
        this.f57852c = iVar;
        this.f57853d = aVar;
    }

    @NonNull
    private <T> qc.c<T> f(@NonNull a<T> aVar) {
        try {
            vc.d f10 = this.f57853d.f();
            if (f10 == null) {
                return f57849e;
            }
            return aVar.a(f10);
        } catch (Exception e10) {
            LineApiResponseCode lineApiResponseCode = LineApiResponseCode.INTERNAL_ERROR;
            return qc.c.a(lineApiResponseCode, new LineApiError("get access token fail:" + e10.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ qc.c g(OpenChatParameters openChatParameters, vc.d dVar) {
        return this.f57852c.b(dVar, openChatParameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ qc.c h(vc.d dVar) {
        return this.f57852c.c(dVar);
    }

    @Override // rc.a
    @NonNull
    public qc.c<LineAccessToken> a() {
        try {
            vc.d f10 = this.f57853d.f();
            if (f10 != null && !TextUtils.isEmpty(f10.d())) {
                qc.c<vc.i> e10 = this.f57851b.e(this.f57850a, f10);
                if (!e10.g()) {
                    return qc.c.a(e10.d(), e10.c());
                }
                vc.i e11 = e10.e();
                vc.d dVar = new vc.d(e11.a(), e11.b(), System.currentTimeMillis(), TextUtils.isEmpty(e11.c()) ? f10.d() : e11.c());
                try {
                    this.f57853d.g(dVar);
                    return qc.c.b(new LineAccessToken(dVar.a(), dVar.b(), dVar.c()));
                } catch (Exception e12) {
                    LineApiResponseCode lineApiResponseCode = LineApiResponseCode.INTERNAL_ERROR;
                    return qc.c.a(lineApiResponseCode, new LineApiError("save access token fail:" + e12.getMessage()));
                }
            }
            return qc.c.a(LineApiResponseCode.INTERNAL_ERROR, new LineApiError("access token or refresh token is not found."));
        } catch (Exception e13) {
            LineApiResponseCode lineApiResponseCode2 = LineApiResponseCode.INTERNAL_ERROR;
            return qc.c.a(lineApiResponseCode2, new LineApiError("get access token fail:" + e13.getMessage()));
        }
    }

    @Override // rc.a
    @NonNull
    public qc.c<OpenChatRoomInfo> b(@NonNull final OpenChatParameters openChatParameters) {
        return f(new a() { // from class: sc.c
            @Override // sc.d.a
            public final qc.c a(vc.d dVar) {
                qc.c g10;
                g10 = d.this.g(openChatParameters, dVar);
                return g10;
            }
        });
    }

    @Override // rc.a
    @NonNull
    public qc.c<Boolean> c() {
        return f(new a() { // from class: sc.b
            @Override // sc.d.a
            public final qc.c a(vc.d dVar) {
                qc.c h10;
                h10 = d.this.h(dVar);
                return h10;
            }
        });
    }
}
