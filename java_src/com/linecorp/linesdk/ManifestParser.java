package com.linecorp.linesdk;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.RestrictTo;
import com.linecorp.linesdk.api.LineEnvConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0002¨\u0006\n"}, d2 = {"Lcom/linecorp/linesdk/ManifestParser;", "", "()V", "parse", "Lcom/linecorp/linesdk/api/LineEnvConfig;", "context", "Landroid/content/Context;", "parseEnvConfig", "className", "", "line-sdk_release"}, k = 1, mv = {1, 1, 16})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes4.dex */
public final class ManifestParser {
    private final LineEnvConfig parseEnvConfig(String str) {
        try {
            Class<?> cls = Class.forName(str);
            Intrinsics.checkExpressionValueIsNotNull(cls, "Class.forName(className)");
            try {
                Object newInstance = cls.newInstance();
                Intrinsics.checkExpressionValueIsNotNull(newInstance, "clazz.newInstance()");
                if (newInstance instanceof LineEnvConfig) {
                    return (LineEnvConfig) newInstance;
                }
                throw new RuntimeException("Expected instanceof LineEnvConfig, but found: " + newInstance);
            } catch (ReflectiveOperationException e10) {
                throw new RuntimeException("Unable to instantiate LineEnvConfig implementation for " + cls, e10);
            }
        } catch (ClassNotFoundException e11) {
            throw new IllegalArgumentException("Unable to find LineEnvConfig implementation", e11);
        }
    }

    @CheckResult
    @Nullable
    public final LineEnvConfig parse(@NotNull Context context) {
        Object m1657constructorimpl;
        LineEnvConfig lineEnvConfig;
        String className;
        try {
            Result.Companion companion = Result.Companion;
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || (className = bundle.getString("LineEnvConfig")) == null) {
                lineEnvConfig = null;
            } else {
                Intrinsics.checkExpressionValueIsNotNull(className, "className");
                lineEnvConfig = parseEnvConfig(className);
            }
            m1657constructorimpl = Result.m1657constructorimpl(lineEnvConfig);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.Companion;
            m1657constructorimpl = Result.m1657constructorimpl(ResultKt.createFailure(th2));
        }
        return Result.m1663isFailureimpl(m1657constructorimpl) ? null : m1657constructorimpl;
    }
}
