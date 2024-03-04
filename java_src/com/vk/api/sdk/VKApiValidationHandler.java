package com.vk.api.sdk;

import androidx.exifinterface.media.ExifInterface;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0013\u0014J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H&J\u001e\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\n0\u0007H&J\u001e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\r0\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0015"}, d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler;", "", "handleCaptcha", "", "img", "", "cb", "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", "handleConfirm", "confirmationText", "", "handleValidation", "validationUrl", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "tryToHandleException", "ex", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "apiManager", "Lcom/vk/api/sdk/VKApiManager;", "Callback", "Credentials", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public interface VKApiValidationHandler {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001e\u0010\b\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler$Callback;", ExifInterface.GPS_DIRECTION_TRUE, "", "latch", "Ljava/util/concurrent/CountDownLatch;", "(Ljava/util/concurrent/CountDownLatch;)V", "getLatch", "()Ljava/util/concurrent/CountDownLatch;", "value", "getValue", "()Ljava/lang/Object;", "setValue", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "cancel", "", "submit", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static class Callback<T> {
        @NotNull
        private final CountDownLatch latch;
        @Nullable
        private volatile T value;

        public Callback(@NotNull CountDownLatch latch) {
            Intrinsics.checkNotNullParameter(latch, "latch");
            this.latch = latch;
        }

        public void cancel() {
            this.latch.countDown();
        }

        @NotNull
        public final CountDownLatch getLatch() {
            return this.latch;
        }

        @Nullable
        public final T getValue() {
            return this.value;
        }

        public final void setValue(@Nullable T t10) {
            this.value = t10;
        }

        public void submit(T t10) {
            this.value = t10;
            this.latch.countDown();
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "", "secret", "", JThirdPlatFormInterface.KEY_TOKEN, "uid", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "isValid", "", "()Z", "getSecret", "()Ljava/lang/String;", "getToken", "getUid", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "Companion", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Credentials {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private static final Credentials EMPTY = new Credentials("", "", null);
        private final boolean isValid;
        @Nullable
        private final String secret;
        @Nullable
        private final String token;
        @Nullable
        private final Integer uid;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vk/api/sdk/VKApiValidationHandler$Credentials$Companion;", "", "()V", "EMPTY", "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "getEMPTY", "()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Credentials getEMPTY() {
                return Credentials.EMPTY;
            }
        }

        public Credentials(@Nullable String str, @Nullable String str2, @Nullable Integer num) {
            boolean z10;
            boolean isBlank;
            this.secret = str;
            this.token = str2;
            this.uid = num;
            if (str2 != null) {
                isBlank = StringsKt__StringsJVMKt.isBlank(str2);
                if (!isBlank) {
                    z10 = false;
                    this.isValid = true ^ z10;
                }
            }
            z10 = true;
            this.isValid = true ^ z10;
        }

        @Nullable
        public final String getSecret() {
            return this.secret;
        }

        @Nullable
        public final String getToken() {
            return this.token;
        }

        @Nullable
        public final Integer getUid() {
            return this.uid;
        }

        public final boolean isValid() {
            return this.isValid;
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static void tryToHandleException(@NotNull VKApiValidationHandler vKApiValidationHandler, @NotNull VKApiExecutionException ex, @NotNull VKApiManager apiManager) throws VKApiExecutionException {
            Intrinsics.checkNotNullParameter(vKApiValidationHandler, "this");
            Intrinsics.checkNotNullParameter(ex, "ex");
            Intrinsics.checkNotNullParameter(apiManager, "apiManager");
            throw ex;
        }
    }

    void handleCaptcha(@NotNull String str, @NotNull Callback<String> callback);

    void handleConfirm(@NotNull String str, @NotNull Callback<Boolean> callback);

    void handleValidation(@NotNull String str, @NotNull Callback<Credentials> callback);

    void tryToHandleException(@NotNull VKApiExecutionException vKApiExecutionException, @NotNull VKApiManager vKApiManager) throws VKApiExecutionException;
}
