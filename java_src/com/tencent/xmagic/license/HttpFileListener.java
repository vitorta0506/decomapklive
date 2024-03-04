package com.tencent.xmagic.license;

import java.io.File;
@Deprecated
/* loaded from: classes4.dex */
public interface HttpFileListener {
    void onProcessEnd();

    void onProgressUpdate(int i9);

    void onSaveFailed(File file, Exception exc);

    void onSaveSuccess(File file, String str);
}
