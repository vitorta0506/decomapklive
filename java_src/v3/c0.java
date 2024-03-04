package v3;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import java.util.Set;
/* loaded from: classes2.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap f58964a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap f58965b;

    /* renamed from: c  reason: collision with root package name */
    private final t4.h f58966c;

    /* renamed from: d  reason: collision with root package name */
    private int f58967d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f58968e;

    public final Set a() {
        return this.f58964a.keySet();
    }

    public final void b(b bVar, ConnectionResult connectionResult, @Nullable String str) {
        this.f58964a.put(bVar, connectionResult);
        this.f58965b.put(bVar, str);
        this.f58967d--;
        if (!connectionResult.P()) {
            this.f58968e = true;
        }
        if (this.f58967d == 0) {
            if (this.f58968e) {
                this.f58966c.b(new AvailabilityException(this.f58964a));
                return;
            }
            this.f58966c.c(this.f58965b);
        }
    }
}
