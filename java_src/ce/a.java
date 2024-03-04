package ce;

import androidx.annotation.NonNull;
import com.snapchat.kit.sdk.core.controller.OAuthFailureReason;
/* loaded from: classes4.dex */
public interface a {

    /* renamed from: ce.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0030a {
        void a(@NonNull OAuthFailureReason oAuthFailureReason);

        void b(@NonNull String str);
    }

    void addOnFirebaseCustomTokenResultListener(InterfaceC0030a interfaceC0030a);

    void removeOnFirebaseCustomTokenResultListener(InterfaceC0030a interfaceC0030a);
}
