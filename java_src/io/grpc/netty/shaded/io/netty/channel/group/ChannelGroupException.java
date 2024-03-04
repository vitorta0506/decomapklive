package io.grpc.netty.shaded.io.netty.channel.group;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.e;
import io.grpc.netty.shaded.io.netty.util.internal.s;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
public class ChannelGroupException extends ChannelException implements Iterable<Map.Entry<e, Throwable>> {
    private static final long serialVersionUID = -4093064295562629453L;
    private final Collection<Map.Entry<e, Throwable>> failed;

    public ChannelGroupException(Collection<Map.Entry<e, Throwable>> collection) {
        s.b(collection, "causes");
        this.failed = Collections.unmodifiableCollection(collection);
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<e, Throwable>> iterator() {
        return this.failed.iterator();
    }
}
