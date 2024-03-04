package com.tencent.liteav.base.annotations;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.CONSTRUCTOR})
/* loaded from: classes4.dex */
public @interface UsedByReflection {
    String value();
}
