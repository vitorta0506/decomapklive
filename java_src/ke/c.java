package ke;

import androidx.annotation.NonNull;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import io.jsonwebtoken.JwtParser;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f53700b = "1.13.2".replace((char) JwtParser.SEPARATOR_CHAR, '_');

    /* renamed from: a  reason: collision with root package name */
    private final de.b<OpMetric> f53701a;

    public c(de.b<OpMetric> bVar) {
        this.f53701a = bVar;
    }

    private static String c(@NonNull String str) {
        return String.format("%s:creative:%s", f53700b, str);
    }

    public final synchronized void a(@NonNull String str) {
        this.f53701a.push(de.c.b(c(str), 1L));
    }

    public final synchronized void b(@NonNull String str, long j10) {
        this.f53701a.push(de.c.c(c(str), j10));
    }
}
