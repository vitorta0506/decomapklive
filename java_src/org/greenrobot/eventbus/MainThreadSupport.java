package org.greenrobot.eventbus;
/* loaded from: classes7.dex */
public interface MainThreadSupport {
    Poster createPoster(EventBus eventBus);

    boolean isMainThread();
}
