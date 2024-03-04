package com.guochao.faceshow.aaspring.base.mvvm.coroutine;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.NonCancellable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J@\u0010\u0010\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010\u0017\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010\u0018\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010\u0019\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010\u001a\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010\u001b\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J9\u0010\u001c\u001a\u00020\u001d2'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ9\u0010 \u001a\u00020\u001d2'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ9\u0010!\u001a\u00020\u001d2'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ9\u0010\"\u001a\u00020\u001d2'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ9\u0010#\u001a\u00020\u001d2'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ9\u0010$\u001a\u00020\u001d2'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0016ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ@\u0010%\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010&\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010'\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J@\u0010(\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016JD\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u00110)\"\u0004\b\u0000\u0010\u0011*\u00020\u00072'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0002ø\u0001\u0000JD\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00110)\"\u0004\b\u0000\u0010\u0011*\u00020\u00072'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0002ø\u0001\u0000JD\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00110)\"\u0004\b\u0000\u0010\u0011*\u00020\u00072'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00110\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0002ø\u0001\u0000J8\u0010\u001c\u001a\u00020\u001d*\u00020\u00072'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0002ø\u0001\u0000J8\u0010!\u001a\u00020\u001d*\u00020\u00072'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0002ø\u0001\u0000J8\u0010#\u001a\u00020\u001d*\u00020\u00072'\u0010\u0012\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013¢\u0006\u0002\b\u0015H\u0002ø\u0001\u0000R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0005R\u0012\u0010\f\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/mvvm/coroutine/ICoroutineEvent;", "", "cpuDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getCpuDispatcher", "()Lkotlinx/coroutines/CoroutineDispatcher;", "globalScope", "Lkotlinx/coroutines/CoroutineScope;", "getGlobalScope", "()Lkotlinx/coroutines/CoroutineScope;", "ioDispatcher", "getIoDispatcher", "lifecycleSupportedScope", "getLifecycleSupportedScope", "mainDispatcher", "getMainDispatcher", "asyncCPU", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "asyncCPUG", "asyncIO", "asyncIOG", "asyncMain", "asyncMainG", "launchCPU", "Lkotlinx/coroutines/Job;", "", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;", "launchCPUG", "launchIO", "launchIOG", "launchMain", "launchMainG", "withCPU", "withIO", "withMain", "withNonCancellable", "Lkotlinx/coroutines/Deferred;", "lib_base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface ICoroutineEvent {

    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @Nullable
        public static <T> Object asyncCPU(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getLifecycleSupportedScope().getCoroutineContext().plus(iCoroutineEvent.getCpuDispatcher()), function2, continuation);
        }

        @Nullable
        public static <T> Object asyncCPUG(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getGlobalScope().getCoroutineContext().plus(iCoroutineEvent.getCpuDispatcher()), function2, continuation);
        }

        @Nullable
        public static <T> Object asyncIO(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getLifecycleSupportedScope().getCoroutineContext().plus(iCoroutineEvent.getIoDispatcher()), function2, continuation);
        }

        @Nullable
        public static <T> Object asyncIOG(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getGlobalScope().getCoroutineContext().plus(iCoroutineEvent.getIoDispatcher()), function2, continuation);
        }

        @Nullable
        public static <T> Object asyncMain(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getLifecycleSupportedScope().getCoroutineContext().plus(iCoroutineEvent.getMainDispatcher()), function2, continuation);
        }

        @Nullable
        public static <T> Object asyncMainG(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getGlobalScope().getCoroutineContext().plus(iCoroutineEvent.getMainDispatcher()), function2, continuation);
        }

        @NotNull
        public static CoroutineDispatcher getCpuDispatcher(@NotNull ICoroutineEvent iCoroutineEvent) {
            return Dispatchers.getDefault();
        }

        @NotNull
        public static CoroutineScope getGlobalScope(@NotNull ICoroutineEvent iCoroutineEvent) {
            return GlobalScope.INSTANCE;
        }

        @NotNull
        public static CoroutineDispatcher getIoDispatcher(@NotNull ICoroutineEvent iCoroutineEvent) {
            return Dispatchers.getIO();
        }

        @NotNull
        public static CoroutineDispatcher getMainDispatcher(@NotNull ICoroutineEvent iCoroutineEvent) {
            return Dispatchers.getMain();
        }

        @NotNull
        public static Job launchCPU(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return BuildersKt.launch$default(iCoroutineEvent.getLifecycleSupportedScope(), iCoroutineEvent.getCpuDispatcher(), null, block, 2, null);
        }

        @NotNull
        public static Job launchCPUG(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return BuildersKt.launch$default(iCoroutineEvent.getGlobalScope(), iCoroutineEvent.getCpuDispatcher(), null, block, 2, null);
        }

        @NotNull
        public static Job launchIO(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return BuildersKt.launch$default(iCoroutineEvent.getLifecycleSupportedScope(), iCoroutineEvent.getIoDispatcher(), null, block, 2, null);
        }

        @NotNull
        public static Job launchIOG(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return BuildersKt.launch$default(iCoroutineEvent.getGlobalScope(), iCoroutineEvent.getIoDispatcher(), null, block, 2, null);
        }

        @NotNull
        public static Job launchMain(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return BuildersKt.launch$default(iCoroutineEvent.getLifecycleSupportedScope(), iCoroutineEvent.getMainDispatcher(), null, block, 2, null);
        }

        @NotNull
        public static Job launchMainG(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return BuildersKt.launch$default(iCoroutineEvent.getGlobalScope(), iCoroutineEvent.getMainDispatcher(), null, block, 2, null);
        }

        @Nullable
        public static <T> Object withCPU(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getCpuDispatcher(), function2, continuation);
        }

        @Nullable
        public static <T> Object withIO(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getIoDispatcher(), function2, continuation);
        }

        @Nullable
        public static <T> Object withMain(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(iCoroutineEvent.getMainDispatcher(), function2, continuation);
        }

        @Nullable
        public static <T> Object withNonCancellable(@NotNull ICoroutineEvent iCoroutineEvent, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
            return BuildersKt.withContext(NonCancellable.INSTANCE, function2, continuation);
        }

        private static Job launchCPU(ICoroutineEvent iCoroutineEvent, CoroutineScope coroutineScope, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
            return BuildersKt.launch$default(coroutineScope, iCoroutineEvent.getCpuDispatcher(), null, function2, 2, null);
        }

        private static Job launchIO(ICoroutineEvent iCoroutineEvent, CoroutineScope coroutineScope, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
            return BuildersKt.launch$default(coroutineScope, iCoroutineEvent.getIoDispatcher(), null, function2, 2, null);
        }

        private static Job launchMain(ICoroutineEvent iCoroutineEvent, CoroutineScope coroutineScope, Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
            return BuildersKt.launch$default(coroutineScope, iCoroutineEvent.getMainDispatcher(), null, function2, 2, null);
        }

        private static <T> Deferred<T> asyncCPU(ICoroutineEvent iCoroutineEvent, CoroutineScope coroutineScope, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
            return BuildersKt.async$default(coroutineScope, iCoroutineEvent.getCpuDispatcher(), null, function2, 2, null);
        }

        private static <T> Deferred<T> asyncIO(ICoroutineEvent iCoroutineEvent, CoroutineScope coroutineScope, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
            return BuildersKt.async$default(coroutineScope, iCoroutineEvent.getIoDispatcher(), null, function2, 2, null);
        }

        private static <T> Deferred<T> asyncMain(ICoroutineEvent iCoroutineEvent, CoroutineScope coroutineScope, Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
            return BuildersKt.async$default(coroutineScope, iCoroutineEvent.getMainDispatcher(), null, function2, 2, null);
        }
    }

    @Nullable
    <T> Object asyncCPU(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object asyncCPUG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object asyncIO(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object asyncIOG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object asyncMain(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object asyncMainG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @NotNull
    CoroutineDispatcher getCpuDispatcher();

    @NotNull
    CoroutineScope getGlobalScope();

    @NotNull
    CoroutineDispatcher getIoDispatcher();

    @NotNull
    CoroutineScope getLifecycleSupportedScope();

    @NotNull
    CoroutineDispatcher getMainDispatcher();

    @NotNull
    Job launchCPU(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2);

    @NotNull
    Job launchCPUG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2);

    @NotNull
    Job launchIO(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2);

    @NotNull
    Job launchIOG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2);

    @NotNull
    Job launchMain(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2);

    @NotNull
    Job launchMainG(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2);

    @Nullable
    <T> Object withCPU(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object withIO(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object withMain(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);

    @Nullable
    <T> Object withNonCancellable(@NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation);
}
