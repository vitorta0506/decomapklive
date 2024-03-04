package com.linecorp.linesdk.openchat.ui;

import androidx.lifecycle.MutableLiveData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u00012,\u0010\u0002\u001a( \u0007*\u0013\u0018\u00010\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u00060\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "p1", "", "Lkotlin/ParameterName;", "name", "p0", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4.dex */
final /* synthetic */ class OpenChatInfoFragment$setupDescription$1 extends FunctionReference implements Function1<String, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public OpenChatInfoFragment$setupDescription$1(MutableLiveData mutableLiveData) {
        super(1, mutableLiveData);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "setValue";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(MutableLiveData.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "setValue(Ljava/lang/Object;)V";
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(String str) {
        ((MutableLiveData) this.receiver).setValue(str);
    }
}
