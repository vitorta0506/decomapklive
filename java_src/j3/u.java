package j3;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f53130a = new HashMap();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f53131b;

    public synchronized Map<String, String> a() {
        if (this.f53131b == null) {
            this.f53131b = Collections.unmodifiableMap(new HashMap(this.f53130a));
        }
        return this.f53131b;
    }
}
