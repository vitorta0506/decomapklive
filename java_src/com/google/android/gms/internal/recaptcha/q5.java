package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import android.system.Os;
import android.system.StructStat;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class q5 {
    public static IOException a(p2 p2Var, Uri uri, IOException iOException) {
        try {
            n3 b10 = n3.b();
            b10.c();
            File file = (File) p2Var.a(uri, b10);
            if (file.exists()) {
                if (file.isFile()) {
                    if (file.canRead()) {
                        if (file.canWrite()) {
                            return c(file, iOException);
                        }
                        return c(file, iOException);
                    } else if (file.canWrite()) {
                        return c(file, iOException);
                    } else {
                        return c(file, iOException);
                    }
                } else if (file.canRead()) {
                    if (file.canWrite()) {
                        return c(file, iOException);
                    }
                    return c(file, iOException);
                } else if (file.canWrite()) {
                    return c(file, iOException);
                } else {
                    return c(file, iOException);
                }
            }
            return c(file, iOException);
        } catch (IOException unused) {
            return new IOException(iOException);
        }
    }

    private static IOException b(File file, IOException iOException) {
        String concat;
        try {
            Locale locale = Locale.US;
            String valueOf = String.valueOf(String.format(locale, " canonical[%s] freeSpace[%d]", file.getCanonicalPath(), Long.valueOf(file.getFreeSpace())));
            concat = valueOf.length() != 0 ? "Inoperable file:".concat(valueOf) : new String("Inoperable file:");
            try {
                StructStat stat = Os.stat(file.getCanonicalPath());
                String valueOf2 = String.valueOf(concat);
                String valueOf3 = String.valueOf(String.format(locale, " mode[%d]", Integer.valueOf(stat.st_mode)));
                concat = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
            } catch (Exception unused) {
            }
        } catch (IOException unused2) {
            concat = String.valueOf("Inoperable file:").concat(" failed");
        }
        return new IOException(concat, iOException);
    }

    private static IOException c(File file, IOException iOException) {
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            return b(file, iOException);
        }
        if (parentFile.exists()) {
            if (parentFile.isDirectory()) {
                if (parentFile.canRead()) {
                    if (parentFile.canWrite()) {
                        return b(file, iOException);
                    }
                    return b(file, iOException);
                } else if (parentFile.canWrite()) {
                    return b(file, iOException);
                } else {
                    return b(file, iOException);
                }
            } else if (parentFile.canRead()) {
                if (parentFile.canWrite()) {
                    return b(file, iOException);
                }
                return b(file, iOException);
            } else if (parentFile.canWrite()) {
                return b(file, iOException);
            } else {
                return b(file, iOException);
            }
        }
        return b(file, iOException);
    }
}
