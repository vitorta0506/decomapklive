package e4;

import android.os.Process;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes2.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private static String f38445a;

    /* renamed from: b  reason: collision with root package name */
    private static int f38446b;

    @Nullable
    public static String a() {
        BufferedReader bufferedReader;
        if (f38445a == null) {
            int i9 = f38446b;
            if (i9 == 0) {
                i9 = Process.myPid();
                f38446b = i9;
            }
            String str = null;
            str = null;
            str = null;
            BufferedReader bufferedReader2 = null;
            if (i9 > 0) {
                try {
                    String str2 = "/proc/" + i9 + "/cmdline";
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        bufferedReader = new BufferedReader(new FileReader(str2));
                        try {
                            String readLine = bufferedReader.readLine();
                            com.google.android.gms.common.internal.p.j(readLine);
                            str = readLine.trim();
                        } catch (IOException unused) {
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedReader2 = bufferedReader;
                            j.a(bufferedReader2);
                            throw th;
                        }
                    } finally {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    }
                } catch (IOException unused2) {
                    bufferedReader = null;
                } catch (Throwable th3) {
                    th = th3;
                }
                j.a(bufferedReader);
            }
            f38445a = str;
        }
        return f38445a;
    }
}
