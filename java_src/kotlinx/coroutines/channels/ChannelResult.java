package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.GraphResponse;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.login.LoginLogger;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087@\u0018\u0000 %*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003$%&B\u0016\b\u0001\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0010\u001a\u00020\t2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0019\u0010\u0005J\r\u0010\u001a\u001a\u00028\u0000¢\u0006\u0004\b\u001b\u0010\u0005J\u0010\u0010\u001c\u001a\u00020\u001dHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000b\u0088\u0001\u0003\u0092\u0001\u0004\u0018\u00010\u0002ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult;", ExifInterface.GPS_DIRECTION_TRUE, "", "holder", "constructor-impl", "(Ljava/lang/Object;)Ljava/lang/Object;", "getHolder$annotations", "()V", "isClosed", "", "isClosed-impl", "(Ljava/lang/Object;)Z", "isFailure", "isFailure-impl", "isSuccess", "isSuccess-impl", "equals", "other", "equals-impl", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "exceptionOrNull", "", "exceptionOrNull-impl", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "getOrNull", "getOrNull-impl", "getOrThrow", "getOrThrow-impl", "hashCode", "", "hashCode-impl", "(Ljava/lang/Object;)I", "toString", "", "toString-impl", "(Ljava/lang/Object;)Ljava/lang/String;", "Closed", "Companion", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
@JvmInline
/* loaded from: classes7.dex */
public final class ChannelResult<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Failed failed = new Failed();
    @Nullable
    private final Object holder;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016R\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Closed;", "Lkotlinx/coroutines/channels/ChannelResult$Failed;", "cause", "", "(Ljava/lang/Throwable;)V", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Closed extends Failed {
        @JvmField
        @Nullable
        public final Throwable cause;

        public Closed(@Nullable Throwable th2) {
            this.cause = th2;
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof Closed) && Intrinsics.areEqual(this.cause, ((Closed) obj).cause);
        }

        public int hashCode() {
            Throwable th2 = this.cause;
            if (th2 != null) {
                return th2.hashCode();
            }
            return 0;
        }

        @Override // kotlinx.coroutines.channels.ChannelResult.Failed
        @NotNull
        public String toString() {
            return "Closed(" + this.cause + ')';
        }
    }

    @InternalCoroutinesApi
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\n\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J.\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0001\u0010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\n\u0010\u000bJ$\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0001\u0010\u0007H\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\r\u0010\u000eJ,\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\b\u0001\u0010\u00072\u0006\u0010\u0010\u001a\u0002H\u0007H\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Companion;", "", "()V", "failed", "Lkotlinx/coroutines/channels/ChannelResult$Failed;", "closed", "Lkotlinx/coroutines/channels/ChannelResult;", ExifInterface.LONGITUDE_EAST, "cause", "", "closed-JP2dKIU", "(Ljava/lang/Throwable;)Ljava/lang/Object;", LoginLogger.EVENT_EXTRAS_FAILURE, "failure-PtdJZtk", "()Ljava/lang/Object;", GraphResponse.SUCCESS_KEY, "value", "success-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @InternalCoroutinesApi
        @NotNull
        /* renamed from: closed-JP2dKIU  reason: not valid java name */
        public final <E> Object m3175closedJP2dKIU(@Nullable Throwable th2) {
            return ChannelResult.m3163constructorimpl(new Closed(th2));
        }

        @InternalCoroutinesApi
        @NotNull
        /* renamed from: failure-PtdJZtk  reason: not valid java name */
        public final <E> Object m3176failurePtdJZtk() {
            return ChannelResult.m3163constructorimpl(ChannelResult.failed);
        }

        @InternalCoroutinesApi
        @NotNull
        /* renamed from: success-JP2dKIU  reason: not valid java name */
        public final <E> Object m3177successJP2dKIU(E e10) {
            return ChannelResult.m3163constructorimpl(e10);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0010\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/channels/ChannelResult$Failed;", "", "()V", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static class Failed {
        @NotNull
        public String toString() {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED;
        }
    }

    @PublishedApi
    private /* synthetic */ ChannelResult(Object obj) {
        this.holder = obj;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ChannelResult m3162boximpl(Object obj) {
        return new ChannelResult(obj);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <T> Object m3163constructorimpl(@Nullable Object obj) {
        return obj;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m3164equalsimpl(Object obj, Object obj2) {
        return (obj2 instanceof ChannelResult) && Intrinsics.areEqual(obj, ((ChannelResult) obj2).m3174unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m3165equalsimpl0(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    @Nullable
    /* renamed from: exceptionOrNull-impl  reason: not valid java name */
    public static final Throwable m3166exceptionOrNullimpl(Object obj) {
        Closed closed = obj instanceof Closed ? (Closed) obj : null;
        if (closed != null) {
            return closed.cause;
        }
        return null;
    }

    @PublishedApi
    public static /* synthetic */ void getHolder$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: getOrNull-impl  reason: not valid java name */
    public static final T m3167getOrNullimpl(Object obj) {
        if (obj instanceof Failed) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getOrThrow-impl  reason: not valid java name */
    public static final T m3168getOrThrowimpl(Object obj) {
        Throwable th2;
        if (obj instanceof Failed) {
            if (!(obj instanceof Closed) || (th2 = ((Closed) obj).cause) == null) {
                throw new IllegalStateException(("Trying to call 'getOrThrow' on a failed channel result: " + obj).toString());
            }
            throw th2;
        }
        return obj;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m3169hashCodeimpl(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    /* renamed from: isClosed-impl  reason: not valid java name */
    public static final boolean m3170isClosedimpl(Object obj) {
        return obj instanceof Closed;
    }

    /* renamed from: isFailure-impl  reason: not valid java name */
    public static final boolean m3171isFailureimpl(Object obj) {
        return obj instanceof Failed;
    }

    /* renamed from: isSuccess-impl  reason: not valid java name */
    public static final boolean m3172isSuccessimpl(Object obj) {
        return !(obj instanceof Failed);
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m3173toStringimpl(Object obj) {
        if (obj instanceof Closed) {
            return ((Closed) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return m3164equalsimpl(this.holder, obj);
    }

    public int hashCode() {
        return m3169hashCodeimpl(this.holder);
    }

    @NotNull
    public String toString() {
        return m3173toStringimpl(this.holder);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ Object m3174unboximpl() {
        return this.holder;
    }
}
