package ke;

import com.snapchat.kit.sdk.core.metrics.model.CreativeKitEventBase;
import com.snapchat.kit.sdk.core.metrics.model.CreativeKitShareStart;
import com.snapchat.kit.sdk.core.metrics.model.KitType;
import com.snapchat.kit.sdk.core.metrics.model.ServerEvent;
import com.snapchat.kit.sdk.core.metrics.model.ServerEventData;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final ge.a f53699a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ge.a aVar) {
        this.f53699a = aVar;
    }

    public final ServerEvent a() {
        return new ServerEvent.Builder().event_data(new ServerEventData.Builder().creative_kit_share_start(new CreativeKitShareStart.Builder().creative_kit_event_base(new CreativeKitEventBase.Builder().kit_event_base(this.f53699a.a(KitType.CREATIVE_KIT, "1.13.2")).build()).build()).build()).build();
    }
}
