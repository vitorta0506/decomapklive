package com.bumptech.glide.request;
/* loaded from: classes.dex */
public interface RequestCoordinator {

    /* loaded from: classes.dex */
    public enum RequestState {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);
        
        private final boolean isComplete;

        RequestState(boolean z10) {
            this.isComplete = z10;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isComplete() {
            return this.isComplete;
        }
    }

    boolean a();

    boolean b(e eVar);

    boolean c(e eVar);

    void d(e eVar);

    void f(e eVar);

    RequestCoordinator getRoot();

    boolean j(e eVar);
}
