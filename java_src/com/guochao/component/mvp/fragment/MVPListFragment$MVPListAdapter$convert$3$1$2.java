package com.guochao.component.mvp.fragment;

import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
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
@DebugMetadata(c = "com.guochao.component.mvp.fragment.MVPListFragment$MVPListAdapter$convert$3$1$2", f = "MVPListFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class MVPListFragment$MVPListAdapter$convert$3$1$2 extends SuspendLambda implements Function2<Response<Integer>, Continuation<? super Unit>, Object> {
    final /* synthetic */ GiftModel $item;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MVPListFragment this$0;
    final /* synthetic */ MVPListFragment.MVPListAdapter this$1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MVPListFragment$MVPListAdapter$convert$3$1$2(GiftModel giftModel, MVPListFragment mVPListFragment, MVPListFragment.MVPListAdapter mVPListAdapter, Continuation<? super MVPListFragment$MVPListAdapter$convert$3$1$2> continuation) {
        super(2, continuation);
        this.$item = giftModel;
        this.this$0 = mVPListFragment;
        this.this$1 = mVPListAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        MVPListFragment$MVPListAdapter$convert$3$1$2 mVPListFragment$MVPListAdapter$convert$3$1$2 = new MVPListFragment$MVPListAdapter$convert$3$1$2(this.$item, this.this$0, this.this$1, continuation);
        mVPListFragment$MVPListAdapter$convert$3$1$2.L$0 = obj;
        return mVPListFragment$MVPListAdapter$convert$3$1$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull Response<Integer> response, @Nullable Continuation<? super Unit> continuation) {
        return ((MVPListFragment$MVPListAdapter$convert$3$1$2) create(response, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Response response = (Response) this.L$0;
            if (response.isSuccessful()) {
                List<TypeData> typeDataList = this.$item.getTypeDataList();
                if (typeDataList != null) {
                    GiftModel giftModel = this.$item;
                    for (TypeData typeData : typeDataList) {
                        typeData.setType(giftModel.getType());
                    }
                }
                GiftSelectSuccessFragment newInstance = GiftSelectSuccessFragment.Companion.newInstance(this.$item.getTypeDataList());
                FragmentManager parentFragmentManager = this.this$0.getParentFragmentManager();
                Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
                newInstance.show(parentFragmentManager, "giftSelectSuccess");
                List<TypeData> typeDataList2 = this.$item.getTypeDataList();
                TypeData typeData2 = typeDataList2 != null ? typeDataList2.get(0) : null;
                if (typeData2 != null) {
                    typeData2.setStatus(Boxing.boxInt(2));
                }
                this.this$1.notifyDataSetChanged();
                if (this.this$0.getActivity() instanceof MVPActivity) {
                    FragmentActivity activity = this.this$0.getActivity();
                    Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type com.guochao.component.mvp.activity.MVPActivity");
                    ((MVPActivity) activity).checkGetAll();
                }
            } else {
                Context context = this.this$1.getContext();
                String string = this.this$0.getString(R$string.error_code, Boxing.boxInt(response.getCode()));
                Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.error_code, it.code)");
                ToastUtils.showToast$default(context, string, 0, 0, 12, null);
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
