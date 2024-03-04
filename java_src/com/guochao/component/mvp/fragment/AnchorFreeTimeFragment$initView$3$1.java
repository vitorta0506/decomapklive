package com.guochao.component.mvp.fragment;

import android.content.Context;
import com.guochao.component.mvp.R$string;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.mvp.fragment.AnchorFreeTimeFragment$initView$3$1", f = "AnchorFreeTimeFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class AnchorFreeTimeFragment$initView$3$1 extends SuspendLambda implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AnchorFreeTimeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchorFreeTimeFragment$initView$3$1(AnchorFreeTimeFragment anchorFreeTimeFragment, Continuation<? super AnchorFreeTimeFragment$initView$3$1> continuation) {
        super(2, continuation);
        this.this$0 = anchorFreeTimeFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        AnchorFreeTimeFragment$initView$3$1 anchorFreeTimeFragment$initView$3$1 = new AnchorFreeTimeFragment$initView$3$1(this.this$0, continuation);
        anchorFreeTimeFragment$initView$3$1.L$0 = obj;
        return anchorFreeTimeFragment$initView$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull Response<Integer> response, @Nullable Continuation<? super Unit> continuation) {
        return ((AnchorFreeTimeFragment$initView$3$1) create(response, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        CharSequence trim;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Response response = (Response) this.L$0;
            Integer num = (Integer) response.getData();
            if (num != null && num.intValue() == 1) {
                Function1<String, Unit> callBack = this.this$0.getCallBack();
                if (callBack != null) {
                    trim = StringsKt__StringsKt.trim((CharSequence) this.this$0.getViewBinding().idET.getText().toString());
                    callBack.invoke(trim.toString());
                }
                ToastUtils.showToast$default(this.this$0.getContext(), R$string.mvp_set_free_time_success, 0, 4, null);
                this.this$0.dismissAllowingStateLoss();
            } else if (num != null && num.intValue() == 2) {
                ToastUtils.showToast$default(this.this$0.getContext(), R$string.mvp_set_free_time_already, 0, 4, null);
            } else if (num != null && num.intValue() == 101) {
                ToastUtils.showToast$default(this.this$0.getContext(), R$string.mvp_set_top_time_user_no_broadcast, 0, 4, null);
            } else if (num != null && num.intValue() == 102) {
                ToastUtils.showToast$default(this.this$0.getContext(), R$string.mvp_set_top_time_user_freeze, 0, 4, null);
            } else if (num != null && num.intValue() == 103) {
                ToastUtils.showToast$default(this.this$0.getContext(), R$string.mvp_set_top_time_input_right, 0, 4, null);
            } else {
                Context context = this.this$0.getContext();
                String string = this.this$0.getString(R$string.error_code, Boxing.boxInt(response.getCode()));
                Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.error_code, it.code)");
                ToastUtils.showToast$default(context, string, 0, 0, 12, null);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
