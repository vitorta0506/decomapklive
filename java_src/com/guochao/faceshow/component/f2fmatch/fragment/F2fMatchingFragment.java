package com.guochao.faceshow.component.f2fmatch.fragment;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.Key;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.guochao.faceshow.aaspring.base.mvvm.annotations.GCViewBinding;
import com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.component.f2fmatch.R$mipmap;
import com.guochao.faceshow.component.f2fmatch.R$raw;
import com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity;
import com.guochao.faceshow.component.f2fmatch.databinding.FragmentF2fMatchingBinding;
import com.guochao.faceshow.component.f2fmatch.model.F2fMatchModel;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer;
import com.guochao.faceshow.component.f2fmatch.proxy.F2fProxy;
import com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel;
import com.guochao.faceshow.context.GCApplication;
import com.guochao.faceshow.utils.DensityUtil;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u0016H\u0002J\u0012\u0010\u001c\u001a\u00020\u00162\b\u0010\u001d\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u001f\u001a\u00020\u00162\b\u0010\u001d\u001a\u0004\u0018\u00010 R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.¢\u0006\u0014\n\u0000\u0012\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00038VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012¨\u0006\""}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment;", "Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCBaseMvvmFragment;", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel;", "Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "()V", "matching", "", "randomTip", "Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;", "viewBinding", "Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;", "getViewBinding$annotations", "getViewBinding", "()Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;", "setViewBinding", "(Lcom/guochao/faceshow/component/f2fmatch/databinding/FragmentF2fMatchingBinding;)V", "viewModel", "getViewModel", "()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "initView", "", "root", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "loadRandomTips", "onModelUpdate", DeviceRequestsHelper.DEVICE_INFO_MODEL, "showMatching", "showWaitingMatchRoomInfo", "Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;", "RandomTip", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class F2fMatchingFragment extends GCBaseMvvmFragment<F2fMatchModel, F2fMatchViewModel> {
    private boolean matching;
    @Nullable
    private RandomTip randomTip;
    public FragmentF2fMatchingBinding viewBinding;
    @NotNull
    private final Lazy viewModel$delegate;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\n\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/guochao/faceshow/component/f2fmatch/fragment/F2fMatchingFragment$RandomTip;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "textView", "Landroid/widget/TextView;", "array", "", "", "(Lkotlinx/coroutines/CoroutineScope;Landroid/widget/TextView;[Ljava/lang/Integer;)V", "index", "matching", "", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "getTextView", "()Landroid/widget/TextView;", "cancel", "", "component_f2f_match_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class RandomTip {
        private int index;
        private boolean matching;
        @NotNull
        private final CoroutineScope scope;
        @NotNull
        private final TextView textView;

        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip$1", f = "F2fMatchingFragment.kt", i = {}, l = {164}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip$1  reason: invalid class name */
        /* loaded from: classes2.dex */
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Integer[] $array;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX INFO: Access modifiers changed from: package-private */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/FlowCollector;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip$1$1", f = "F2fMatchingFragment.kt", i = {0, 1}, l = {156, 161}, m = "invokeSuspend", n = {"$this$flow", "$this$flow"}, s = {"L$0", "L$0"})
            /* renamed from: com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C02451 extends SuspendLambda implements Function2<FlowCollector<? super Integer>, Continuation<? super Unit>, Object> {
                final /* synthetic */ CoroutineScope $$this$launch;
                final /* synthetic */ Integer[] $array;
                private /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ RandomTip this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C02451(CoroutineScope coroutineScope, RandomTip randomTip, Integer[] numArr, Continuation<? super C02451> continuation) {
                    super(2, continuation);
                    this.$$this$launch = coroutineScope;
                    this.this$0 = randomTip;
                    this.$array = numArr;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @NotNull
                public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                    C02451 c02451 = new C02451(this.$$this$launch, this.this$0, this.$array, continuation);
                    c02451.L$0 = obj;
                    return c02451;
                }

                @Override // kotlin.jvm.functions.Function2
                @Nullable
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final Object mo1invoke(@NotNull FlowCollector<? super Integer> flowCollector, @Nullable Continuation<? super Unit> continuation) {
                    return ((C02451) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
                /* JADX WARN: Removed duplicated region for block: B:24:0x0080 A[RETURN] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007e -> B:12:0x0031). Please submit an issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r7) {
                    /*
                        r6 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r1 = r6.label
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L29
                        if (r1 == r3) goto L1f
                        if (r1 != r2) goto L17
                        java.lang.Object r1 = r6.L$0
                        kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                        kotlin.ResultKt.throwOnFailure(r7)
                        r7 = r1
                        goto L30
                    L17:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r0)
                        throw r7
                    L1f:
                        java.lang.Object r1 = r6.L$0
                        kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                        kotlin.ResultKt.throwOnFailure(r7)
                        r7 = r1
                        r1 = r6
                        goto L56
                    L29:
                        kotlin.ResultKt.throwOnFailure(r7)
                        java.lang.Object r7 = r6.L$0
                        kotlinx.coroutines.flow.FlowCollector r7 = (kotlinx.coroutines.flow.FlowCollector) r7
                    L30:
                        r1 = r6
                    L31:
                        kotlinx.coroutines.CoroutineScope r4 = r1.$$this$launch
                        boolean r4 = kotlinx.coroutines.CoroutineScopeKt.isActive(r4)
                        if (r4 == 0) goto L81
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip r4 = r1.this$0
                        boolean r4 = com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.access$getMatching$p(r4)
                        if (r4 == 0) goto L81
                        java.lang.Integer[] r4 = r1.$array
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip r5 = r1.this$0
                        int r5 = com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.access$getIndex$p(r5)
                        r4 = r4[r5]
                        r1.L$0 = r7
                        r1.label = r3
                        java.lang.Object r4 = r7.emit(r4, r1)
                        if (r4 != r0) goto L56
                        return r0
                    L56:
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip r4 = r1.this$0
                        int r5 = com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.access$getIndex$p(r4)
                        int r5 = r5 + r3
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.access$setIndex$p(r4, r5)
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.access$getIndex$p(r4)
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip r4 = r1.this$0
                        int r4 = com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.access$getIndex$p(r4)
                        java.lang.Integer[] r5 = r1.$array
                        int r5 = r5.length
                        if (r4 != r5) goto L74
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$RandomTip r4 = r1.this$0
                        r5 = 0
                        com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.access$setIndex$p(r4, r5)
                    L74:
                        r4 = 5000(0x1388, double:2.4703E-320)
                        r1.L$0 = r7
                        r1.label = r2
                        java.lang.Object r4 = kotlinx.coroutines.DelayKt.delay(r4, r1)
                        if (r4 != r0) goto L31
                        return r0
                    L81:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.AnonymousClass1.C02451.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(Integer[] numArr, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$array = numArr;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$array, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i9 = this.label;
                if (i9 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Flow flowOn = FlowKt.flowOn(FlowKt.cancellable(FlowKt.flow(new C02451((CoroutineScope) this.L$0, RandomTip.this, this.$array, null))), Dispatchers.getIO());
                    final RandomTip randomTip = RandomTip.this;
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment.RandomTip.1.2
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                            return emit(((Number) obj2).intValue(), continuation);
                        }

                        @Nullable
                        public final Object emit(int i10, @NotNull Continuation<? super Unit> continuation) {
                            RandomTip.this.getTextView().setText(i10);
                            return Unit.INSTANCE;
                        }
                    };
                    this.label = 1;
                    if (flowOn.collect(flowCollector, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i9 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        public RandomTip(@NotNull CoroutineScope scope, @NotNull TextView textView, @NotNull Integer[] array) {
            Intrinsics.checkNotNullParameter(scope, "scope");
            Intrinsics.checkNotNullParameter(textView, "textView");
            Intrinsics.checkNotNullParameter(array, "array");
            this.scope = scope;
            this.textView = textView;
            this.matching = true;
            BuildersKt__Builders_commonKt.launch$default(scope, Dispatchers.getMain(), null, new AnonymousClass1(array, null), 2, null);
        }

        public final void cancel() {
            this.matching = false;
        }

        @NotNull
        public final CoroutineScope getScope() {
            return this.scope;
        }

        @NotNull
        public final TextView getTextView() {
            return this.textView;
        }
    }

    public F2fMatchingFragment() {
        Lazy lazy;
        final GCApplication app = GCApplication.app();
        Intrinsics.checkNotNullExpressionValue(app, "app()");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<F2fMatchViewModel>() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$special$$inlined$lazyGlobalViewModel$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final F2fMatchViewModel invoke() {
                BaseViewModel baseViewModel;
                ViewModelStoreOwner viewModelStoreOwner = ViewModelStoreOwner.this;
                String str = r2;
                ViewModelProvider.Factory factory = r3;
                ViewModelProvider viewModelProvider = factory == null ? new ViewModelProvider(viewModelStoreOwner) : new ViewModelProvider(viewModelStoreOwner, factory);
                if (str != null) {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(str, F2fMatchViewModel.class);
                } else {
                    baseViewModel = (BaseViewModel) viewModelProvider.get(F2fMatchViewModel.class);
                }
                Objects.requireNonNull(baseViewModel, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.viewmodel.F2fMatchViewModel");
                return (F2fMatchViewModel) baseViewModel;
            }
        });
        this.viewModel$delegate = lazy;
        this.matching = true;
    }

    @GCViewBinding
    public static /* synthetic */ void getViewBinding$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: initView$lambda-1$lambda-0  reason: not valid java name */
    public static final void m616initView$lambda1$lambda0(F2fMatchingFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNull(requireContext, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        ((F2fMatchContainer) requireContext).showPendantDialog();
    }

    private final void loadRandomTips() {
        if (getActivity() == null) {
            return;
        }
        RandomTip randomTip = this.randomTip;
        if (randomTip != null) {
            randomTip.cancel();
        }
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity");
        F2fProxy f2fProxy = ((F2fMatchActivity) requireActivity).getF2fProxy();
        Intrinsics.checkNotNull(f2fProxy, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.MatchingTipsFinder");
        Integer[] findTips = f2fProxy.findTips();
        LifecycleCoroutineScope lifecycleScope = LifecycleOwnerKt.getLifecycleScope(this);
        TextView textView = getViewBinding().tips;
        Intrinsics.checkNotNullExpressionValue(textView, "viewBinding.tips");
        this.randomTip = new RandomTip(lifecycleScope, textView, findTips);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showWaitingMatchRoomInfo$lambda-3$lambda-2  reason: not valid java name */
    public static final void m617showWaitingMatchRoomInfo$lambda3$lambda2(F2fMatchingFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        ((F2fMatchContainer) requireActivity).moveToMini();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: showWaitingMatchRoomInfo$lambda-6$lambda-5  reason: not valid java name */
    public static final void m618showWaitingMatchRoomInfo$lambda6$lambda5(F2fMatchingFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.activity.F2fMatchActivity");
        F2fMatchActivity f2fMatchActivity = (F2fMatchActivity) requireActivity;
        f2fMatchActivity.exitCurrentRoom(false);
        f2fMatchActivity.cancelMatchAndBackToPrepare();
    }

    @NotNull
    public final FragmentF2fMatchingBinding getViewBinding() {
        FragmentF2fMatchingBinding fragmentF2fMatchingBinding = this.viewBinding;
        if (fragmentF2fMatchingBinding != null) {
            return fragmentF2fMatchingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("viewBinding");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCCoreFragment
    public void initView(@NotNull View root, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(root, "root");
        super.initView(root, bundle);
        showWaitingMatchRoomInfo(null);
        FragmentF2fMatchingBinding viewBinding = getViewBinding();
        viewBinding.beauty.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fMatchingFragment.m616initView$lambda1$lambda0(F2fMatchingFragment.this, view);
            }
        });
        viewBinding.radar.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.F2fMatchingFragment$initView$1$2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View p02) {
                Intrinsics.checkNotNullParameter(p02, "p0");
                AnimatorSet animatorSet = new AnimatorSet();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(p02, Key.ROTATION, 0.0f, 360.0f);
                ofFloat.setRepeatCount(-1);
                animatorSet.play(ofFloat);
                animatorSet.setDuration(1500L);
                p02.setTag(animatorSet);
                animatorSet.setInterpolator(new LinearInterpolator());
                animatorSet.start();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View p02) {
                Intrinsics.checkNotNullParameter(p02, "p0");
                Object tag = p02.getTag();
                if (tag instanceof AnimatorSet) {
                    ((AnimatorSet) tag).cancel();
                }
            }
        });
    }

    public final void setViewBinding(@NotNull FragmentF2fMatchingBinding fragmentF2fMatchingBinding) {
        Intrinsics.checkNotNullParameter(fragmentF2fMatchingBinding, "<set-?>");
        this.viewBinding = fragmentF2fMatchingBinding;
    }

    public final void showMatching(boolean z10) {
        this.matching = z10;
        if (z10) {
            getViewBinding().getRoot().setVisibility(0);
            getViewBinding().loadingAnim.playRaw(R$raw.color_change_anim_bg);
            loadRandomTips();
            return;
        }
        RandomTip randomTip = this.randomTip;
        if (randomTip != null) {
            randomTip.cancel();
        }
        getViewBinding().getRoot().setVisibility(8);
        getViewBinding().loadingAnim.clearPlay();
    }

    public final void showWaitingMatchRoomInfo(@Nullable F2fMatchModel.F2fMatchRoomInfo f2fMatchRoomInfo) {
        if (f2fMatchRoomInfo == null) {
            FragmentF2fMatchingBinding viewBinding = getViewBinding();
            viewBinding.matchedInfoArea.setVisibility(8);
            viewBinding.matchingArea.setVisibility(0);
            viewBinding.mini.setImageResource(R$mipmap.icon_f2f_minisize_prepare);
            viewBinding.beauty.setImageResource(R$mipmap.icon_f2f_beauty_matching);
            viewBinding.mini.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    F2fMatchingFragment.m617showWaitingMatchRoomInfo$lambda3$lambda2(F2fMatchingFragment.this, view);
                }
            });
            return;
        }
        FragmentF2fMatchingBinding viewBinding2 = getViewBinding();
        viewBinding2.nickName.setText(f2fMatchRoomInfo.getNickName());
        viewBinding2.addr.setText(f2fMatchRoomInfo.getAddressStr());
        viewBinding2.matchedInfoArea.setVisibility(0);
        viewBinding2.matchingArea.setVisibility(8);
        com.bumptech.glide.c.w(this).r(f2fMatchRoomInfo.getSmallAvatarUrl()).a(com.bumptech.glide.request.h.y0()).b0(com.guochao.lib_core.R$mipmap.default_head).Q0(viewBinding2.avatar);
        com.bumptech.glide.c.w(this).r(f2fMatchRoomInfo.getCountryLogo()).q0(new jc.d(DensityUtil.dp2px(1.5f), -1)).Q0(viewBinding2.countryFlag);
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.guochao.faceshow.component.f2fmatch.proxy.F2fMatchContainer");
        F2fProxy f2fProxy = ((F2fMatchContainer) requireActivity).getF2fProxy();
        LinearLayout extraInfoArea = viewBinding2.extraInfoArea;
        Intrinsics.checkNotNullExpressionValue(extraInfoArea, "extraInfoArea");
        f2fProxy.setUserInfo(f2fMatchRoomInfo, extraInfoArea);
        viewBinding2.mini.setImageResource(R$mipmap.icon_f2f_exit_matched);
        viewBinding2.beauty.setImageResource(R$mipmap.icon_f2f_beauty_matched);
        viewBinding2.mini.setOnClickListener(new View.OnClickListener() { // from class: com.guochao.faceshow.component.f2fmatch.fragment.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                F2fMatchingFragment.m618showWaitingMatchRoomInfo$lambda6$lambda5(F2fMatchingFragment.this, view);
            }
        });
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.fragment.GCBaseMvvmFragment
    @NotNull
    public F2fMatchViewModel getViewModel() {
        return (F2fMatchViewModel) this.viewModel$delegate.getValue();
    }

    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel.ModelUpdateObserver
    public void onModelUpdate(@Nullable F2fMatchModel f2fMatchModel) {
        if (f2fMatchModel instanceof F2fMatchModel.F2fMatchRoomInfo) {
            showWaitingMatchRoomInfo((F2fMatchModel.F2fMatchRoomInfo) f2fMatchModel);
        }
    }
}
