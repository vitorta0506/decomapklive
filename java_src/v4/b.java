package v4;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map f59001a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f59002b = new AtomicBoolean(false);

    private final synchronized void b() {
        this.f59001a.put("assetOnlyUpdates", Boolean.FALSE);
    }

    public final synchronized boolean a(String str) {
        if (!this.f59002b.get()) {
            b();
        }
        Object obj = this.f59001a.get("assetOnlyUpdates");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }
}
