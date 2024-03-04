package io.grpc.netty.shaded.io.netty.channel.epoll;

import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes5.dex */
final class q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Collection<InetAddress> a(a aVar, Collection<InetAddress> collection, Map<InetAddress, byte[]> map) throws IOException {
        s.h(aVar, "channel");
        s.h(collection, "current");
        s.h(map, "newKeys");
        for (Map.Entry<InetAddress, byte[]> entry : map.entrySet()) {
            byte[] value = entry.getValue();
            s.j(entry.getKey(), "e.getKey");
            s.d(value, entry.getKey().toString());
            int length = value.length;
            int i9 = Native.f43632n;
            if (length > i9) {
                throw new IllegalArgumentException("newKeys[" + entry.getKey() + "] has a key with invalid length; should not exceed the maximum length (" + i9 + ')');
            }
        }
        for (InetAddress inetAddress : collection) {
            if (!map.containsKey(inetAddress)) {
                aVar.f43634s.x0(inetAddress, null);
            }
        }
        if (map.isEmpty()) {
            return Collections.emptySet();
        }
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<InetAddress, byte[]> entry2 : map.entrySet()) {
            aVar.f43634s.x0(entry2.getKey(), entry2.getValue());
            arrayList.add(entry2.getKey());
        }
        return arrayList;
    }
}
