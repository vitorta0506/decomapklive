package com.guochao.faceshow.aaspring.modulars.login.utils;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import javax.net.ssl.HttpsURLConnection;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static String f20548a = "MicroMsg.NetworkUtil";

    /* loaded from: classes3.dex */
    static class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private Handler f20549a;

        /* renamed from: b  reason: collision with root package name */
        private String f20550b;

        /* renamed from: c  reason: collision with root package name */
        private int f20551c;

        public a(Handler handler, String str, int i9) {
            this.f20549a = handler;
            this.f20550b = str;
            this.f20551c = i9;
        }

        private static byte[] b(String str) throws Exception {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (httpURLConnection == null) {
                Log.i(f.f20548a, "open connection failed.");
            }
            if (httpURLConnection.getResponseCode() >= 300) {
                httpURLConnection.disconnect();
                Log.w(f.f20548a, "dz[httpURLConnectionGet 300]");
                return null;
            }
            byte[] c10 = c(httpURLConnection.getInputStream());
            httpURLConnection.disconnect();
            return c10;
        }

        private static byte[] c(InputStream inputStream) throws IOException {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    inputStream.close();
                    return byteArray;
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.f20551c == 5) {
                try {
                    byte[] b10 = b(this.f20550b);
                    Message obtain = Message.obtain();
                    obtain.what = this.f20551c;
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("imgdata", b10);
                    obtain.setData(bundle);
                    this.f20549a.sendMessage(obtain);
                    return;
                } catch (Exception e10) {
                    Log.e(f.f20548a, e10.getMessage());
                    return;
                }
            }
            try {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) new URL(this.f20550b).openConnection();
                httpsURLConnection.setAllowUserInteraction(false);
                httpsURLConnection.setInstanceFollowRedirects(true);
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream = httpsURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8), 8);
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb2.append(readLine);
                    sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                inputStream.close();
                String sb3 = sb2.toString();
                Log.i(f.f20548a, sb3);
                Message obtain2 = Message.obtain();
                obtain2.what = this.f20551c;
                Bundle bundle2 = new Bundle();
                bundle2.putInt("code", responseCode);
                if (responseCode == 200) {
                    bundle2.putString("result", sb3);
                    obtain2.setData(bundle2);
                }
                this.f20549a.sendMessage(obtain2);
            } catch (Exception e11) {
                Message obtain3 = Message.obtain();
                obtain3.what = this.f20551c;
                this.f20549a.sendMessage(obtain3);
                Log.e(f.f20548a, e11.getMessage());
            }
        }
    }

    public static void b(Handler handler, String str, int i9) {
        new a(handler, str, i9).start();
    }
}
