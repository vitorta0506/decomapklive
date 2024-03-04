package com.vk.api.sdk;

import androidx.exifinterface.media.ExifInterface;
import com.vk.api.sdk.exceptions.VKApiExecutionException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\n\b\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u0002:\u0002\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vk/api/sdk/VkResult;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "Failure", "Success", "Lcom/vk/api/sdk/VkResult$Success;", "Lcom/vk/api/sdk/VkResult$Failure;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class VkResult<T> {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vk/api/sdk/VkResult$Failure;", "Lcom/vk/api/sdk/VkResult;", "", "exception", "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;)V", "getException", "()Lcom/vk/api/sdk/exceptions/VKApiExecutionException;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Failure extends VkResult {
        @NotNull
        private final VKApiExecutionException exception;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(@NotNull VKApiExecutionException exception) {
            super(null);
            Intrinsics.checkNotNullParameter(exception, "exception");
            this.exception = exception;
        }

        @NotNull
        public final VKApiExecutionException getException() {
            return this.exception;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\n\b\u0001\u0010\u0001 \u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0001¢\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vk/api/sdk/VkResult$Success;", ExifInterface.GPS_DIRECTION_TRUE, "", "Lcom/vk/api/sdk/VkResult;", "data", "(Ljava/lang/Object;)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Success<T> extends VkResult<T> {
        @NotNull
        private final T data;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(@NotNull T data) {
            super(null);
            Intrinsics.checkNotNullParameter(data, "data");
            this.data = data;
        }

        @NotNull
        public final T getData() {
            return this.data;
        }
    }

    private VkResult() {
    }

    public /* synthetic */ VkResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
