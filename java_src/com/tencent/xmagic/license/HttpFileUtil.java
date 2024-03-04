package com.tencent.xmagic.license;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
@Deprecated
/* loaded from: classes4.dex */
public class HttpFileUtil implements Runnable {
    private long mContentLength;
    private Context mContext;
    private long mDownloadingSize;
    private String mFilename;
    private String mFolder;
    private String mLastModified;
    private HttpFileListener mListener;
    private boolean mNeedProgress;
    private String mUrl;

    public HttpFileUtil(Context context, String str, String str2, String str3, HttpFileListener httpFileListener, boolean z10, String str4) {
        this.mContext = context;
        this.mUrl = str;
        this.mFolder = str2;
        this.mFilename = str3;
        this.mListener = httpFileListener;
        this.mNeedProgress = z10;
        this.mLastModified = str4;
    }

    private void callFailed(boolean z10, Exception exc, File file) {
        HttpFileListener httpFileListener;
        if ((z10 && exc == null) || (httpFileListener = this.mListener) == null) {
            return;
        }
        httpFileListener.onSaveFailed(file, null);
    }

    private void close(FileOutputStream fileOutputStream, InputStream inputStream, HttpURLConnection httpURLConnection) {
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException unused) {
                return;
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        HttpFileListener httpFileListener = this.mListener;
        if (httpFileListener != null) {
            httpFileListener.onProcessEnd();
        }
    }

    private void fail(Exception exc, int i9) {
        HttpFileListener httpFileListener = this.mListener;
        if (httpFileListener != null) {
            httpFileListener.onSaveFailed(null, exc);
        }
        this.mListener = null;
    }

