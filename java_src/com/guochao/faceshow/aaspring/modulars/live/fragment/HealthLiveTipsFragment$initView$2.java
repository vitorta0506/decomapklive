package com.guochao.faceshow.aaspring.modulars.live.fragment;

import android.widget.TextView;
import com.guochao.faceshow.R;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.aaspring.modulars.live.fragment.HealthLiveTipsFragment$initView$2", f = "HealthLiveTipsFragment.kt", i = {0, 0}, l = {89}, m = "invokeSuspend", n = {"$this$launch", com.huawei.hms.opendevice.c.f27627a}, s = {"L$0", "I$0"})
/* loaded from: classes3.dex */
final class HealthLiveTipsFragment$initView$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int I$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ HealthLiveTipsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HealthLiveTipsFragment$initView$2(HealthLiveTipsFragment healthLiveTipsFragment, Continuation<? super HealthLiveTipsFragment$initView$2> continuation) {
        super(2, continuation);
        this.this$0 = healthLiveTipsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        HealthLiveTipsFragment$initView$2 healthLiveTipsFragment$initView$2 = new HealthLiveTipsFragment$initView$2(this.this$0, continuation);
        healthLiveTipsFragment$initView$2.L$0 = obj;
        return healthLiveTipsFragment$initView$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((HealthLiveTipsFragment$initView$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        int i9;
        CoroutineScope coroutineScope;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.throwOnFailure(obj);
            i9 = 3;
            coroutineScope = (CoroutineScope) this.L$0;
        } else if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            i9 = this.I$0;
            coroutineScope = (CoroutineScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (CoroutineScopeKt.isActive(coroutineScope) && i9 >= 1) {
            TextView sure = this.this$0.getSure();
            sure.setText(this.this$0.getString(R.string.lottery_i_know) + '(' + i9 + ')');
            i9 += -1;
            this.L$0 = coroutineScope;
            this.I$0 = i9;
            this.label = 1;
            if (DelayKt.delay(1000L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        this.this$0.getSure().setText(this.this$0.getString(R.string.lottery_i_know));
        this.this$0.getSure().setEnabled(true);
        return Unit.INSTANCE;
    }
}
