package ge;

import com.snapchat.kit.sdk.core.metrics.model.LoginKitAuthComplete;
import com.snapchat.kit.sdk.core.metrics.model.LoginKitEventBase;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.metrics.model.ServerEventData;
/* loaded from: classes4.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final a f40050a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f40050a = aVar;
    }

    private LoginKitEventBase a(boolean z10) {
        return new LoginKitEventBase.Builder().kit_event_base(this.f40050a.b()).is_for_firebase_authentication(Boolean.valueOf(z10)).build();
    }

    private static ServerEvent b(ServerEventData serverEventData) {
        return new ServerEvent.Builder().event_data(serverEventData).build();
    }

    public final ServerEvent c(boolean z10, boolean z11) {
        return b(new ServerEventData.Builder().login_kit_auth_complete(new LoginKitAuthComplete.Builder().log_kit_event_base(a(z11)).is_success(Boolean.valueOf(z10)).build()).build());
    }
}
