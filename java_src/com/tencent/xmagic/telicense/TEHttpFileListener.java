package com.tencent.xmagic.telicense;

import java.io.File;
/* loaded from: classes4.dex */
interface TEHttpFileListener {
    void onDownloadFailed(String str);

    void onDownloadSuccess(File file, String str);

    void onNotModified();
}
