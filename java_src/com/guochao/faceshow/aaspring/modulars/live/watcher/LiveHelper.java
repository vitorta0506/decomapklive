package com.guochao.faceshow.aaspring.modulars.live.watcher;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;", "", "()V", "isFloatTouchLiveRoom", "", "()Z", "setFloatTouchLiveRoom", "(Z)V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LiveHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Lazy<LiveHelper> instance$delegate;
    private boolean isFloatTouchLiveRoom;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper$Companion;", "", "()V", "instance", "Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;", "getInstance", "()Lcom/guochao/faceshow/aaspring/modulars/live/watcher/LiveHelper;", "instance$delegate", "Lkotlin/Lazy;", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LiveHelper getInstance() {
            return (LiveHelper) LiveHelper.instance$delegate.getValue();
        }
    }

    static {
        Lazy<LiveHelper> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<LiveHelper>() { // from class: com.guochao.faceshow.aaspring.modulars.live.watcher.LiveHelper$Companion$instance$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LiveHelper invoke() {
                return new LiveHelper();
            }
        });
        instance$delegate = lazy;
    }

    public final boolean isFloatTouchLiveRoom() {
        return this.isFloatTouchLiveRoom;
    }

    public final void setFloatTouchLiveRoom(boolean z10) {
        this.isFloatTouchLiveRoom = z10;
    }
}
