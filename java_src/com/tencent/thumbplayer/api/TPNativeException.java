package com.tencent.thumbplayer.api;

import com.tencent.thumbplayer.core.common.TPNativeLibraryException;
/* loaded from: classes4.dex */
public class TPNativeException extends TPNativeLibraryException {
    public TPNativeException(String str) {
        super(str);
    }

    public TPNativeException(String str, Throwable th2) {
        super(str, th2);
    }

    public TPNativeException(Throwable th2) {
        super(th2);
    }
}
