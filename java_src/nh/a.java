package nh;

import io.opencensus.trace.MessageEvent;
import io.opencensus.trace.NetworkEvent;
import io.opencensus.trace.c;
import lh.b;
/* loaded from: classes7.dex */
public final class a {
    public static MessageEvent a(c cVar) {
        MessageEvent.Type type;
        b.b(cVar, "event");
        if (cVar instanceof MessageEvent) {
            return (MessageEvent) cVar;
        }
        NetworkEvent networkEvent = (NetworkEvent) cVar;
        if (networkEvent.e() == NetworkEvent.Type.RECV) {
            type = MessageEvent.Type.RECEIVED;
        } else {
            type = MessageEvent.Type.SENT;
        }
        return MessageEvent.a(type, networkEvent.d()).d(networkEvent.f()).b(networkEvent.b()).a();
    }

    public static NetworkEvent b(c cVar) {
        NetworkEvent.Type type;
        b.b(cVar, "event");
        if (cVar instanceof NetworkEvent) {
            return (NetworkEvent) cVar;
        }
        MessageEvent messageEvent = (MessageEvent) cVar;
        if (messageEvent.d() == MessageEvent.Type.RECEIVED) {
            type = NetworkEvent.Type.RECV;
        } else {
            type = NetworkEvent.Type.SENT;
        }
        return NetworkEvent.a(type, messageEvent.c()).d(messageEvent.e()).b(messageEvent.b()).a();
    }
}
