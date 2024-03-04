package y3;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.internal.u;
import v3.h;
/* loaded from: classes2.dex */
public final class e extends f {
    private final u I;

    public e(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, u uVar, v3.c cVar, h hVar) {
        super(context, looper, 270, eVar, cVar, hVar);
        this.I = uVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    @NonNull
    public final String B() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.d
    @NonNull
    protected final String C() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.d
    protected final boolean F() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final int k() {
        return 203400000;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.d
    @Nullable
    public final /* synthetic */ IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof a ? (a) queryLocalInterface : new a(iBinder);
    }

    @Override // com.google.android.gms.common.internal.d
    public final Feature[] s() {
        return k4.f.f53639b;
    }

    @Override // com.google.android.gms.common.internal.d
    protected final Bundle x() {
        return this.I.b();
    }
}
