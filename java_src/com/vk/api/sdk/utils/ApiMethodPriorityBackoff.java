package com.vk.api.sdk.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u0000 \r2\u00020\u0001:\u0001\rJ\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\u000e"}, d2 = {"Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "", "clear", "", "isActive", "", "newId", "", "processMethod", "clientId", "methodName", "", "shouldWait", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface ApiMethodPriorityBackoff {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;", "", "()V", "DEFAULT", "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "getDEFAULT", "()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final ApiMethodPriorityBackoff DEFAULT = new ApiMethodPriorityBackoff() { // from class: com.vk.api.sdk.utils.ApiMethodPriorityBackoff$Companion$DEFAULT$1
            @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
            public void clear() {
            }

            @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
            public boolean isActive() {
                return false;
            }

            @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
            public int newId() {
                return 0;
            }

            @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
            public void processMethod(int i9, @NotNull String methodName) {
                Intrinsics.checkNotNullParameter(methodName, "methodName");
            }

            @Override // com.vk.api.sdk.utils.ApiMethodPriorityBackoff
            public boolean shouldWait(@NotNull String methodName) {
                Intrinsics.checkNotNullParameter(methodName, "methodName");
                return false;
            }
        };

        private Companion() {
        }

        @NotNull
        public final ApiMethodPriorityBackoff getDEFAULT() {
            return DEFAULT;
        }
    }

    void clear();

    boolean isActive();

    int newId();

    void processMethod(int i9, @NotNull String str);

    boolean shouldWait(@NotNull String str);
}
