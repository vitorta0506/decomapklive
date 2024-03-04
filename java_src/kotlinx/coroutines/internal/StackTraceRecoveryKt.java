package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.huawei.hms.push.e;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CopyableThrowable;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u001a\u0014\u0010\u0006\u001a\u00060\u0007j\u0002`\b2\u0006\u0010\t\u001a\u00020\u0001H\u0007\u001a9\u0010\n\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f2\u0006\u0010\r\u001a\u0002H\u000b2\u0006\u0010\u000e\u001a\u0002H\u000b2\u0010\u0010\u000f\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0010H\u0002¢\u0006\u0002\u0010\u0011\u001a\u001e\u0010\u0012\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00102\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002\u001a1\u0010\u0016\u001a\u00020\u00172\u0010\u0010\u0018\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00192\u0010\u0010\u000e\u001a\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u0010H\u0002¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\fH\u0080Hø\u0001\u0000¢\u0006\u0002\u0010\u001e\u001a+\u0010\u001f\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0002¢\u0006\u0002\u0010 \u001a\u001f\u0010!\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0000¢\u0006\u0002\u0010\"\u001a,\u0010!\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000b2\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030#H\u0080\b¢\u0006\u0002\u0010$\u001a!\u0010%\u001a\u0004\u0018\u0001H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0002¢\u0006\u0002\u0010\"\u001a \u0010&\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0080\b¢\u0006\u0002\u0010\"\u001a\u001f\u0010'\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f2\u0006\u0010\u001d\u001a\u0002H\u000bH\u0000¢\u0006\u0002\u0010\"\u001a1\u0010(\u001a\u0018\u0012\u0004\u0012\u0002H\u000b\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00190)\"\b\b\u0000\u0010\u000b*\u00020\f*\u0002H\u000bH\u0002¢\u0006\u0002\u0010*\u001a\u001c\u0010+\u001a\u00020,*\u00060\u0007j\u0002`\b2\n\u0010-\u001a\u00060\u0007j\u0002`\bH\u0002\u001a#\u0010.\u001a\u00020/*\f\u0012\b\u0012\u00060\u0007j\u0002`\b0\u00192\u0006\u00100\u001a\u00020\u0001H\u0002¢\u0006\u0002\u00101\u001a\u0014\u00102\u001a\u00020\u0017*\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0000\u001a\u0010\u00103\u001a\u00020,*\u00060\u0007j\u0002`\bH\u0000\u001a\u001b\u00104\u001a\u0002H\u000b\"\b\b\u0000\u0010\u000b*\u00020\f*\u0002H\u000bH\u0002¢\u0006\u0002\u0010\"\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0016\u0010\u0005\u001a\n \u0003*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000*\f\b\u0000\u00105\"\u00020\u00142\u00020\u0014*\f\b\u0000\u00106\"\u00020\u00072\u00020\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u00067"}, d2 = {"baseContinuationImplClass", "", "baseContinuationImplClassName", "kotlin.jvm.PlatformType", "stackTraceRecoveryClass", "stackTraceRecoveryClassName", "artificialFrame", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "message", "createFinalException", ExifInterface.LONGITUDE_EAST, "", "cause", "result", "resultStackTrace", "Ljava/util/ArrayDeque;", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "createStackTrace", "continuation", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "mergeRecoveredTraces", "", "recoveredStacktrace", "", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "recoverAndThrow", "", "exception", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recoverFromStackFrame", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "recoverStackTrace", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Lkotlin/coroutines/Continuation;", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "tryCopyAndVerify", "unwrap", "unwrapImpl", "causeAndStacktrace", "Lkotlin/Pair;", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "elementWiseEquals", "", e.f27721a, "frameIndex", "", "methodName", "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "initCause", "isArtificial", "sanitizeStackTrace", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class StackTraceRecoveryKt {
    @NotNull
    private static final String baseContinuationImplClass = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
    private static final String baseContinuationImplClassName;
    @NotNull
    private static final String stackTraceRecoveryClass = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
    private static final String stackTraceRecoveryClassName;

    static {
        Object m1657constructorimpl;
        Object m1657constructorimpl2;
        try {
            Result.Companion companion = Result.Companion;
            m1657constructorimpl = Result.m1657constructorimpl(Class.forName(baseContinuationImplClass).getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m1657constructorimpl = Result.m1657constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m1660exceptionOrNullimpl(m1657constructorimpl) != null) {
            m1657constructorimpl = baseContinuationImplClass;
        }
        baseContinuationImplClassName = (String) m1657constructorimpl;
        try {
            Result.Companion companion3 = Result.Companion;
            m1657constructorimpl2 = Result.m1657constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.Companion;
            m1657constructorimpl2 = Result.m1657constructorimpl(ResultKt.createFailure(th3));
        }
        if (Result.m1660exceptionOrNullimpl(m1657constructorimpl2) != null) {
            m1657constructorimpl2 = stackTraceRecoveryClass;
        }
        stackTraceRecoveryClassName = (String) m1657constructorimpl2;
    }

    public static /* synthetic */ void CoroutineStackFrame$annotations() {
    }

    public static /* synthetic */ void StackTraceElement$annotations() {
    }

    @InternalCoroutinesApi
    @NotNull
    public static final StackTraceElement artificialFrame(@NotNull String str) {
        return new StackTraceElement("\b\b\b(" + str, "\b", "\b", -1);
    }

    private static final <E extends Throwable> Pair<E, StackTraceElement[]> causeAndStacktrace(E e10) {
        boolean z10;
        Throwable cause = e10.getCause();
        if (cause != null && Intrinsics.areEqual(cause.getClass(), e10.getClass())) {
            StackTraceElement[] stackTrace = e10.getStackTrace();
            int length = stackTrace.length;
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    z10 = false;
                    break;
                } else if (isArtificial(stackTrace[i9])) {
                    z10 = true;
                    break;
                } else {
                    i9++;
                }
            }
            if (z10) {
                return TuplesKt.to(cause, stackTrace);
            }
            return TuplesKt.to(e10, new StackTraceElement[0]);
        }
        return TuplesKt.to(e10, new StackTraceElement[0]);
    }

    private static final <E extends Throwable> E createFinalException(E e10, E e11, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(artificialFrame("Coroutine boundary"));
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int frameIndex = frameIndex(stackTrace, baseContinuationImplClassName);
        int i9 = 0;
        if (frameIndex == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            e11.setStackTrace((StackTraceElement[]) array);
            return e11;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + frameIndex];
        for (int i10 = 0; i10 < frameIndex; i10++) {
            stackTraceElementArr[i10] = stackTrace[i10];
        }
        Iterator<StackTraceElement> it = arrayDeque.iterator();
        while (it.hasNext()) {
            int i11 = i9 + 1;
            stackTraceElementArr[i9 + frameIndex] = it.next();
            i9 = i11;
        }
        e11.setStackTrace(stackTraceElementArr);
        return e11;
    }

    private static final ArrayDeque<StackTraceElement> createStackTrace(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    private static final boolean elementWiseEquals(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    private static final int frameIndex(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (Intrinsics.areEqual(str, stackTraceElementArr[i9].getClassName())) {
                return i9;
            }
        }
        return -1;
    }

    public static final void initCause(@NotNull Throwable th2, @NotNull Throwable th3) {
        th2.initCause(th3);
    }

    public static final boolean isArtificial(@NotNull StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
        return startsWith$default;
    }

    private static final void mergeRecoveredTraces(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                i9 = -1;
                break;
            } else if (isArtificial(stackTraceElementArr[i9])) {
                break;
            } else {
                i9++;
            }
        }
        int i10 = i9 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i10 > length2) {
            return;
        }
        while (true) {
            if (elementWiseEquals(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i10) {
                return;
            }
            length2--;
        }
    }

    @Nullable
    public static final Object recoverAndThrow(@NotNull Throwable th2, @NotNull Continuation<?> continuation) {
        throw th2;
    }

    private static final Object recoverAndThrow$$forInline(Throwable th2, Continuation<?> continuation) {
        throw th2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> E recoverFromStackFrame(E e10, CoroutineStackFrame coroutineStackFrame) {
        Pair causeAndStacktrace = causeAndStacktrace(e10);
        Throwable th2 = (Throwable) causeAndStacktrace.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) causeAndStacktrace.component2();
        Throwable tryCopyAndVerify = tryCopyAndVerify(th2);
        if (tryCopyAndVerify == null) {
            return e10;
        }
        ArrayDeque<StackTraceElement> createStackTrace = createStackTrace(coroutineStackFrame);
        if (createStackTrace.isEmpty()) {
            return e10;
        }
        if (th2 != e10) {
            mergeRecoveredTraces(stackTraceElementArr, createStackTrace);
        }
        return (E) createFinalException(th2, tryCopyAndVerify, createStackTrace);
    }

    @NotNull
    public static final <E extends Throwable> E recoverStackTrace(@NotNull E e10) {
        return e10;
    }

    @NotNull
    public static final <E extends Throwable> E recoverStackTrace(@NotNull E e10, @NotNull Continuation<?> continuation) {
        return e10;
    }

    private static final <E extends Throwable> E sanitizeStackTrace(E e10) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int length = stackTrace.length;
        int frameIndex = frameIndex(stackTrace, stackTraceRecoveryClassName);
        int i9 = frameIndex + 1;
        int frameIndex2 = frameIndex(stackTrace, baseContinuationImplClassName);
        int i10 = (length - frameIndex) - (frameIndex2 == -1 ? 0 : length - frameIndex2);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 == 0) {
                stackTraceElement = artificialFrame("Coroutine boundary");
            } else {
                stackTraceElement = stackTrace[(i9 + i11) - 1];
            }
            stackTraceElementArr[i11] = stackTraceElement;
        }
        e10.setStackTrace(stackTraceElementArr);
        return e10;
    }

    private static final <E extends Throwable> E tryCopyAndVerify(E e10) {
        E e11 = (E) ExceptionsConstructorKt.tryCopyException(e10);
        if (e11 == null) {
            return null;
        }
        if ((e10 instanceof CopyableThrowable) || Intrinsics.areEqual(e11.getMessage(), e10.getMessage())) {
            return e11;
        }
        return null;
    }

    @NotNull
    public static final <E extends Throwable> E unwrap(@NotNull E e10) {
        return e10;
    }

    @NotNull
    public static final <E extends Throwable> E unwrapImpl(@NotNull E e10) {
        E e11 = (E) e10.getCause();
        if (e11 != null && Intrinsics.areEqual(e11.getClass(), e10.getClass())) {
            StackTraceElement[] stackTrace = e10.getStackTrace();
            int length = stackTrace.length;
            boolean z10 = false;
            int i9 = 0;
            while (true) {
                if (i9 >= length) {
                    break;
                } else if (isArtificial(stackTrace[i9])) {
                    z10 = true;
                    break;
                } else {
                    i9++;
                }
            }
            if (z10) {
                return e11;
            }
        }
        return e10;
    }
}
