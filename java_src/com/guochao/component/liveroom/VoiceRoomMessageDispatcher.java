package com.guochao.component.liveroom;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.startup.Initializer;
import com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister;
import com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o7.a;
import org.jetbrains.annotations.NotNull;
@Keep
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0014B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001a\u0010\t\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\b0\u0007H\u0016J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016¨\u0006\u0015"}, d2 = {"Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher;", "Landroidx/startup/Initializer;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;", "Landroid/content/Context;", "context", "create", "", "Ljava/lang/Class;", "dependencies", "Lo7/a;", "gcimMessage", "", "dispatchGCIMMessage", "gcimMessageDispatcher", "", "registerDispatcher", "unregisterDispatcher", "<init>", "()V", "Companion", "component_liveroom_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VoiceRoomMessageDispatcher extends IGCIMMessageDispatcherRegister implements Initializer<GCIMMessageDispatcher> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ArrayList<GCIMMessageDispatcher> dispatchers = new ArrayList<>();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/guochao/component/liveroom/VoiceRoomMessageDispatcher$Companion;", "", "()V", "dispatchers", "Ljava/util/ArrayList;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "Lkotlin/collections/ArrayList;", "component_liveroom_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        List<Class<? extends Initializer<?>>> emptyList = Collections.emptyList();
        Intrinsics.checkNotNullExpressionValue(emptyList, "emptyList()");
        return emptyList;
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher
    public boolean dispatchGCIMMessage(@NotNull a gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        for (GCIMMessageDispatcher gCIMMessageDispatcher : dispatchers) {
            if (gCIMMessageDispatcher.dispatchGCIMMessage(gcimMessage)) {
                return true;
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

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.startup.Initializer
    @NotNull
    public GCIMMessageDispatcher create(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object navigation = o.a.c().a(RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS).navigation();
        IGCIMMessageDispatcherRegister iGCIMMessageDispatcherRegister = navigation instanceof IGCIMMessageDispatcherRegister ? (IGCIMMessageDispatcherRegister) navigation : null;
        if (iGCIMMessageDispatcherRegister != null) {
            iGCIMMessageDispatcherRegister.registerDispatcher(this);
        }
        return this;
    }
}
