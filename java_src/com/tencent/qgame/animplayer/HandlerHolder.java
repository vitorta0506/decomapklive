package com.tencent.qgame.animplayer;

import android.os.Handler;
import android.os.HandlerThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/tencent/qgame/animplayer/HandlerHolder;", "", "thread", "Landroid/os/HandlerThread;", "handler", "Landroid/os/Handler;", "(Landroid/os/HandlerThread;Landroid/os/Handler;)V", "getHandler", "()Landroid/os/Handler;", "setHandler", "(Landroid/os/Handler;)V", "getThread", "()Landroid/os/HandlerThread;", "setThread", "(Landroid/os/HandlerThread;)V", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "animplayer_release"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes4.dex */
public final class HandlerHolder {
    @Nullable
    private Handler handler;
    @Nullable
    private HandlerThread thread;

    public HandlerHolder(@Nullable HandlerThread handlerThread, @Nullable Handler handler) {
        this.thread = handlerThread;
        this.handler = handler;
    }

    public static /* synthetic */ HandlerHolder copy$default(HandlerHolder handlerHolder, HandlerThread handlerThread, Handler handler, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            handlerThread = handlerHolder.thread;
        }
        if ((i9 & 2) != 0) {
            handler = handlerHolder.handler;
        }
        return handlerHolder.copy(handlerThread, handler);
    }

    @Nullable
    public final HandlerThread component1() {
        return this.thread;
    }

    @Nullable
    public final Handler component2() {
        return this.handler;
    }

    @NotNull
    public final HandlerHolder copy(@Nullable HandlerThread handlerThread, @Nullable Handler handler) {
        return new HandlerHolder(handlerThread, handler);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof HandlerHolder) {
                HandlerHolder handlerHolder = (HandlerHolder) obj;
                return Intrinsics.areEqual(this.thread, handlerHolder.thread) && Intrinsics.areEqual(this.handler, handlerHolder.handler);
            }
            return false;
        }
        return true;
    }

    @Nullable
    public final Handler getHandler() {
        return this.handler;
    }

    @Nullable
    public final HandlerThread getThread() {
        return this.thread;
    }

    public int hashCode() {
        HandlerThread handlerThread = this.thread;
        int hashCode = (handlerThread != null ? handlerThread.hashCode() : 0) * 31;
        Handler handler = this.handler;
        return hashCode + (handler != null ? handler.hashCode() : 0);
    }

    public final void setHandler(@Nullable Handler handler) {
        this.handler = handler;
    }

    public final void setThread(@Nullable HandlerThread handlerThread) {
        this.thread = handlerThread;
    }

    @NotNull
    public String toString() {
        return "HandlerHolder(thread=" + this.thread + ", handler=" + this.handler + ")";
    }
}
