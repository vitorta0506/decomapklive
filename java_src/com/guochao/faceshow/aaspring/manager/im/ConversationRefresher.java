package com.guochao.faceshow.aaspring.manager.im;

import android.os.Handler;
import android.os.Looper;
import com.tencent.imsdk.v2.V2TIMConversation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0018B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u000eJ \u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007J\b\u0010\t\u001a\u00020\u0007H\u0007R\u001a\u0010\u000b\u001a\u00020\n8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u000b\u0010\f\u0012\u0004\b\r\u0010\u000eR\u001a\u0010\u0010\u001a\u00020\u000f8\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0012\u0010\u000eR \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00028\u0002X\u0083\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u0012\u0004\b\u0016\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher;", "", "", "Lcom/tencent/imsdk/v2/V2TIMConversation;", "list", "", "fromChange", "", "onRefreshConversations", "release", "Landroid/os/Handler;", "handler", "Landroid/os/Handler;", "getHandler$annotations", "()V", "Lcom/guochao/faceshow/aaspring/manager/im/b;", "manager", "Lcom/guochao/faceshow/aaspring/manager/im/b;", "getManager$annotations", "Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;", "pendingRunnable", "Ljava/util/List;", "getPendingRunnable$annotations", "<init>", "RefreshRunnable", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ConversationRefresher {
    @NotNull
    public static final ConversationRefresher INSTANCE = new ConversationRefresher();
    @NotNull
    private static final Handler handler = new Handler(Looper.getMainLooper());
    @NotNull
    private static final b manager;
    @NotNull
    private static final List<RefreshRunnable> pendingRunnable;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/guochao/faceshow/aaspring/manager/im/ConversationRefresher$RefreshRunnable;", "Ljava/lang/Runnable;", "conversation", "Lcom/tencent/imsdk/v2/V2TIMConversation;", "(Lcom/tencent/imsdk/v2/V2TIMConversation;)V", "getConversation", "()Lcom/tencent/imsdk/v2/V2TIMConversation;", "run", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class RefreshRunnable implements Runnable {
        @NotNull
        private final V2TIMConversation conversation;

        public RefreshRunnable(@NotNull V2TIMConversation conversation) {
            Intrinsics.checkNotNullParameter(conversation, "conversation");
            this.conversation = conversation;
        }

        @NotNull
        public final V2TIMConversation getConversation() {
            return this.conversation;
        }

        @Override // java.lang.Runnable
        public void run() {
            ConversationRefresher.manager.B0(0, Collections.singletonList(this.conversation), false);
            ConversationRefresher.pendingRunnable.remove(this);
        }
    }

    static {
        b l02 = b.l0();
        Intrinsics.checkNotNullExpressionValue(l02, "getInstance()");
        manager = l02;
        pendingRunnable = new ArrayList();
    }

    private ConversationRefresher() {
    }

    @JvmStatic
    private static /* synthetic */ void getHandler$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getManager$annotations() {
    }

    @JvmStatic
    private static /* synthetic */ void getPendingRunnable$annotations() {
    }

    @JvmStatic
    public static final void onRefreshConversations(@NotNull List<V2TIMConversation> list, boolean z10) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (!z10) {
            for (V2TIMConversation v2TIMConversation : list) {
                if (v2TIMConversation.getUserID() != null) {
                    RefreshRunnable refreshRunnable = new RefreshRunnable(v2TIMConversation);
                    pendingRunnable.add(refreshRunnable);
                    handler.postDelayed(refreshRunnable, 1000L);
                }
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (RefreshRunnable refreshRunnable2 : pendingRunnable) {
            for (V2TIMConversation v2TIMConversation2 : list) {
                if (Objects.equals(refreshRunnable2.getConversation().getUserID(), v2TIMConversation2.getUserID())) {
                    handler.removeCallbacks(refreshRunnable2);
                    arrayList.add(refreshRunnable2);
                }
            }
        }
        TypeIntrinsics.asMutableCollection(pendingRunnable).removeAll(arrayList);
        arrayList.clear();
    }

    public static /* synthetic */ void onRefreshConversations$default(List list, boolean z10, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            z10 = true;
        }
        onRefreshConversations(list, z10);
    }

    @JvmStatic
    public static final void release() {
        handler.removeMessages(0);
        pendingRunnable.clear();
    }
}
