package v3;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.d;
/* loaded from: classes2.dex */
public class n extends com.google.android.gms.common.api.d {

    /* renamed from: b  reason: collision with root package name */
    private final String f58984b = "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.";

    public n(String str) {
    }

    @Override // com.google.android.gms.common.api.d
    public final void registerConnectionFailedListener(@NonNull d.b bVar) {
        throw new UnsupportedOperationException(this.f58984b);
    }

    @Override // com.google.android.gms.common.api.d
    public final void unregisterConnectionFailedListener(@NonNull d.b bVar) {
        throw new UnsupportedOperationException(this.f58984b);
    }
}
