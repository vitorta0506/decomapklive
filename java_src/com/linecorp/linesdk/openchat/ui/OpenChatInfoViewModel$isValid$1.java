package com.linecorp.linesdk.openchat.ui;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "p1", "", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final /* synthetic */ class OpenChatInfoViewModel$isValid$1 extends FunctionReference implements Function1<CharSequence, Boolean> {
    public static final OpenChatInfoViewModel$isValid$1 INSTANCE = new OpenChatInfoViewModel$isValid$1();

    OpenChatInfoViewModel$isValid$1() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "isNotEmpty";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinPackage(StringsKt.class, "line-sdk_release");
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "isNotEmpty(Ljava/lang/CharSequence;)Z";
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(CharSequence charSequence) {
        return Boolean.valueOf(invoke((String) charSequence));
    }

    public final boolean invoke(@NotNull String str) {
        return str.length() > 0;
    }
}
