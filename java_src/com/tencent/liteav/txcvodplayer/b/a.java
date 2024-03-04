package com.tencent.liteav.txcvodplayer.b;

import android.os.AsyncTask;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: com.tencent.liteav.txcvodplayer.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static class C0323a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f31500a = new a((byte) 0);
    }

    /* loaded from: classes4.dex */
    public interface b {
        void a();

        void a(String str);
    }

    /* synthetic */ a(byte b10) {
        this();
    }

    public final void a(final String str, final b bVar) {
        AsyncTask.execute(new Runnable() { // from class: com.tencent.liteav.txcvodplayer.b.a.1
            @Override // java.lang.Runnable
            public final void run() {
                BufferedReader bufferedReader = null;
                try {
                    try {
                        URLConnection openConnection = new URL(str).openConnection();
                        openConnection.setConnectTimeout(15000);
                        openConnection.setReadTimeout(15000);
                        openConnection.connect();
                        InputStream inputStream = openConnection.getInputStream();
                        if (inputStream == null) {
                            b bVar2 = bVar;
                            if (bVar2 != null) {
                                bVar2.a();
                                return;
                            }
                            return;
                        }
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            while (true) {
                                String readLine = bufferedReader2.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                sb2.append(readLine);
                                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                            }
                            b bVar3 = bVar;
                            if (bVar3 != null) {
                                bVar3.a(sb2.toString());
                            }
                            try {
                                bufferedReader2.close();
                            } catch (IOException unused) {
                            }
                        } catch (IOException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            b bVar4 = bVar;
                            if (bVar4 != null) {
                                bVar4.a();
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused3) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e11) {
                        e = e11;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        });
    }

    private a() {
    }
}
