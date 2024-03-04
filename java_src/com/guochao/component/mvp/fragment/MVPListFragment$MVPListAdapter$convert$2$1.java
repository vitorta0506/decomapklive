package com.guochao.component.mvp.fragment;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.guochao.component.mvp.R$string;
import com.guochao.component.mvp.activity.MVPActivity;
import com.guochao.component.mvp.fragment.MVPListFragment;
import com.guochao.component.mvp.model.GiftModel;
import com.guochao.component.mvp.model.TypeData;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$2$1", f = "MVPListFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MVPListFragment$MVPListAdapter$convert$2$1 extends SuspendLambda implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
    final /* synthetic */ GiftModel $item;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MVPListFragment.MVPListAdapter this$0;
    final /* synthetic */ MVPListFragment this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MVPListFragment$MVPListAdapter$convert$2$1(MVPListFragment.MVPListAdapter mVPListAdapter, MVPListFragment mVPListFragment, GiftModel giftModel, Continuation<? super MVPListFragment$MVPListAdapter$convert$2$1> continuation) {
        super(2, continuation);
        this.this$0 = mVPListAdapter;
        this.this$1 = mVPListFragment;
        this.$item = giftModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        MVPListFragment$MVPListAdapter$convert$2$1 mVPListFragment$MVPListAdapter$convert$2$1 = new MVPListFragment$MVPListAdapter$convert$2$1(this.this$0, this.this$1, this.$item, continuation);
        mVPListFragment$MVPListAdapter$convert$2$1.L$0 = obj;
        return mVPListFragment$MVPListAdapter$convert$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull Response<Integer> response, @Nullable Continuation<? super Unit> continuation) {
        return ((MVPListFragment$MVPListAdapter$convert$2$1) create(response, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Response response = (Response) this.L$0;
            if (response.isSuccessful()) {
                Integer num = (Integer) response.getData();
                if (num != null && num.intValue() == 2) {
                    Context context = this.this$0.getContext();
                    String string = this.this$1.getString(R$string.mvp_toast_get_diamond_status_error);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.mvp_t…get_diamond_status_error)");
                    ToastUtils.showToast$default(context, string, 0, 0, 12, null);
                } else {
                    Context context2 = this.this$0.getContext();
                    String string2 = this.this$1.getString(R$string.mvp_toast_get_diamond);
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(R.string.mvp_toast_get_diamond)");
                    ToastUtils.showToast$default(context2, string2, 0, 0, 12, null);
                    List<TypeData> typeDataList = this.$item.getTypeDataList();
                    TypeData typeData = typeDataList != null ? typeDataList.get(0) : null;
                    if (typeData != null) {
                        typeData.setStatus(Boxing.boxInt(2));
                    }
                    this.this$0.notifyDataSetChanged();
                    if (this.this$1.getActivity() instanceof MVPActivity) {
                        FragmentActivity activity = this.this$1.getActivity();
                        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.component.mvp.activity.MVPActivity");
                        ((MVPActivity) activity).checkGetAll();
                    }
                }
            } else {
                Context context3 = this.this$0.getContext();
                String string3 = this.this$1.getString(R$string.error_code, Boxing.boxInt(response.getCode()));
                Intrinsics.checkNotNullExpressionValue(string3, "getString(R.string.error_code, it.code)");
                ToastUtils.showToast$default(context3, string3, 0, 0, 12, null);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
