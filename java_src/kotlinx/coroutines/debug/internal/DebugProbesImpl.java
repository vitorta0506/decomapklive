package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.internal.ServerProtocol;
import com.guochao.faceshow.utils.Contants;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.Typography;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineId;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\bÀ\u0002\u0018\u00002\u00020\u0014:\u0002\u0095\u0001B\t\b\u0002¢\u0006\u0004\b\u0001\u0010\u0002J3\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\u0004\b\u0015\u0010\u0016J@\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\b\b\u0000\u0010\u0017*\u00020\u00142\u001e\b\u0004\u0010\u001b\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00028\u00000\u0018H\u0082\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001e\u0010\u000eJ\u0013\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u000f¢\u0006\u0004\b \u0010\u0012J)\u0010$\u001a\b\u0012\u0004\u0012\u00020\"0\u000f2\u0006\u0010!\u001a\u00020\u00102\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u000f¢\u0006\u0004\b$\u0010%J\u0015\u0010'\u001a\u00020&2\u0006\u0010!\u001a\u00020\u0010¢\u0006\u0004\b'\u0010(J5\u0010,\u001a\b\u0012\u0004\u0012\u00020\"0\u000f2\u0006\u0010)\u001a\u00020&2\b\u0010+\u001a\u0004\u0018\u00010*2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u000fH\u0002¢\u0006\u0004\b,\u0010-J?\u00102\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u00020.012\u0006\u0010/\u001a\u00020.2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\"0\u00132\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u000fH\u0002¢\u0006\u0004\b2\u00103J3\u00105\u001a\u00020.2\u0006\u00104\u001a\u00020.2\f\u00100\u001a\b\u0012\u0004\u0012\u00020\"0\u00132\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u000fH\u0002¢\u0006\u0004\b5\u00106J\u001d\u00109\u001a\u0010\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\f\u0018\u000107H\u0002¢\u0006\u0004\b9\u0010:J\u0015\u0010=\u001a\u00020&2\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b=\u0010>J\r\u0010?\u001a\u00020\f¢\u0006\u0004\b?\u0010\u0002J%\u0010A\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010@\u001a\b\u0012\u0004\u0012\u00020\"0\u000fH\u0002¢\u0006\u0004\bA\u0010BJ\u001b\u0010D\u001a\u00020\f2\n\u0010C\u001a\u0006\u0012\u0002\b\u00030\u0019H\u0002¢\u0006\u0004\bD\u0010EJ)\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0000¢\u0006\u0004\bF\u0010GJ\u001b\u0010K\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0000¢\u0006\u0004\bI\u0010JJ\u001b\u0010M\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0004H\u0000¢\u0006\u0004\bL\u0010JJ'\u0010P\u001a\b\u0012\u0004\u0012\u00020\"0\u000f\"\b\b\u0000\u0010\u0003*\u00020N2\u0006\u0010O\u001a\u00028\u0000H\u0002¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\fH\u0002¢\u0006\u0004\bR\u0010\u0002J\u000f\u0010S\u001a\u00020\fH\u0002¢\u0006\u0004\bS\u0010\u0002J\r\u0010T\u001a\u00020\f¢\u0006\u0004\bT\u0010\u0002J\u001f\u0010V\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020U2\u0006\u0010)\u001a\u00020&H\u0002¢\u0006\u0004\bV\u0010WJ#\u0010X\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010)\u001a\u00020&H\u0002¢\u0006\u0004\bX\u0010YJ/\u0010X\u001a\u00020\f2\n\u0010C\u001a\u0006\u0012\u0002\b\u00030\u00192\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010)\u001a\u00020&H\u0002¢\u0006\u0004\bX\u0010ZJ;\u0010b\u001a\u00020\f*\u00020;2\u0012\u0010]\u001a\u000e\u0012\u0004\u0012\u00020;\u0012\u0004\u0012\u00020\\0[2\n\u0010`\u001a\u00060^j\u0002`_2\u0006\u0010a\u001a\u00020&H\u0002¢\u0006\u0004\bb\u0010cJ\u0017\u0010d\u001a\u000208*\u0006\u0012\u0002\b\u00030\u0019H\u0002¢\u0006\u0004\bd\u0010eJ\u001d\u0010C\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0019*\u0006\u0012\u0002\b\u00030\u0004H\u0002¢\u0006\u0004\bC\u0010fJ\u001a\u0010C\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0019*\u00020UH\u0082\u0010¢\u0006\u0004\bC\u0010gJ\u0016\u0010h\u001a\u0004\u0018\u00010U*\u00020UH\u0082\u0010¢\u0006\u0004\bh\u0010iJ\u001b\u0010j\u001a\u0004\u0018\u00010\u0006*\b\u0012\u0004\u0012\u00020\"0\u000fH\u0002¢\u0006\u0004\bj\u0010kJ\u0013\u0010l\u001a\u00020&*\u00020\u0014H\u0002¢\u0006\u0004\bl\u0010mR\u0014\u0010n\u001a\u00020&8\u0002X\u0082T¢\u0006\u0006\n\u0004\bn\u0010oR \u0010q\u001a\u000e\u0012\u0004\u0012\u00020U\u0012\u0004\u0012\u00020\\0p8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010rR\u001e\u0010v\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00190s8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bt\u0010uR$\u0010w\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0019\u0012\u0004\u0012\u0002080p8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010rR\u0014\u0010y\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010zR\u0014\u0010|\u001a\u00020{8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b|\u0010}R\"\u0010~\u001a\u0010\u0012\u0004\u0012\u000208\u0012\u0004\u0012\u00020\f\u0018\u0001078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010\u007fR)\u0010\u0080\u0001\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0019\u0010\u0086\u0001\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u0017\u0010\u0089\u0001\u001a\u0002088@X\u0080\u0004¢\u0006\b\u001a\u0006\b\u0088\u0001\u0010\u0083\u0001R)\u0010\u008a\u0001\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008a\u0001\u0010\u0081\u0001\u001a\u0006\b\u008b\u0001\u0010\u0083\u0001\"\u0006\b\u008c\u0001\u0010\u0085\u0001R\u001b\u0010\u008d\u0001\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\"\u0010\u0092\u0001\u001a\u00020&*\u00020;8BX\u0082\u0004¢\u0006\u000f\u0012\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0005\b\u008f\u0001\u0010>R\u001b\u0010\u0093\u0001\u001a\u000208*\u00020\"8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001¨\u0006\u0096\u0001"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "<init>", "()V", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "completion", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", TypedValues.AttributesType.S_FRAME, "createOwner", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/StackTraceFrame;)Lkotlin/coroutines/Continuation;", "Ljava/io/PrintStream;", "out", "", "dumpCoroutines", "(Ljava/io/PrintStream;)V", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;", "dumpCoroutinesInfo", "()Ljava/util/List;", "", "", "dumpCoroutinesInfoAsJsonAndReferences", "()[Ljava/lang/Object;", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "Lkotlin/coroutines/CoroutineContext;", "create", "dumpCoroutinesInfoImpl", "(Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "dumpCoroutinesSynchronized", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "dumpDebuggerInfo", "info", "Ljava/lang/StackTraceElement;", "coroutineTrace", "enhanceStackTraceWithThreadDump", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;Ljava/util/List;)Ljava/util/List;", "", "enhanceStackTraceWithThreadDumpAsJson", "(Lkotlinx/coroutines/debug/internal/DebugCoroutineInfo;)Ljava/lang/String;", ServerProtocol.DIALOG_PARAM_STATE, "Ljava/lang/Thread;", "thread", "enhanceStackTraceWithThreadDumpImpl", "(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;", "", "indexOfResumeWith", "actualTrace", "Lkotlin/Pair;", "findContinuationStartIndex", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;", "frameIndex", "findIndexOfFrame", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I", "Lkotlin/Function1;", "", "getDynamicAttach", "()Lkotlin/jvm/functions/Function1;", "Lkotlinx/coroutines/Job;", Contants.JOB, "hierarchyToString", "(Lkotlinx/coroutines/Job;)Ljava/lang/String;", "install", "frames", "printStackTrace", "(Ljava/io/PrintStream;Ljava/util/List;)V", "owner", "probeCoroutineCompleted", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)V", "probeCoroutineCreated$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "probeCoroutineCreated", "probeCoroutineResumed$kotlinx_coroutines_core", "(Lkotlin/coroutines/Continuation;)V", "probeCoroutineResumed", "probeCoroutineSuspended$kotlinx_coroutines_core", "probeCoroutineSuspended", "", "throwable", "sanitizeStackTrace", "(Ljava/lang/Throwable;)Ljava/util/List;", "startWeakRefCleanerThread", "stopWeakRefCleanerThread", "uninstall", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "updateRunningState", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V", "updateState", "(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "map", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "indent", "build", "(Lkotlinx/coroutines/Job;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V", "isFinished", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;)Z", "(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", "realCaller", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "toStackTraceFrame", "(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "toStringWithQuotes", "(Ljava/lang/Object;)Ljava/lang/String;", "ARTIFICIAL_FRAME_MESSAGE", "Ljava/lang/String;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "callerInfoCache", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", "", "getCapturedCoroutines", "()Ljava/util/Set;", "capturedCoroutines", "capturedCoroutinesMap", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "coroutineStateLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/text/SimpleDateFormat;", "dateFormat", "Ljava/text/SimpleDateFormat;", "dynamicAttach", "Lkotlin/jvm/functions/Function1;", "enableCreationStackTraces", "Z", "getEnableCreationStackTraces", "()Z", "setEnableCreationStackTraces", "(Z)V", "installations", "I", "isInstalled$kotlinx_coroutines_core", "isInstalled", "sanitizeStackTraces", "getSanitizeStackTraces", "setSanitizeStackTraces", "weakRefCleanerThread", "Ljava/lang/Thread;", "getDebugString", "getDebugString$annotations", "(Lkotlinx/coroutines/Job;)V", "debugString", "isInternalMethod", "(Ljava/lang/StackTraceElement;)Z", "CoroutineOwner", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class DebugProbesImpl {
    @NotNull
    private static final String ARTIFICIAL_FRAME_MESSAGE = "Coroutine creation stacktrace";
    @NotNull
    public static final DebugProbesImpl INSTANCE;
    @NotNull
    private static final ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> callerInfoCache;
    @NotNull
    private static final ConcurrentWeakMap<CoroutineOwner<?>, Boolean> capturedCoroutinesMap;
    @NotNull
    private static final ReentrantReadWriteLock coroutineStateLock;
    @NotNull
    private static final SimpleDateFormat dateFormat;
    @NotNull
    private static final /* synthetic */ SequenceNumberRefVolatile debugProbesImpl$SequenceNumberRefVolatile;
    @Nullable
    private static final Function1<Boolean, Unit> dynamicAttach;
    private static boolean enableCreationStackTraces;
    private static volatile int installations;
    private static boolean sanitizeStackTraces;
    private static final /* synthetic */ AtomicLongFieldUpdater sequenceNumber$FU;
    @Nullable
    private static Thread weakRefCleanerThread;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B%\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001e\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\rX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$CoroutineOwner;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "delegate", "info", "Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", TypedValues.AttributesType.S_FRAME, "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "resumeWith", "", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)V", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class CoroutineOwner<T> implements Continuation<T>, CoroutineStackFrame {
        @JvmField
        @NotNull
        public final Continuation<T> delegate;
        @Nullable
        private final CoroutineStackFrame frame;
        @JvmField
        @NotNull
        public final DebugCoroutineInfoImpl info;

        /* JADX WARN: Multi-variable type inference failed */
        public CoroutineOwner(@NotNull Continuation<? super T> continuation, @NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl, @Nullable CoroutineStackFrame coroutineStackFrame) {
            this.delegate = continuation;
            this.info = debugCoroutineInfoImpl;
            this.frame = coroutineStackFrame;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public CoroutineStackFrame getCallerFrame() {
            CoroutineStackFrame coroutineStackFrame = this.frame;
            if (coroutineStackFrame != null) {
                return coroutineStackFrame.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        public CoroutineContext getContext() {
            return this.delegate.getContext();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public StackTraceElement getStackTraceElement() {
            CoroutineStackFrame coroutineStackFrame = this.frame;
            if (coroutineStackFrame != null) {
                return coroutineStackFrame.getStackTraceElement();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object obj) {
            DebugProbesImpl.INSTANCE.probeCoroutineCompleted(this);
            this.delegate.resumeWith(obj);
        }

        @NotNull
        public String toString() {
            return this.delegate.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.debug.internal.DebugProbesImpl$SequenceNumberRefVolatile] */
    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        INSTANCE = debugProbesImpl;
        dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        capturedCoroutinesMap = new ConcurrentWeakMap<>(false, 1, null);
        debugProbesImpl$SequenceNumberRefVolatile = new Object(0L) { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl.SequenceNumberRefVolatile
            volatile long sequenceNumber;

            {
                this.sequenceNumber = r1;
            }
        };
        coroutineStateLock = new ReentrantReadWriteLock();
        sanitizeStackTraces = true;
        enableCreationStackTraces = true;
        dynamicAttach = debugProbesImpl.getDynamicAttach();
        callerInfoCache = new ConcurrentWeakMap<>(true);
        sequenceNumber$FU = AtomicLongFieldUpdater.newUpdater(SequenceNumberRefVolatile.class, "sequenceNumber");
    }

    private DebugProbesImpl() {
    }

    private final void build(Job job, Map<Job, DebugCoroutineInfoImpl> map, StringBuilder sb2, String str) {
        Object firstOrNull;
        DebugCoroutineInfoImpl debugCoroutineInfoImpl = map.get(job);
        if (debugCoroutineInfoImpl == null) {
            if (!(job instanceof ScopeCoroutine)) {
                sb2.append(str + getDebugString(job) + '\n');
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append('\t');
                str = sb3.toString();
            }
        } else {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) debugCoroutineInfoImpl.lastObservedStackTrace());
            String state = debugCoroutineInfoImpl.getState();
            sb2.append(str + getDebugString(job) + ", continuation is " + state + " at line " + ((StackTraceElement) firstOrNull) + '\n');
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append('\t');
            str = sb4.toString();
        }
        for (Job job2 : job.getChildren()) {
            build(job2, map, sb2, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> Continuation<T> createOwner(Continuation<? super T> continuation, StackTraceFrame stackTraceFrame) {
        if (isInstalled$kotlinx_coroutines_core()) {
            CoroutineOwner<?> coroutineOwner = new CoroutineOwner<>(continuation, new DebugCoroutineInfoImpl(continuation.getContext(), stackTraceFrame, sequenceNumber$FU.incrementAndGet(debugProbesImpl$SequenceNumberRefVolatile)), stackTraceFrame);
            ConcurrentWeakMap<CoroutineOwner<?>, Boolean> concurrentWeakMap = capturedCoroutinesMap;
            concurrentWeakMap.put(coroutineOwner, Boolean.TRUE);
            if (!isInstalled$kotlinx_coroutines_core()) {
                concurrentWeakMap.clear();
            }
            return coroutineOwner;
        }
        return continuation;
    }

    private final <R> List<R> dumpCoroutinesInfoImpl(final Function2<? super CoroutineOwner<?>, ? super CoroutineContext, ? extends R> function2) {
        Sequence asSequence;
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i9 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i10 = 0; i10 < readHoldCount; i10++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.getCapturedCoroutines());
                return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(asSequence, new DebugProbesImpl$dumpCoroutinesInfoImpl$lambda12$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, R>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfoImpl$1$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final R invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                        boolean isFinished;
                        CoroutineContext context;
                        isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner);
                        if (isFinished || (context = coroutineOwner.info.getContext()) == null) {
                            return null;
                        }
                        return function2.mo1invoke(coroutineOwner, context);
                    }
                }));
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            InlineMarker.finallyStart(1);
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
            InlineMarker.finallyEnd(1);
        }
    }

    private final void dumpCoroutinesSynchronized(PrintStream printStream) {
        Sequence asSequence;
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i9 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i10 = 0; i10 < readHoldCount; i10++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                printStream.print("Coroutines dump " + dateFormat.format(Long.valueOf(System.currentTimeMillis())));
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.getCapturedCoroutines());
                for (CoroutineOwner coroutineOwner : SequencesKt.sortedWith(SequencesKt.filter(asSequence, new Function1<CoroutineOwner<?>, Boolean>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$1$2
                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner2) {
                        boolean isFinished;
                        isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner2);
                        return Boolean.valueOf(!isFinished);
                    }
                }), new Comparator() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$lambda-19$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(T t10, T t11) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((DebugProbesImpl.CoroutineOwner) t10).info.sequenceNumber), Long.valueOf(((DebugProbesImpl.CoroutineOwner) t11).info.sequenceNumber));
                        return compareValues;
                    }
                })) {
                    DebugCoroutineInfoImpl debugCoroutineInfoImpl = coroutineOwner.info;
                    List<StackTraceElement> lastObservedStackTrace = debugCoroutineInfoImpl.lastObservedStackTrace();
                    DebugProbesImpl debugProbesImpl2 = INSTANCE;
                    List<StackTraceElement> enhanceStackTraceWithThreadDumpImpl = debugProbesImpl2.enhanceStackTraceWithThreadDumpImpl(debugCoroutineInfoImpl.getState(), debugCoroutineInfoImpl.lastObservedThread, lastObservedStackTrace);
                    printStream.print("\n\nCoroutine " + coroutineOwner.delegate + ", state: " + ((Intrinsics.areEqual(debugCoroutineInfoImpl.getState(), DebugCoroutineInfoImplKt.RUNNING) && enhanceStackTraceWithThreadDumpImpl == lastObservedStackTrace) ? debugCoroutineInfoImpl.getState() + " (Last suspension stacktrace, not an actual stacktrace)" : debugCoroutineInfoImpl.getState()));
                    if (lastObservedStackTrace.isEmpty()) {
                        printStream.print("\n\tat " + StackTraceRecoveryKt.artificialFrame(ARTIFICIAL_FRAME_MESSAGE));
                        debugProbesImpl2.printStackTrace(printStream, debugCoroutineInfoImpl.getCreationStackTrace());
                    } else {
                        debugProbesImpl2.printStackTrace(printStream, enhanceStackTraceWithThreadDumpImpl);
                    }
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
        }
    }

    private final List<StackTraceElement> enhanceStackTraceWithThreadDumpImpl(String str, Thread thread, List<StackTraceElement> list) {
        Object m1657constructorimpl;
        if (!Intrinsics.areEqual(str, DebugCoroutineInfoImplKt.RUNNING) || thread == null) {
            return list;
        }
        try {
            Result.Companion companion = Result.Companion;
            m1657constructorimpl = Result.m1657constructorimpl(thread.getStackTrace());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m1657constructorimpl = Result.m1657constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m1663isFailureimpl(m1657constructorimpl)) {
            m1657constructorimpl = null;
        }
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m1657constructorimpl;
        if (stackTraceElementArr == null) {
            return list;
        }
        int length = stackTraceElementArr.length;
        int i9 = 0;
        while (true) {
            if (i9 >= length) {
                i9 = -1;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i9];
            if (Intrinsics.areEqual(stackTraceElement.getClassName(), "kotlin.coroutines.jvm.internal.BaseContinuationImpl") && Intrinsics.areEqual(stackTraceElement.getMethodName(), "resumeWith") && Intrinsics.areEqual(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                break;
            }
            i9++;
        }
        Pair<Integer, Integer> findContinuationStartIndex = findContinuationStartIndex(i9, stackTraceElementArr, list);
        int intValue = findContinuationStartIndex.component1().intValue();
        int intValue2 = findContinuationStartIndex.component2().intValue();
        if (intValue == -1) {
            return list;
        }
        ArrayList arrayList = new ArrayList((((list.size() + i9) - intValue) - 1) - intValue2);
        int i10 = i9 - intValue2;
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(stackTraceElementArr[i11]);
        }
        int size = list.size();
        for (int i12 = intValue + 1; i12 < size; i12++) {
            arrayList.add(list.get(i12));
        }
        return arrayList;
    }

    private final Pair<Integer, Integer> findContinuationStartIndex(int i9, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        for (int i10 = 0; i10 < 3; i10++) {
            int findIndexOfFrame = INSTANCE.findIndexOfFrame((i9 - 1) - i10, stackTraceElementArr, list);
            if (findIndexOfFrame != -1) {
                return TuplesKt.to(Integer.valueOf(findIndexOfFrame), Integer.valueOf(i10));
            }
        }
        return TuplesKt.to(-1, 0);
    }

    private final int findIndexOfFrame(int i9, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt.getOrNull(stackTraceElementArr, i9);
        if (stackTraceElement == null) {
            return -1;
        }
        int i10 = 0;
        for (StackTraceElement stackTraceElement2 : list) {
            if (Intrinsics.areEqual(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && Intrinsics.areEqual(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && Intrinsics.areEqual(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    private final Set<CoroutineOwner<?>> getCapturedCoroutines() {
        return capturedCoroutinesMap.keySet();
    }

    private final String getDebugString(Job job) {
        return job instanceof JobSupport ? ((JobSupport) job).toDebugString() : job.toString();
    }

    private static /* synthetic */ void getDebugString$annotations(Job job) {
    }

    private final Function1<Boolean, Unit> getDynamicAttach() {
        Object m1657constructorimpl;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m1657constructorimpl = Result.m1657constructorimpl(ResultKt.createFailure(th2));
        }
        if (newInstance != null) {
            m1657constructorimpl = Result.m1657constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(newInstance, 1));
            if (Result.m1663isFailureimpl(m1657constructorimpl)) {
                m1657constructorimpl = null;
            }
            return (Function1) m1657constructorimpl;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isFinished(CoroutineOwner<?> coroutineOwner) {
        Job job;
        CoroutineContext context = coroutineOwner.info.getContext();
        if (context == null || (job = (Job) context.get(Job.Key)) == null || !job.isCompleted()) {
            return false;
        }
        capturedCoroutinesMap.remove(coroutineOwner);
        return true;
    }

    private final boolean isInternalMethod(StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, null);
        return startsWith$default;
    }

    private final CoroutineOwner<?> owner(Continuation<?> continuation) {
        CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
        if (coroutineStackFrame != null) {
            return owner(coroutineStackFrame);
        }
        return null;
    }

    private final void printStackTrace(PrintStream printStream, List<StackTraceElement> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            printStream.print("\n\tat " + ((StackTraceElement) it.next()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void probeCoroutineCompleted(CoroutineOwner<?> coroutineOwner) {
        CoroutineStackFrame realCaller;
        capturedCoroutinesMap.remove(coroutineOwner);
        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = coroutineOwner.info.getLastObservedFrame$kotlinx_coroutines_core();
        if (lastObservedFrame$kotlinx_coroutines_core == null || (realCaller = realCaller(lastObservedFrame$kotlinx_coroutines_core)) == null) {
            return;
        }
        callerInfoCache.remove(realCaller);
    }

    private final CoroutineStackFrame realCaller(CoroutineStackFrame coroutineStackFrame) {
        do {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        } while (coroutineStackFrame.getStackTraceElement() == null);
        return coroutineStackFrame;
    }

    private final <T extends Throwable> List<StackTraceElement> sanitizeStackTrace(T t10) {
        StackTraceElement[] stackTrace = t10.getStackTrace();
        int length = stackTrace.length;
        int i9 = -1;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i10 = length2 - 1;
                if (Intrinsics.areEqual(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                    i9 = length2;
                    break;
                } else if (i10 < 0) {
                    break;
                } else {
                    length2 = i10;
                }
            }
        }
        if (!sanitizeStackTraces) {
            int i11 = length - i9;
            ArrayList arrayList = new ArrayList(i11);
            int i12 = 0;
            while (i12 < i11) {
                arrayList.add(i12 == 0 ? StackTraceRecoveryKt.artificialFrame(ARTIFICIAL_FRAME_MESSAGE) : stackTrace[i12 + i9]);
                i12++;
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i9) + 1);
        arrayList2.add(StackTraceRecoveryKt.artificialFrame(ARTIFICIAL_FRAME_MESSAGE));
        while (true) {
            i9++;
            while (i9 < length) {
                if (isInternalMethod(stackTrace[i9])) {
                    arrayList2.add(stackTrace[i9]);
                    int i13 = i9 + 1;
                    while (i13 < length && isInternalMethod(stackTrace[i13])) {
                        i13++;
                    }
                    int i14 = i13 - 1;
                    int i15 = i14;
                    while (i15 > i9 && stackTrace[i15].getFileName() == null) {
                        i15--;
                    }
                    if (i15 > i9 && i15 < i14) {
                        arrayList2.add(stackTrace[i15]);
                    }
                    arrayList2.add(stackTrace[i14]);
                    i9 = i13;
                }
            }
            return arrayList2;
            arrayList2.add(stackTrace[i9]);
        }
    }

    private final void startWeakRefCleanerThread() {
        Thread thread;
        thread = ThreadsKt.thread((r12 & 1) != 0, (r12 & 2) != 0 ? false : true, (r12 & 4) != 0 ? null : null, (r12 & 8) != 0 ? null : "Coroutines Debugger Cleaner", (r12 & 16) != 0 ? -1 : 0, new Function0<Unit>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$startWeakRefCleanerThread$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ConcurrentWeakMap concurrentWeakMap;
                concurrentWeakMap = DebugProbesImpl.callerInfoCache;
                concurrentWeakMap.runWeakRefQueueCleaningLoopUntilInterrupted();
            }
        });
        weakRefCleanerThread = thread;
    }

    private final void stopWeakRefCleanerThread() {
        Thread thread = weakRefCleanerThread;
        if (thread == null) {
            return;
        }
        weakRefCleanerThread = null;
        thread.interrupt();
        thread.join();
    }

    private final StackTraceFrame toStackTraceFrame(List<StackTraceElement> list) {
        StackTraceFrame stackTraceFrame = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                stackTraceFrame = new StackTraceFrame(stackTraceFrame, listIterator.previous());
            }
        }
        return stackTraceFrame;
    }

    private final String toStringWithQuotes(Object obj) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Typography.quote);
        sb2.append(obj);
        sb2.append(Typography.quote);
        return sb2.toString();
    }

    private final void updateRunningState(CoroutineStackFrame coroutineStackFrame, String str) {
        ReentrantReadWriteLock.ReadLock readLock = coroutineStateLock.readLock();
        readLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> concurrentWeakMap = callerInfoCache;
                DebugCoroutineInfoImpl remove = concurrentWeakMap.remove(coroutineStackFrame);
                if (remove == null) {
                    CoroutineOwner<?> owner = debugProbesImpl.owner(coroutineStackFrame);
                    if (owner != null && (remove = owner.info) != null) {
                        CoroutineStackFrame lastObservedFrame$kotlinx_coroutines_core = remove.getLastObservedFrame$kotlinx_coroutines_core();
                        CoroutineStackFrame realCaller = lastObservedFrame$kotlinx_coroutines_core != null ? debugProbesImpl.realCaller(lastObservedFrame$kotlinx_coroutines_core) : null;
                        if (realCaller != null) {
                            concurrentWeakMap.remove(realCaller);
                        }
                    }
                    return;
                }
                remove.updateState$kotlinx_coroutines_core(str, (Continuation) coroutineStackFrame);
                CoroutineStackFrame realCaller2 = debugProbesImpl.realCaller(coroutineStackFrame);
                if (realCaller2 == null) {
                    return;
                }
                concurrentWeakMap.put(realCaller2, remove);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            readLock.unlock();
        }
    }

    private final void updateState(Continuation<?> continuation, String str) {
        if (isInstalled$kotlinx_coroutines_core()) {
            if (Intrinsics.areEqual(str, DebugCoroutineInfoImplKt.RUNNING) && KotlinVersion.CURRENT.isAtLeast(1, 3, 30)) {
                CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
                if (coroutineStackFrame == null) {
                    return;
                }
                updateRunningState(coroutineStackFrame, str);
                return;
            }
            CoroutineOwner<?> owner = owner(continuation);
            if (owner == null) {
                return;
            }
            updateState(owner, continuation, str);
        }
    }

    public final void dumpCoroutines(@NotNull PrintStream printStream) {
        synchronized (printStream) {
            INSTANCE.dumpCoroutinesSynchronized(printStream);
            Unit unit = Unit.INSTANCE;
        }
    }

    @NotNull
    public final List<DebugCoroutineInfo> dumpCoroutinesInfo() {
        Sequence asSequence;
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i9 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i10 = 0; i10 < readHoldCount; i10++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.getCapturedCoroutines());
                return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(asSequence, new DebugProbesImpl$dumpCoroutinesInfoImpl$lambda12$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebugCoroutineInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1
                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final DebugCoroutineInfo invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                        boolean isFinished;
                        CoroutineContext context;
                        isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner);
                        if (isFinished || (context = coroutineOwner.info.getContext()) == null) {
                            return null;
                        }
                        return new DebugCoroutineInfo(coroutineOwner.info, context);
                    }
                }));
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
        }
    }

    @NotNull
    public final Object[] dumpCoroutinesInfoAsJsonAndReferences() {
        String joinToString$default;
        String trimIndent;
        String name;
        List<DebugCoroutineInfo> dumpCoroutinesInfo = dumpCoroutinesInfo();
        int size = dumpCoroutinesInfo.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (DebugCoroutineInfo debugCoroutineInfo : dumpCoroutinesInfo) {
            CoroutineContext context = debugCoroutineInfo.getContext();
            CoroutineName coroutineName = (CoroutineName) context.get(CoroutineName.Key);
            Long l10 = null;
            String stringWithQuotes = (coroutineName == null || (name = coroutineName.getName()) == null) ? null : toStringWithQuotes(name);
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) context.get(CoroutineDispatcher.Key);
            String stringWithQuotes2 = coroutineDispatcher != null ? toStringWithQuotes(coroutineDispatcher) : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n                {\n                    \"name\": ");
            sb2.append(stringWithQuotes);
            sb2.append(",\n                    \"id\": ");
            CoroutineId coroutineId = (CoroutineId) context.get(CoroutineId.Key);
            if (coroutineId != null) {
                l10 = Long.valueOf(coroutineId.getId());
            }
            sb2.append(l10);
            sb2.append(",\n                    \"dispatcher\": ");
            sb2.append(stringWithQuotes2);
            sb2.append(",\n                    \"sequenceNumber\": ");
            sb2.append(debugCoroutineInfo.getSequenceNumber());
            sb2.append(",\n                    \"state\": \"");
            sb2.append(debugCoroutineInfo.getState());
            sb2.append("\"\n                } \n                ");
            trimIndent = StringsKt__IndentKt.trimIndent(sb2.toString());
            arrayList3.add(trimIndent);
            arrayList2.add(debugCoroutineInfo.getLastObservedFrame());
            arrayList.add(debugCoroutineInfo.getLastObservedThread());
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList3, null, null, null, 0, null, null, 63, null);
        sb3.append(joinToString$default);
        sb3.append(']');
        Object[] array = arrayList.toArray(new Thread[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        Object[] array2 = arrayList2.toArray(new CoroutineStackFrame[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        Object[] array3 = dumpCoroutinesInfo.toArray(new DebugCoroutineInfo[0]);
        Objects.requireNonNull(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return new Object[]{sb3.toString(), array, array2, array3};
    }

    @NotNull
    public final List<DebuggerInfo> dumpDebuggerInfo() {
        Sequence asSequence;
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i9 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i10 = 0; i10 < readHoldCount; i10++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.getCapturedCoroutines());
                return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(asSequence, new DebugProbesImpl$dumpCoroutinesInfoImpl$lambda12$$inlined$sortedBy$1()), new Function1<CoroutineOwner<?>, DebuggerInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1
                    @Override // kotlin.jvm.functions.Function1
                    @Nullable
                    public final DebuggerInfo invoke(@NotNull DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
                        boolean isFinished;
                        CoroutineContext context;
                        isFinished = DebugProbesImpl.INSTANCE.isFinished(coroutineOwner);
                        if (isFinished || (context = coroutineOwner.info.getContext()) == null) {
                            return null;
                        }
                        return new DebuggerInfo(coroutineOwner.info, context);
                    }
                }));
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
        }
    }

    @NotNull
    public final List<StackTraceElement> enhanceStackTraceWithThreadDump(@NotNull DebugCoroutineInfo debugCoroutineInfo, @NotNull List<StackTraceElement> list) {
        return enhanceStackTraceWithThreadDumpImpl(debugCoroutineInfo.getState(), debugCoroutineInfo.getLastObservedThread(), list);
    }

    @NotNull
    public final String enhanceStackTraceWithThreadDumpAsJson(@NotNull DebugCoroutineInfo debugCoroutineInfo) {
        String joinToString$default;
        String trimIndent;
        List<StackTraceElement> enhanceStackTraceWithThreadDump = enhanceStackTraceWithThreadDump(debugCoroutineInfo, debugCoroutineInfo.lastObservedStackTrace());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : enhanceStackTraceWithThreadDump) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n                {\n                    \"declaringClass\": \"");
            sb2.append(stackTraceElement.getClassName());
            sb2.append("\",\n                    \"methodName\": \"");
            sb2.append(stackTraceElement.getMethodName());
            sb2.append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            sb2.append(fileName != null ? toStringWithQuotes(fileName) : null);
            sb2.append(",\n                    \"lineNumber\": ");
            sb2.append(stackTraceElement.getLineNumber());
            sb2.append("\n                }\n                ");
            trimIndent = StringsKt__IndentKt.trimIndent(sb2.toString());
            arrayList.add(trimIndent);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null);
        sb3.append(joinToString$default);
        sb3.append(']');
        return sb3.toString();
    }

    public final boolean getEnableCreationStackTraces() {
        return enableCreationStackTraces;
    }

    public final boolean getSanitizeStackTraces() {
        return sanitizeStackTraces;
    }

    @NotNull
    public final String hierarchyToString(@NotNull Job job) {
        int collectionSizeOrDefault;
        int coerceAtLeast;
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i9 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i10 = 0; i10 < readHoldCount; i10++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                Set<CoroutineOwner<?>> capturedCoroutines = debugProbesImpl.getCapturedCoroutines();
                ArrayList arrayList = new ArrayList();
                for (Object obj : capturedCoroutines) {
                    if (((CoroutineOwner) obj).delegate.getContext().get(Job.Key) != null) {
                        arrayList.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(MapsKt.mapCapacity(collectionSizeOrDefault), 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj2 : arrayList) {
                    linkedHashMap.put(JobKt.getJob(((CoroutineOwner) obj2).delegate.getContext()), ((CoroutineOwner) obj2).info);
                }
                StringBuilder sb2 = new StringBuilder();
                INSTANCE.build(job, linkedHashMap, sb2, "");
                String sb3 = sb2.toString();
                Intrinsics.checkNotNullExpressionValue(sb3, "StringBuilder().apply(builderAction).toString()");
                return sb3;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
        }
    }

    public final void install() {
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i9 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i10 = 0; i10 < readHoldCount; i10++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            installations++;
            if (installations > 1) {
                return;
            }
            debugProbesImpl.startWeakRefCleanerThread();
            if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core()) {
                while (i9 < readHoldCount) {
                    readLock.lock();
                    i9++;
                }
                writeLock.unlock();
                return;
            }
            Function1<Boolean, Unit> function1 = dynamicAttach;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            Unit unit = Unit.INSTANCE;
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
        } finally {
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
        }
    }

    public final boolean isInstalled$kotlinx_coroutines_core() {
        return installations > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final <T> Continuation<T> probeCoroutineCreated$kotlinx_coroutines_core(@NotNull Continuation<? super T> continuation) {
        if (isInstalled$kotlinx_coroutines_core() && owner(continuation) == null) {
            return createOwner(continuation, enableCreationStackTraces ? toStackTraceFrame(sanitizeStackTrace(new Exception())) : null);
        }
        return continuation;
    }

    public final void probeCoroutineResumed$kotlinx_coroutines_core(@NotNull Continuation<?> continuation) {
        updateState(continuation, DebugCoroutineInfoImplKt.RUNNING);
    }

    public final void probeCoroutineSuspended$kotlinx_coroutines_core(@NotNull Continuation<?> continuation) {
        updateState(continuation, DebugCoroutineInfoImplKt.SUSPENDED);
    }

    public final void setEnableCreationStackTraces(boolean z10) {
        enableCreationStackTraces = z10;
    }

    public final void setSanitizeStackTraces(boolean z10) {
        sanitizeStackTraces = z10;
    }

    public final void uninstall() {
        ReentrantReadWriteLock reentrantReadWriteLock = coroutineStateLock;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i9 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        for (int i10 = 0; i10 < readHoldCount; i10++) {
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = INSTANCE;
            if (debugProbesImpl.isInstalled$kotlinx_coroutines_core()) {
                installations--;
                if (installations != 0) {
                    return;
                }
                debugProbesImpl.stopWeakRefCleanerThread();
                capturedCoroutinesMap.clear();
                callerInfoCache.clear();
                if (AgentInstallationType.INSTANCE.isInstalledStatically$kotlinx_coroutines_core()) {
                    while (i9 < readHoldCount) {
                        readLock.lock();
                        i9++;
                    }
                    writeLock.unlock();
                    return;
                }
                Function1<Boolean, Unit> function1 = dynamicAttach;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
                Unit unit = Unit.INSTANCE;
                while (i9 < readHoldCount) {
                    readLock.lock();
                    i9++;
                }
                writeLock.unlock();
                return;
            }
            throw new IllegalStateException("Agent was not installed".toString());
        } finally {
            while (i9 < readHoldCount) {
                readLock.lock();
                i9++;
            }
            writeLock.unlock();
        }
    }

    private final CoroutineOwner<?> owner(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof CoroutineOwner)) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        }
        return (CoroutineOwner) coroutineStackFrame;
    }

    private final void updateState(CoroutineOwner<?> coroutineOwner, Continuation<?> continuation, String str) {
        ReentrantReadWriteLock.ReadLock readLock = coroutineStateLock.readLock();
        readLock.lock();
        try {
            if (INSTANCE.isInstalled$kotlinx_coroutines_core()) {
                coroutineOwner.info.updateState$kotlinx_coroutines_core(str, continuation);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            readLock.unlock();
        }
    }
}
