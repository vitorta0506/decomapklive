package og;

import io.grpc.netty.shaded.io.netty.channel.ChannelException;
import io.grpc.netty.shaded.io.netty.channel.r;
import java.io.IOException;
import java.net.SocketOption;
import java.net.StandardSocketOptions;
import java.nio.channels.Channel;
import java.nio.channels.NetworkChannel;
import java.nio.channels.ServerSocketChannel;
/* loaded from: classes5.dex */
public final class a<T> extends r<T> {
    private final SocketOption<T> K;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T g(Channel channel, a<T> aVar) {
        NetworkChannel networkChannel = (NetworkChannel) channel;
        if (networkChannel.supportedOptions().contains(((a) aVar).K)) {
            if ((networkChannel instanceof ServerSocketChannel) && ((a) aVar).K == StandardSocketOptions.IP_TOS) {
                return null;
            }
            try {
                return (T) networkChannel.getOption(((a) aVar).K);
            } catch (IOException e10) {
                throw new ChannelException(e10);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> boolean h(Channel channel, a<T> aVar, T t10) {
        NetworkChannel networkChannel = (NetworkChannel) channel;
        if (networkChannel.supportedOptions().contains(((a) aVar).K)) {
            if ((networkChannel instanceof ServerSocketChannel) && ((a) aVar).K == StandardSocketOptions.IP_TOS) {
                return false;
            }
            try {
                networkChannel.setOption(((a) aVar).K, t10);
                return true;
            } catch (IOException e10) {
                throw new ChannelException(e10);
            }
        }
        return false;
    }
}
