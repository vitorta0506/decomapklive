package com.guochao.component.mvp.fragment;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.fragment.GiftSelectSuccessFragment;
import com.guochao.component.mvp.model.TypeData;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import java.util.Collections;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.mvp.fragment.GiftSelectFragment$initView$2$1", f = "GiftSelectFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GiftSelectFragment$initView$2$1 extends SuspendLambda implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ GiftSelectFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiftSelectFragment$initView$2$1(GiftSelectFragment giftSelectFragment, Continuation<? super GiftSelectFragment$initView$2$1> continuation) {
        super(2, continuation);
        this.this$0 = giftSelectFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        GiftSelectFragment$initView$2$1 giftSelectFragment$initView$2$1 = new GiftSelectFragment$initView$2$1(this.this$0, continuation);
        giftSelectFragment$initView$2$1.L$0 = obj;
        return giftSelectFragment$initView$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull Response<Integer> response, @Nullable Continuation<? super Unit> continuation) {
        return ((GiftSelectFragment$initView$2$1) create(response, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Response response = (Response) this.L$0;
            if (response.isSuccessful()) {
                Bundle arguments = this.this$0.getArguments();
                int i9 = arguments != null ? arguments.getInt("type") : -1;
                GiftSelectSuccessFragment.Companion companion = GiftSelectSuccessFragment.Companion;
                TypeData item = this.this$0.getMAdapter().getItem(this.this$0.getMAdapter().getSelectedPosition());
                item.setType(i9);
                GiftSelectSuccessFragment newInstance = companion.newInstance(Collections.singletonList(item));
                FragmentManager parentFragmentManager = this.this$0.getParentFragmentManager();
                Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
                newInstance.show(parentFragmentManager, "giftSelectSuccess");
                this.this$0.dismissAllowingStateLoss();
                Function1<Boolean, Unit> callBack = this.this$0.getCallBack();
                if (callBack != null) {
                    callBack.invoke(Boxing.boxBoolean(true));
                }
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