    private void request() {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        boolean z10;
        FileOutputStream fileOutputStream;
        HttpFileListener httpFileListener;
        File file = new File(this.mFolder + File.separator + this.mFilename);
        int i9 = 0;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                if (file.exists()) {
                    try {
                        file.delete();
                    } catch (Exception e10) {
                        e = e10;
                        httpURLConnection = null;
                        inputStream = null;
                        close(fileOutputStream2, inputStream, httpURLConnection);
                        z10 = i9;
                        callFailed(z10, e, file);
                    }
                }
                file.createNewFile();
                httpURLConnection = (HttpURLConnection) new URL(this.mUrl).openConnection();
                try {
                    try {
                        if (!TextUtils.isEmpty(this.mLastModified)) {
                            try {
                                httpURLConnection.addRequestProperty("If-Modified-Since", this.mLastModified);
                            } catch (Exception e11) {
                                e = e11;
                                inputStream = null;
                                close(fileOutputStream2, inputStream, httpURLConnection);
                                z10 = i9;
                                callFailed(z10, e, file);
                            }
                        }
                        httpURLConnection.setConnectTimeout(com.guochao.faceshow.utils.HttpFileUtil.TIMEOUT);
                        httpURLConnection.setReadTimeout(com.guochao.faceshow.utils.HttpFileUtil.TIMEOUT);
                        httpURLConnection.setDoInput(true);
                        httpURLConnection.setRequestMethod("GET");
                        int responseCode = httpURLConnection.getResponseCode();
                        z10 = httpURLConnection.getResponseCode() == 200;
                        try {
                            if (z10) {
                                try {
                                    String headerField = httpURLConnection.getHeaderField("Last-Modified");
                                    this.mLastModified = headerField;
                                    if (this.mNeedProgress) {
                                        long contentLength = httpURLConnection.getContentLength();
                                        this.mContentLength = contentLength;
                                        if (contentLength <= 0) {
                                            HttpFileListener httpFileListener2 = this.mListener;
                                            if (httpFileListener2 != null) {
                                                httpFileListener2.onSaveFailed(file, null);
                                            }
                                            close(null, null, httpURLConnection);
                                            return;
                                        } else if (!FileUtil.isExternalStorageSpaceEnough(contentLength)) {
                                            HttpFileListener httpFileListener3 = this.mListener;
                                            if (httpFileListener3 != null) {
                                                httpFileListener3.onSaveFailed(file, null);
                                            }
                                            close(null, null, httpURLConnection);
                                            return;
                                        }
                                    }
                                    inputStream = httpURLConnection.getInputStream();
                                    try {
                                        byte[] bArr = new byte[8192];
                                        FileOutputStream fileOutputStream3 = new FileOutputStream(file);
                                        try {
                                            this.mDownloadingSize = 0L;
                                            while (true) {
                                                int read = inputStream.read(bArr);
                                                if (read == -1) {
                                                    break;
                                                }
                                                fileOutputStream3.write(bArr, i9, read);
                                                if (this.mNeedProgress) {
                                                    long j10 = this.mDownloadingSize;
                                                    long j11 = this.mContentLength;
                                                    byte[] bArr2 = bArr;
                                                    int i10 = (int) ((j10 * 100) / j11);
                                                    long j12 = j10 + read;
                                                    this.mDownloadingSize = j12;
                                                    int i11 = (int) ((j12 * 100) / j11);
                                                    if (i10 != i11 && (httpFileListener = this.mListener) != null) {
                                                        httpFileListener.onProgressUpdate(i11);
                                                    }
                                                    bArr = bArr2;
                                                    i9 = 0;
                                                }
                                            }
                                            fileOutputStream3.flush();
                                            HttpFileListener httpFileListener4 = this.mListener;
                                            if (httpFileListener4 != null) {
                                                httpFileListener4.onProgressUpdate(100);
                                                this.mListener.onSaveSuccess(file, headerField);
                                            }
                                            fileOutputStream = fileOutputStream3;
                                            e = null;
                                        } catch (Exception e12) {
                                            e = e12;
                                            i9 = z10;
                                            fileOutputStream2 = fileOutputStream3;
                                            close(fileOutputStream2, inputStream, httpURLConnection);
                                            z10 = i9;
                                            callFailed(z10, e, file);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            fileOutputStream2 = fileOutputStream3;
                                            close(fileOutputStream2, inputStream, httpURLConnection);
                                            throw th;
                                        }
                                    } catch (Exception e13) {
                                        e = e13;
                                        i9 = z10;
                                        fileOutputStream2 = null;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        fileOutputStream2 = null;
                                    }
                                } catch (Exception e14) {
                                    e = e14;
                                    i9 = z10;
                                    fileOutputStream2 = null;
                                    inputStream = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    fileOutputStream2 = null;
                                    inputStream = null;
                                }
                            } else if (responseCode == 304) {
                                try {
                                    HttpFileListener httpFileListener5 = this.mListener;
                                    if (httpFileListener5 != null) {
                                        httpFileListener5.onProgressUpdate(100);
                                        fileOutputStream = null;
                                        this.mListener.onSaveSuccess(null, this.mLastModified);
                                    } else {
                                        fileOutputStream = null;
                                    }
                                    e = fileOutputStream;
                                    inputStream = e;
                                } catch (Exception e15) {
                                    e = e15;
                                    fileOutputStream2 = null;
                                    inputStream = fileOutputStream2;
                                    i9 = z10;
                                    close(fileOutputStream2, inputStream, httpURLConnection);
                                    z10 = i9;
                                    callFailed(z10, e, file);
                                } catch (Throwable th5) {
                                    th = th5;
                                    fileOutputStream2 = null;
                                    inputStream = fileOutputStream2;
                                    close(fileOutputStream2, inputStream, httpURLConnection);
                                    throw th;
                                }
                            } else {
                                fileOutputStream = null;
                                e = new Exception("http status got exception. code = " + responseCode);
                                inputStream = null;
                            }
                            close(fileOutputStream, inputStream, httpURLConnection);
                        } catch (Exception e16) {
                            e = e16;
                        }
                    } catch (Exception e17) {
                        e = e17;
                        inputStream = null;
                        i9 = 0;
                        close(fileOutputStream2, inputStream, httpURLConnection);
                        z10 = i9;
                        callFailed(z10, e, file);
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Exception e18) {
                e = e18;
                httpURLConnection = null;
                inputStream = null;
            }
            callFailed(z10, e, file);
        } catch (Throwable th7) {
            th = th7;
            httpURLConnection = null;
            inputStream = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        HttpFileListener httpFileListener;
        boolean z10 = TextUtils.isEmpty(this.mUrl) || TextUtils.isEmpty(this.mFolder) || TextUtils.isEmpty(this.mFilename);
        if (FileUtil.isNetworkAvailable(this.mContext) && !z10 && this.mUrl.startsWith("http")) {
            File file = new File(this.mFolder);
            if (!file.exists()) {
                file.mkdirs();
            } else if (file.isFile() && (httpFileListener = this.mListener) != null) {
                httpFileListener.onSaveFailed(file, null);
                return;
            }
            request();
            return;
        }
        fail(null, 0);
    }
}
