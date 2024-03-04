package com.google.firebase.ktx;

import android.content.Context;
import com.google.firebase.d;
import com.google.firebase.i;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u001a\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b\u001a\"\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u0001\"\u0014\u0010\n\u001a\u00020\u00018\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\u000b\"\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\f\u0010\r\"\u0015\u0010\t\u001a\u00020\b*\u00020\u00008F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/google/firebase/ktx/Firebase;", "", "name", "Lcom/google/firebase/d;", PushConstants.EXTRA_APPLICATION_PENDING_INTENT, "Landroid/content/Context;", "context", "initialize", "Lcom/google/firebase/i;", "options", "LIBRARY_NAME", "Ljava/lang/String;", "getApp", "(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/d;", "getOptions", "(Lcom/google/firebase/ktx/Firebase;)Lcom/google/firebase/i;", "com.google.firebase-firebase-common-ktx"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes2.dex */
public final class FirebaseKt {
    @NotNull
    public static final String LIBRARY_NAME = "fire-core-ktx";

    @NotNull
    public static final d app(@NotNull Firebase app, @NotNull String name) {
        Intrinsics.checkNotNullParameter(app, "$this$app");
        Intrinsics.checkNotNullParameter(name, "name");
        d m10 = d.m(name);
        Intrinsics.checkNotNullExpressionValue(m10, "FirebaseApp.getInstance(name)");
        return m10;
    }

    @NotNull
    public static final d getApp(@NotNull Firebase app) {
        Intrinsics.checkNotNullParameter(app, "$this$app");
        d l10 = d.l();
        Intrinsics.checkNotNullExpressionValue(l10, "FirebaseApp.getInstance()");
        return l10;
    }

    @NotNull
    public static final i getOptions(@NotNull Firebase options) {
        Intrinsics.checkNotNullParameter(options, "$this$options");
        i o10 = getApp(Firebase.INSTANCE).o();
        Intrinsics.checkNotNullExpressionValue(o10, "Firebase.app.options");
        return o10;
    }

    @Nullable
    public static final d initialize(@NotNull Firebase initialize, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(initialize, "$this$initialize");
        Intrinsics.checkNotNullParameter(context, "context");
        return d.r(context);
    }

    @NotNull
    public static final d initialize(@NotNull Firebase initialize, @NotNull Context context, @NotNull i options) {
        Intrinsics.checkNotNullParameter(initialize, "$this$initialize");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(options, "options");
        d s10 = d.s(context, options);
        Intrinsics.checkNotNullExpressionValue(s10, "FirebaseApp.initializeApp(context, options)");
        return s10;
    }

    @NotNull
    public static final d initialize(@NotNull Firebase initialize, @NotNull Context context, @NotNull i options, @NotNull String name) {
        Intrinsics.checkNotNullParameter(initialize, "$this$initialize");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(name, "name");
        d t10 = d.t(context, options, name);
        Intrinsics.checkNotNullExpressionValue(t10, "FirebaseApp.initializeApp(context, options, name)");
        return t10;
    }
}
