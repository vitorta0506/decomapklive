package com.vk.api.sdk.chain;

import com.vk.api.sdk.VKApiValidationHandler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
/* synthetic */ class ValidationHandlerChainCall$handleValidation$credentials$1 extends FunctionReferenceImpl implements Function3<VKApiValidationHandler, String, VKApiValidationHandler.Callback<VKApiValidationHandler.Credentials>, Unit> {
    public static final ValidationHandlerChainCall$handleValidation$credentials$1 INSTANCE = new ValidationHandlerChainCall$handleValidation$credentials$1();

    ValidationHandlerChainCall$handleValidation$credentials$1() {
        super(3, VKApiValidationHandler.class, "handleValidation", "handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(VKApiValidationHandler vKApiValidationHandler, String str, VKApiValidationHandler.Callback<VKApiValidationHandler.Credentials> callback) {
        invoke2(vKApiValidationHandler, str, callback);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull VKApiValidationHandler p02, @NotNull String p12, @NotNull VKApiValidationHandler.Callback<VKApiValidationHandler.Credentials> p22) {
        Intrinsics.checkNotNullParameter(p02, "p0");
        Intrinsics.checkNotNullParameter(p12, "p1");
        Intrinsics.checkNotNullParameter(p22, "p2");
        p02.handleValidation(p12, p22);
    }
}
