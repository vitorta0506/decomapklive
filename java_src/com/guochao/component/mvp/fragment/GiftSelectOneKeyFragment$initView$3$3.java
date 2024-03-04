package com.guochao.component.mvp.fragment;

import android.content.Context;
import androidx.fragment.app.FragmentManager;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.model.TypeData;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import java.util.ArrayList;
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
@DebugMetadata(c = "com.guochao.component.mvp.fragment.GiftSelectOneKeyFragment$initView$3$3", f = "GiftSelectOneKeyFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GiftSelectOneKeyFragment$initView$3$3 extends SuspendLambda implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
    final /* synthetic */ ArrayList<TypeData> $dataList;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ GiftSelectOneKeyFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiftSelectOneKeyFragment$initView$3$3(GiftSelectOneKeyFragment giftSelectOneKeyFragment, ArrayList<TypeData> arrayList, Continuation<? super GiftSelectOneKeyFragment$initView$3$3> continuation) {
        super(2, continuation);
        this.this$0 = giftSelectOneKeyFragment;
        this.$dataList = arrayList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        GiftSelectOneKeyFragment$initView$3$3 giftSelectOneKeyFragment$initView$3$3 = new GiftSelectOneKeyFragment$initView$3$3(this.this$0, this.$dataList, continuation);
        giftSelectOneKeyFragment$initView$3$3.L$0 = obj;
        return giftSelectOneKeyFragment$initView$3$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull Response<Integer> response, @Nullable Continuation<? super Unit> continuation) {
        return ((GiftSelectOneKeyFragment$initView$3$3) create(response, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Integer num;
        boolean hasDressup;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Response response = (Response) this.L$0;
            if (response.isSuccessful() && (num = (Integer) response.getData()) != null && num.intValue() == 1) {
                hasDressup = this.this$0.hasDressup(this.$dataList);
                if (hasDressup) {
                    GiftSelectSuccessFragment newInstance = GiftSelectSuccessFragment.Companion.newInstance(this.$dataList);
                    FragmentManager parentFragmentManager = this.this$0.getParentFragmentManager();
                    Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
                    newInstance.show(parentFragmentManager, "giftSelectSuccess");
                }
                Function1<Boolean, Unit> callBack = this.this$0.getCallBack();
                if (callBack != null) {
                    callBack.invoke(Boxing.boxBoolean(true));
                }
                ToastUtils.showToast$default(this.this$0.getContext(), R$string.mvp_gift_select_success_title, 0, 4, null);
                this.this$0.dismissAllowingStateLoss();
            } else {
                Integer num2 = (Integer) response.getData();
                if (num2 != null && num2.intValue() == 2) {
                    Context context = this.this$0.getContext();
                    String string = this.this$0.getString(R$string.mvp_toast_get_diamond_status_error);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.mvp_t…get_diamond_status_error)");
                    ToastUtils.showToast$default(context, string, 0, 0, 12, null);
                } else {
                    Context context2 = this.this$0.getContext();
                    String string2 = this.this$0.getString(R$string.error_code, Boxing.boxInt(response.getCode()));
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.error_code, it.code)");
                    ToastUtils.showToast$default(context2, string2, 0, 0, 12, null);
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
