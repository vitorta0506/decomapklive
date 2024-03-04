package rb;

import android.content.Context;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private String f57407a;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f57409c;

    /* renamed from: b  reason: collision with root package name */
    private b f57408b = b.f57401b;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f57410d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final List<ub.a> f57411e = new ArrayList();

    public e a(Context context) {
        return new tb.d(context, this.f57407a, this.f57408b, this.f57409c, this.f57410d, this.f57411e, null);
    }

    public f b(InputStream inputStream) {
        this.f57409c = inputStream;
        return this;
    }
}
