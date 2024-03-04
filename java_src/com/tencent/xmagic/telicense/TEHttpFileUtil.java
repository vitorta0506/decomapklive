package com.tencent.xmagic.telicense;

import java.io.File;
/* loaded from: classes4.dex */
class TEHttpFileUtil implements Runnable {
    private static final int DOWNLOAD_EXCEPTION = 3;
    private static final int DOWNLOAD_NOT_MODIFIED = 1;
    private static final int DOWNLOAD_STATUS_INVALID = 2;
    private static final int DOWNLOAD_SUCCESS = 0;
    private static final String TAG = "TEHttpFileUtil";
    private String mFilename;
    private String mFolder;
    private String mLastModified;
    private TEHttpFileListener mListener;
    private String mUrl;

    public TEHttpFileUtil(String str, String str2, String str3, TEHttpFileListener tEHttpFileListener, String str4) {
        this.mUrl = str;
        this.mFolder = str2;
        this.mFilename = str3;
        this.mListener = tEHttpFileListener;
        this.mLastModified = str4;
    }

    private void result(int i9, File file, int i10) {
        if (i9 == 0) {
            this.mListener.onDownloadSuccess(file, this.mLastModified);
        } else if (i9 == 1) {
            this.mListener.onNotModified();
        } else if (i9 != 2) {
            if (i9 != 3) {
                this.mListener.onDownloadFailed("http connection failed,undefined");
            } else {
                this.mListener.onDownloadFailed("http connection failed,IO exception");
            }
        } else {
            TEHttpFileListener tEHttpFileListener = this.mListener;
            tEHttpFileListener.onDownloadFailed("http connection failed,statusCode=" + i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0217 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x01f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01cf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01d0  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.xmagic.telicense.TEHttpFileUtil.run():void");
    }
}
