package ti;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes7.dex */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private final c f58206a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f58207b;

    public a() {
        this(null);
    }

    public String toString() {
        return this.f58207b.toString();
    }

    public a(c cVar) {
        this.f58207b = new ConcurrentHashMap();
        this.f58206a = cVar;
    }
}
