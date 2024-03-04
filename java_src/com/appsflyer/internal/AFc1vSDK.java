package com.appsflyer.internal;

import androidx.annotation.NonNull;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
/* loaded from: classes.dex */
public final class AFc1vSDK {
    private final int values;

    public AFc1vSDK(int i9) {
        this.values = i9;
    }

    @NonNull
    private static String AFKeystoreWrapper(HttpURLConnection httpURLConnection, boolean z10) throws IOException {
        BufferedReader bufferedReader;
        InputStream errorStream;
        InputStreamReader inputStreamReader = null;
        try {
            if (z10) {
                errorStream = httpURLConnection.getInputStream();
            } else {
                errorStream = httpURLConnection.getErrorStream();
            }
            if (errorStream == null) {
                return "";
            }
            StringBuilder sb2 = new StringBuilder();
            InputStreamReader inputStreamReader2 = new InputStreamReader(errorStream);
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                boolean z11 = true;
                while (true) {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine != null) {
                            if (!z11) {
                                sb2.append('\n');
                            }
                            sb2.append(readLine);
                            z11 = false;
                        } else {
                            String obj = sb2.toString();
                            inputStreamReader2.close();
                            bufferedReader2.close();
                            return obj;
                        }
                    } catch (Throwable th2) {
                        inputStreamReader = inputStreamReader2;
                        bufferedReader = bufferedReader2;
                        th = th2;
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                inputStreamReader = inputStreamReader2;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x021d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.appsflyer.internal.AFc1pSDK<java.lang.String> AFInAppEventType(com.appsflyer.internal.AFb1wSDK r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFc1vSDK.AFInAppEventType(com.appsflyer.internal.AFb1wSDK):com.appsflyer.internal.AFc1pSDK");
    }
}
