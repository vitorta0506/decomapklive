package com.guochao.faceshow.aaspring.base.test;

import androidx.lifecycle.ViewModelKt;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lcom/guochao/faceshow/aaspring/base/test/TestViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/test/TestModel;", "()V", "async1", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "async2", "loadData", "", "testAsync", "lib_core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TestViewModel extends BaseViewModel<TestModel> {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object async1(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Integer> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.guochao.faceshow.aaspring.base.test.TestViewModel$async1$1
            if (r0 == 0) goto L13
            r0 = r7
            com.guochao.faceshow.aaspring.base.test.TestViewModel$async1$1 r0 = (com.guochao.faceshow.aaspring.base.test.TestViewModel$async1$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.guochao.faceshow.aaspring.base.test.TestViewModel$async1$1 r0 = new com.guochao.faceshow.aaspring.base.test.TestViewModel$async1$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3f
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            r4 = 100
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r0)
            if (r7 != r1) goto L3f
            return r1
        L3f:
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r3)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.base.test.TestViewModel.async1(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object async2(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super java.lang.Integer> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.guochao.faceshow.aaspring.base.test.TestViewModel$async2$1
            if (r0 == 0) goto L13
            r0 = r7
            com.guochao.faceshow.aaspring.base.test.TestViewModel$async2$1 r0 = (com.guochao.faceshow.aaspring.base.test.TestViewModel$async2$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.guochao.faceshow.aaspring.base.test.TestViewModel$async2$1 r0 = new com.guochao.faceshow.aaspring.base.test.TestViewModel$async2$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3f
        L29:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            r4 = 300(0x12c, double:1.48E-321)
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r0)
            if (r7 != r1) goto L3f
            return r1
        L3f:
            r7 = 2
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.base.test.TestViewModel.async2(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void loadData() {
        testAsync();
    }

    public final void testAsync() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getMain(), null, new TestViewModel$testAsync$1(this, null), 2, null);
    }
}
