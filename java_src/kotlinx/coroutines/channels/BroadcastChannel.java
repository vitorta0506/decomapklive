package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.channels.SendChannel;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@ObsoleteCoroutinesApi
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H'J\u001a\u0010\u0003\u001a\u00020\u00072\u0010\b\u0002\u0010\u0005\u001a\n\u0018\u00010\bj\u0004\u0018\u0001`\tH&J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH&¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/channels/BroadcastChannel;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/SendChannel;", "cancel", "", "cause", "", "", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "openSubscription", "Lkotlinx/coroutines/channels/ReceiveChannel;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface BroadcastChannel<E> extends SendChannel<E> {

    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void cancel$default(BroadcastChannel broadcastChannel, CancellationException cancellationException, int i9, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i9 & 1) != 0) {
                cancellationException = null;
            }
            broadcastChannel.cancel(cancellationException);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean offer(@NotNull BroadcastChannel<E> broadcastChannel, E e10) {
            return SendChannel.DefaultImpls.offer(broadcastChannel, e10);
        }

        public static /* synthetic */ boolean cancel$default(BroadcastChannel broadcastChannel, Throwable th2, int i9, Object obj) {
            if (obj == null) {
                if ((i9 & 1) != 0) {
                    th2 = null;
                }
                return broadcastChannel.cancel(th2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }
    }

    void cancel(@Nullable CancellationException cancellationException);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility only")
    /* synthetic */ boolean cancel(Throwable th2);

    @NotNull
    ReceiveChannel<E> openSubscription();
}
