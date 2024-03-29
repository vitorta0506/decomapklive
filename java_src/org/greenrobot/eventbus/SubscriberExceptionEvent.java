package org.greenrobot.eventbus;
/* loaded from: classes7.dex */
public final class SubscriberExceptionEvent {
    public final Object causingEvent;
    public final Object causingSubscriber;
    public final EventBus eventBus;
    public final Throwable throwable;

    public SubscriberExceptionEvent(EventBus eventBus, Throwable th2, Object obj, Object obj2) {
        this.eventBus = eventBus;
        this.throwable = th2;
        this.causingEvent = obj;
        this.causingSubscriber = obj2;
    }
}
