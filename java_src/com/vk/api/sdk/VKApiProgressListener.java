package com.vk.api.sdk;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bf\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&¨\u0006\b"}, d2 = {"Lcom/vk/api/sdk/VKApiProgressListener;", "", "onProgress", "", "progressValue", "", "progressMaxValue", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKApiProgressListener {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/VKApiProgressListener$Companion;", "", "()V", "EMPTY", "Lcom/vk/api/sdk/VKApiProgressListener;", "getEMPTY", "()Lcom/vk/api/sdk/VKApiProgressListener;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final VKApiProgressListener EMPTY = new VKApiProgressListener() { // from class: com.vk.api.sdk.VKApiProgressListener$Companion$EMPTY$1
            @Override // com.vk.api.sdk.VKApiProgressListener
            public void onProgress(int i9, int i10) {
            }
        };

        private Companion() {
        }

        @NotNull
        public final VKApiProgressListener getEMPTY() {
            return EMPTY;
        }
    }

    void onProgress(int i9, int i10);
}
