package com.xiaomi.push;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.light.utils.IOUtils;
/* loaded from: classes5.dex */
public class t implements tf.a {

    /* renamed from: e  reason: collision with root package name */
    private static final SimpleDateFormat f37433e = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aaa");

    /* renamed from: f  reason: collision with root package name */
    public static String f37434f = "/MiPushLog";

    /* renamed from: g  reason: collision with root package name */
    private static List<Pair<String, Throwable>> f37435g = Collections.synchronizedList(new ArrayList());

    /* renamed from: h  reason: collision with root package name */
    private static volatile t f37436h;

    /* renamed from: a  reason: collision with root package name */
    private String f37437a;

    /* renamed from: b  reason: collision with root package name */
    private Context f37438b;

    /* renamed from: c  reason: collision with root package name */
    private String f37439c = "";

    /* renamed from: d  reason: collision with root package name */
    private Handler f37440d;

    private t(Context context) {
        this.f37438b = context;
        if (context.getApplicationContext() != null) {
            this.f37438b = context.getApplicationContext();
        }
        this.f37437a = this.f37438b.getPackageName() + "-" + Process.myPid();
        HandlerThread handlerThread = new HandlerThread("Log2FileHandlerThread");
        handlerThread.start();
        this.f37440d = new Handler(handlerThread.getLooper());
    }

    public static t b(Context context) {
        if (f37436h == null) {
            synchronized (t.class) {
                if (f37436h == null) {
                    f37436h = new t(context);
                }
            }
        }
        return f37436h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x016e -> B:109:0x0173). Please submit an issue!!! */
    public void f() {
        FileLock fileLock;
        RandomAccessFile randomAccessFile;
        File file;
        File externalFilesDir;
        BufferedWriter bufferedWriter = null;
        try {
            try {
                if (TextUtils.isEmpty(this.f37439c) && (externalFilesDir = this.f37438b.getExternalFilesDir(null)) != null) {
                    this.f37439c = externalFilesDir.getAbsolutePath() + "";
                }
                file = new File(this.f37439c + f37434f);
            } catch (IOException e10) {
                Log.e(this.f37437a, "", e10);
            }
        } catch (Exception e11) {
            e = e11;
            fileLock = null;
            randomAccessFile = null;
        } catch (Throwable th2) {
            th = th2;
            fileLock = null;
            randomAccessFile = null;
        }
        if ((!file.exists() || !file.isDirectory()) && !file.mkdirs()) {
            Log.w(this.f37437a, "Create mipushlog directory fail.");
            return;
        }
        File file2 = new File(file, "log.lock");
        if (!file2.exists() || file2.isDirectory()) {
            file2.createNewFile();
        }
        randomAccessFile = new RandomAccessFile(file2, "rw");
        try {
            fileLock = randomAccessFile.getChannel().lock();
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(file, "log1.txt"), true)));
                    while (!f37435g.isEmpty()) {
                        try {
                            Pair<String, Throwable> remove = f37435g.remove(0);
                            String str = (String) remove.first;
                            if (remove.second != null) {
                                str = (str + IOUtils.LINE_SEPARATOR_UNIX) + Log.getStackTraceString((Throwable) remove.second);
                            }
                            bufferedWriter2.write(str + IOUtils.LINE_SEPARATOR_UNIX);
                        } catch (Exception e12) {
                            e = e12;
                            bufferedWriter = bufferedWriter2;
                            Log.e(this.f37437a, "", e);
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e13) {
                                    Log.e(this.f37437a, "", e13);
                                }
                            }
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e14) {
                                    Log.e(this.f37437a, "", e14);
                                }
                            }
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e15) {
                                    Log.e(this.f37437a, "", e15);
                                }
                            }
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e16) {
                                    Log.e(this.f37437a, "", e16);
                                }
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (IOException e17) {
                                    Log.e(this.f37437a, "", e17);
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                    File file3 = new File(file, "log1.txt");
                    if (file3.length() >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
                        File file4 = new File(file, "log0.txt");
                        if (file4.exists() && file4.isFile()) {
                            file4.delete();
                        }
                        file3.renameTo(file4);
                    }
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e18) {
                            Log.e(this.f37437a, "", e18);
                        }
                    }
                    randomAccessFile.close();
                } catch (Exception e19) {
                    e = e19;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Exception e20) {
            e = e20;
            fileLock = null;
        } catch (Throwable th5) {
            th = th5;
            fileLock = null;
        }
    }

    @Override // tf.a
    public final void a(String str, Throwable th2) {
        this.f37440d.post(new u(this, str, th2));
    }

    @Override // tf.a
    public final void log(String str) {
        a(str, null);
    }
}
