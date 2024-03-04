package com.snapchat.kit.sdk.a;

import androidx.annotation.NonNull;
import com.snapchat.kit.sdk.core.metrics.model.OpMetric;
import de.b;
import de.c;
import io.jsonwebtoken.JwtParser;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final dg.a<b<OpMetric>> f29472a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<EnumC0289a, Long> f29473b = new ConcurrentHashMap();

    /* renamed from: com.snapchat.kit.sdk.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public enum EnumC0289a {
        REVOKE,
        REFRESH,
        GRANT,
        FIREBASE_TOKEN_GRANT
    }

    public a(dg.a<b<OpMetric>> aVar) {
        this.f29472a = aVar;
    }

    private static String c(String str) {
        return String.format("%s:login:%s", "1.13.2".replace((char) JwtParser.SEPARATOR_CHAR, '_'), str);
    }

    public final synchronized void a(@NonNull EnumC0289a enumC0289a) {
        this.f29472a.get().push(c.b(c(enumC0289a.toString().toLowerCase() + "TokenRequest"), 1L));
        this.f29473b.put(enumC0289a, Long.valueOf(System.currentTimeMillis()));
    }

    public final synchronized void b(EnumC0289a enumC0289a, boolean z10) {
        b<OpMetric> bVar = this.f29472a.get();
        if (z10) {
            Long remove = this.f29473b.remove(enumC0289a);
            if (remove != null) {
                bVar.push(c.c(c(enumC0289a.toString().toLowerCase() + "TokenLatency"), System.currentTimeMillis() - remove.longValue()));
            }
            return;
        }
        bVar.push(c.b(c(enumC0289a.toString().toLowerCase() + "TokenFailure"), 1L));
    }
}
