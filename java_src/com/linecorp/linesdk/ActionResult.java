package com.linecorp.linesdk;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003:\u0002\u0005\u0006B\u0007\b\u0002¢\u0006\u0002\u0010\u0004\u0082\u0001\u0002\u0007\b¨\u0006\t"}, d2 = {"Lcom/linecorp/linesdk/ActionResult;", ExifInterface.GPS_DIRECTION_TRUE, "U", "", "()V", "Error", "Success", "Lcom/linecorp/linesdk/ActionResult$Success;", "Lcom/linecorp/linesdk/ActionResult$Error;", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public abstract class ActionResult<T, U> {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\t\u001a\u00028\u0003HÆ\u0003¢\u0006\u0002\u0010\u0007J$\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\b\b\u0002\u0010\u0004\u001a\u00028\u0003HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0013\u0010\u0004\u001a\u00028\u0003¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/linecorp/linesdk/ActionResult$Error;", ExifInterface.GPS_DIRECTION_TRUE, "U", "Lcom/linecorp/linesdk/ActionResult;", "value", "(Ljava/lang/Object;)V", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/linecorp/linesdk/ActionResult$Error;", "equals", "", "other", "", "hashCode", "", "toString", "", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public static final class Error<T, U> extends ActionResult<T, U> {
        private final U value;

        public Error(U u10) {
            super(null);
            this.value = u10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Error copy$default(Error error, Object obj, int i9, Object obj2) {
            if ((i9 & 1) != 0) {
                obj = error.value;
            }
            return error.copy(obj);
        }

        public final U component1() {
            return this.value;
        }

        @NotNull
        public final Error<T, U> copy(U u10) {
            return new Error<>(u10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this != obj) {
                return (obj instanceof Error) && Intrinsics.areEqual(this.value, ((Error) obj).value);
            }
            return true;
        }

        public final U getValue() {
            return this.value;
        }

        public int hashCode() {
            U u10 = this.value;
            if (u10 != null) {
                return u10.hashCode();
            }
            return 0;
        }

        @NotNull
        public String toString() {
            return "Error(value=" + this.value + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0002\u0010\u0005J\u000e\u0010\t\u001a\u00028\u0002HÆ\u0003¢\u0006\u0002\u0010\u0007J$\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00002\b\b\u0002\u0010\u0004\u001a\u00028\u0002HÆ\u0001¢\u0006\u0002\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0013\u0010\u0004\u001a\u00028\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcom/linecorp/linesdk/ActionResult$Success;", ExifInterface.GPS_DIRECTION_TRUE, "U", "Lcom/linecorp/linesdk/ActionResult;", "value", "(Ljava/lang/Object;)V", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "copy", "(Ljava/lang/Object;)Lcom/linecorp/linesdk/ActionResult$Success;", "equals", "", "other", "", "hashCode", "", "toString", "", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4.dex */
    public static final class Success<T, U> extends ActionResult<T, U> {
        private final T value;

        public Success(T t10) {
            super(null);
            this.value = t10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Success copy$default(Success success, Object obj, int i9, Object obj2) {
            if ((i9 & 1) != 0) {
                obj = success.value;
            }
            return success.copy(obj);
        }

        public final T component1() {
            return this.value;
        }

        @NotNull
        public final Success<T, U> copy(T t10) {
            return new Success<>(t10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this != obj) {
                return (obj instanceof Success) && Intrinsics.areEqual(this.value, ((Success) obj).value);
            }
            return true;
        }

        public final T getValue() {
            return this.value;
        }

        public int hashCode() {
            T t10 = this.value;
            if (t10 != null) {
                return t10.hashCode();
            }
            return 0;
        }

        @NotNull
        public String toString() {
            return "Success(value=" + this.value + ")";
        }
    }

    private ActionResult() {
    }

    public /* synthetic */ ActionResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
