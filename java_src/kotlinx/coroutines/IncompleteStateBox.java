package kotlinx.coroutines;

import com.facebook.internal.ServerProtocol;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/IncompleteStateBox;", "", ServerProtocol.DIALOG_PARAM_STATE, "Lkotlinx/coroutines/Incomplete;", "(Lkotlinx/coroutines/Incomplete;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
final class IncompleteStateBox {
    @JvmField
    @NotNull
    public final Incomplete state;

    public IncompleteStateBox(@NotNull Incomplete incomplete) {
        this.state = incomplete;
    }
}
