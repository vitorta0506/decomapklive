package com.guochao.component.mvp.fragment;

import com.google.gson.reflect.TypeToken;
import com.guochao.component.mvp.model.MvpBagBean;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import java.lang.reflect.Type;
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
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.component.mvp.fragment.GiftSelectSuccessFragment$initView$3$1$1", f = "GiftSelectSuccessFragment.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class GiftSelectSuccessFragment$initView$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ GiftSelectSuccessFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.guochao.component.mvp.fragment.GiftSelectSuccessFragment$initView$3$1$1$1", f = "GiftSelectSuccessFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.guochao.component.mvp.fragment.GiftSelectSuccessFragment$initView$3$1$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
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
            MvpBagBean mvpBagBean;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                boolean z10 = true;
                GCRequest putBody = new GCRequest("api/token/trade/mvp/getMyMvpBag").putBody("page", Boxing.boxInt(1)).putBody("size", Boxing.boxInt(1));
                Type type = new TypeToken<List<MvpBagBean>>() { // from class: com.guochao.component.mvp.fragment.GiftSelectSuccessFragment$initView$3$1$1$1$response$1
                }.getType();
                Intrinsics.checkNotNullExpressionValue(type, "object :\n               …st<MvpBagBean>>() {}.type");
                Response execute = putBody.execute(type);
                List list = (List) execute.getData();
                if ((list == null || !(list.isEmpty() ^ true)) ? false : false) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("api/token/trade/mvp/giveUserMvpFlag/");
                    List list2 = (List) execute.getData();
                    sb2.append((list2 == null || (mvpBagBean = (MvpBagBean) list2.get(0)) == null) ? null : mvpBagBean.getId());
                    new GCRequest(sb2.toString()).method(GCRequest.Method.POST).request();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiftSelectSuccessFragment$initView$3$1$1(GiftSelectSuccessFragment giftSelectSuccessFragment, Continuation<? super GiftSelectSuccessFragment$initView$3$1$1> continuation) {
        super(2, continuation);
        this.this$0 = giftSelectSuccessFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new GiftSelectSuccessFragment$initView$3$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((GiftSelectSuccessFragment$initView$3$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i9 = this.label;
        if (i9 == 0) {
            ResultKt.throwOnFailure(obj);
            GiftSelectSuccessFragment giftSelectSuccessFragment = this.this$0;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
            this.label = 1;
            if (giftSelectSuccessFragment.withIO(anonymousClass1, this) == coroutine_suspended) {
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
