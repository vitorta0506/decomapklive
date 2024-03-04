package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.y2;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: j  reason: collision with root package name */
    private static volatile b f37174j;

    /* renamed from: a  reason: collision with root package name */
    private final Object f37175a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final Object f37176b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final String f37177c = "mipush_region";

    /* renamed from: d  reason: collision with root package name */
    private final String f37178d = "mipush_country_code";

    /* renamed from: e  reason: collision with root package name */
    private final String f37179e = "mipush_region.lock";

    /* renamed from: f  reason: collision with root package name */
    private final String f37180f = "mipush_country_code.lock";

    /* renamed from: g  reason: collision with root package name */
    private volatile String f37181g;

    /* renamed from: h  reason: collision with root package name */
    private volatile String f37182h;

    /* renamed from: i  reason: collision with root package name */
    private Context f37183i;

    public b(Context context) {
        this.f37183i = context;
    }

    public static b a(Context context) {
        if (f37174j == null) {
            synchronized (b.class) {
                if (f37174j == null) {
                    f37174j = new b(context);
                }
            }
        }
        return f37174j;
    }

    private String c(Context context, String str, String str2, Object obj) {
        RandomAccessFile randomAccessFile;
        FileLock fileLock;
        File file = new File(context.getFilesDir(), str);
        FileLock fileLock2 = null;
        if (!file.exists()) {
            tf.c.l("No ready file to get data from " + str);
            return null;
        }
        synchronized (obj) {
            try {
                File file2 = new File(context.getFilesDir(), str2);
                y2.d(file2);
                randomAccessFile = new RandomAccessFile(file2, "rw");
            } catch (Exception e10) {
                e = e10;
                randomAccessFile = null;
                fileLock = null;
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile = null;
            }
            try {
                fileLock = randomAccessFile.getChannel().lock();
                try {
                    try {
                        String a10 = y2.a(file);
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e11) {
                                tf.c.o(e11);
                            }
                        }
                        y2.b(randomAccessFile);
                        return a10;
                    } catch (Exception e12) {
                        e = e12;
                        tf.c.o(e);
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e13) {
                                tf.c.o(e13);
                            }
                        }
                        y2.b(randomAccessFile);
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileLock2 = fileLock;
                    if (fileLock2 != null && fileLock2.isValid()) {
                        try {
                            fileLock2.release();
                        } catch (IOException e14) {
                            tf.c.o(e14);
                        }
                    }
                    y2.b(randomAccessFile);
                    throw th;
                }
            } catch (Exception e15) {
                e = e15;
                fileLock = null;
            } catch (Throwable th4) {
                th = th4;
                if (fileLock2 != null) {
                    fileLock2.release();
                }
                y2.b(randomAccessFile);
                throw th;
            }
        }
    }

    private void d(Context context, String str, String str2, String str3, Object obj) {
        RandomAccessFile randomAccessFile;
        synchronized (obj) {
            FileLock fileLock = null;
            try {
                try {
                    File file = new File(context.getFilesDir(), str3);
                    y2.d(file);
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    try {
                        try {
                            fileLock = randomAccessFile.getChannel().lock();
                            y2.c(new File(context.getFilesDir(), str2), str);
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e10) {
                                    tf.c.o(e10);
                                }
                            }
                        } catch (Exception e11) {
                            e = e11;
                            tf.c.o(e);
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e12) {
                                    tf.c.o(e12);
                                }
                            }
                            y2.b(randomAccessFile);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileLock != null && fileLock.isValid()) {
                            try {
                                fileLock.release();
                            } catch (IOException e13) {
                                tf.c.o(e13);
                            }
                        }
                        y2.b(randomAccessFile);
                        throw th;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            } catch (Exception e14) {
                e = e14;
                randomAccessFile = null;
            } catch (Throwable th4) {
                th = th4;
                randomAccessFile = null;
                if (fileLock != null) {
                    fileLock.release();
                }
                y2.b(randomAccessFile);
                throw th;
            }
            y2.b(randomAccessFile);
        }
    }

    public String b() {
        if (TextUtils.isEmpty(this.f37181g)) {
            this.f37181g = c(this.f37183i, "mipush_region", "mipush_region.lock", this.f37175a);
        }
        return this.f37181g;
    }

    public void e(String str) {
        if (TextUtils.equals(str, this.f37181g)) {
            return;
        }
        this.f37181g = str;
        d(this.f37183i, this.f37181g, "mipush_region", "mipush_region.lock", this.f37175a);
    }

    public String f() {
        if (TextUtils.isEmpty(this.f37182h)) {
            this.f37182h = c(this.f37183i, "mipush_country_code", "mipush_country_code.lock", this.f37176b);
        }
        return this.f37182h;
    }

    public void g(String str) {
        if (TextUtils.equals(str, this.f37182h)) {
            return;
        }
        this.f37182h = str;
        d(this.f37183i, this.f37182h, "mipush_country_code", "mipush_country_code.lock", this.f37176b);
    }
}
