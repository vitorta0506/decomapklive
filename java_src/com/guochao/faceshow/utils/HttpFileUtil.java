package com.guochao.faceshow.utils;
/* loaded from: classes4.dex */
public class HttpFileUtil implements Runnable {
    protected static final int BUFFERED_READER_SIZE = 8192;
    public static final int TIMEOUT = 30000;
    private long mContentLength;
    private long mDownloadingSize;
    private String mFilename;
    private String mFolder;
    private HttpFileListener mListener;
    private boolean mNeedProgress;
    private String mUrl;

    public HttpFileUtil(String str, String str2, String str3, HttpFileListener httpFileListener, boolean z10) {
        this.mUrl = str;
        this.mFolder = str2;
        this.mFilename = str3;
        this.mListener = httpFileListener;
        this.mNeedProgress = z10;
    }

    private void fail(Exception exc, int i9) {
        HttpFileListener httpFileListener = this.mListener;
        if (httpFileListener != null) {
            httpFileListener.onSaveFailed(null, exc);
        }
        this.mListener = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0183 A[Catch: IOException -> 0x0190, TryCatch #3 {IOException -> 0x0190, blocks: (B:99:0x017e, B:101:0x0183, B:103:0x0188, B:104:0x018b), top: B:131:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0188 A[Catch: IOException -> 0x0190, TryCatch #3 {IOException -> 0x0190, blocks: (B:99:0x017e, B:101:0x0183, B:103:0x0188, B:104:0x018b), top: B:131:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x019d A[Catch: IOException -> 0x01aa, TryCatch #6 {IOException -> 0x01aa, blocks: (B:111:0x0198, B:113:0x019d, B:115:0x01a2, B:116:0x01a5), top: B:135:0x0198 }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01a2 A[Catch: IOException -> 0x01aa, TryCatch #6 {IOException -> 0x01aa, blocks: (B:111:0x0198, B:113:0x019d, B:115:0x01a2, B:116:0x01a5), top: B:135:0x0198 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01ad A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x017e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0198 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.utils.HttpFileUtil.run():void");
    }
}
