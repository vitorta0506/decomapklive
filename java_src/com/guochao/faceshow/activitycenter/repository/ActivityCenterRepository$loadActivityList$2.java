package com.guochao.faceshow.activitycenter.repository;

import com.google.gson.reflect.TypeToken;
import com.guochao.faceshow.aaspring.base.http.v2.GCRequest;
import com.guochao.faceshow.aaspring.base.http.v2.Response;
import com.guochao.faceshow.aaspring.beans.BannerBeanData;
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
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;", "", "Lcom/guochao/faceshow/aaspring/beans/BannerBeanData;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.guochao.faceshow.activitycenter.repository.ActivityCenterRepository$loadActivityList$2", f = "ActivityCenterRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class ActivityCenterRepository$loadActivityList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<List<BannerBeanData>>>, Object> {
    final /* synthetic */ int $page;
    final /* synthetic */ int $size;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityCenterRepository$loadActivityList$2(int i9, int i10, Continuation<? super ActivityCenterRepository$loadActivityList$2> continuation) {
        super(2, continuation);
        this.$page = i9;
        this.$size = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new ActivityCenterRepository$loadActivityList$2(this.$page, this.$size, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object mo1invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Response<List<BannerBeanData>>> continuation) {
        return ((ActivityCenterRepository$loadActivityList$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GCRequest putBody = new GCRequest("tokens/banner/findAppBannerToday").putBody("type", "1").putBody("page", Boxing.boxInt(this.$page)).putBody("size", Boxing.boxInt(this.$size));
            Type type = new TypeToken<List<BannerBeanData>>() { // from class: com.guochao.faceshow.activitycenter.repository.ActivityCenterRepository$loadActivityList$2.1
            }.getType();
            Intrinsics.checkNotNullExpressionValue(type, "object : TypeToken<Mutab…annerBeanData>>() {}.type");
            return putBody.execute(type);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
