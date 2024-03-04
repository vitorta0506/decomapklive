package o4;

import android.os.Bundle;
import androidx.annotation.NonNull;
import com.google.android.gms.internal.measurement.w2;
import p4.t;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final w2 f55513a;

    /* renamed from: o4.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0585a extends t {
    }

    public a(w2 w2Var) {
        this.f55513a = w2Var;
    }

    public void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.f55513a.K(str, str2, bundle);
    }

    public void b(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        this.f55513a.h(str, str2, obj, true);
    }

    public final void c(boolean z10) {
        this.f55513a.f(z10);
    }

    public void registerOnMeasurementEventListener(@NonNull InterfaceC0585a interfaceC0585a) {
        this.f55513a.b(interfaceC0585a);
    }

    public void unregisterOnMeasurementEventListener(@NonNull InterfaceC0585a interfaceC0585a) {
        this.f55513a.i(interfaceC0585a);
    }
}
