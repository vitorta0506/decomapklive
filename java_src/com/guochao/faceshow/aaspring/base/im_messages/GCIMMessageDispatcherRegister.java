package com.guochao.faceshow.aaspring.base.im_messages;

import com.alibaba.android.arouter.facade.annotation.Route;
import com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o7.a;
import org.jetbrains.annotations.NotNull;
@Route(path = RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS)
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¨\u0006\u000e"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;", "Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "gcimMessageDispatcher", "", "registerDispatcher", "unregisterDispatcher", "Lo7/a;", "gcimMessage", "", "dispatchGCIMMessage", "<init>", "()V", "Companion", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GCIMMessageDispatcherRegister extends IGCIMMessageDispatcherRegister {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ArrayList<GCIMMessageDispatcher> dispatchers = new ArrayList<>();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u00068\u0002X\u0083\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002¨\u0006\b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister$Companion;", "", "()V", "dispatchers", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "Lkotlin/collections/ArrayList;", "getDispatchers$annotations", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getDispatchers$annotations() {
        }
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher
    public boolean dispatchGCIMMessage(@NotNull a gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        for (GCIMMessageDispatcher gCIMMessageDispatcher : dispatchers) {
            boolean dispatchGCIMMessage = gCIMMessageDispatcher.dispatchGCIMMessage(gcimMessage);
            if (dispatchGCIMMessage) {
                return dispatchGCIMMessage;
            }
        }
        return false;
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister
    public void registerDispatcher(@NotNull GCIMMessageDispatcher gcimMessageDispatcher) {
        Intrinsics.checkNotNullParameter(gcimMessageDispatcher, "gcimMessageDispatcher");
        ArrayList<GCIMMessageDispatcher> arrayList = dispatchers;
        if (arrayList.contains(gcimMessageDispatcher)) {
            return;
        }
        arrayList.add(gcimMessageDispatcher);
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister
    public void unregisterDispatcher(@NotNull GCIMMessageDispatcher gcimMessageDispatcher) {
        Intrinsics.checkNotNullParameter(gcimMessageDispatcher, "gcimMessageDispatcher");
        dispatchers.remove(gcimMessageDispatcher);
    }
}
