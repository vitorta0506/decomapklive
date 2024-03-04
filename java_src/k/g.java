package k;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.l;
import com.airbnb.lottie.network.FileExtension;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipInputStream;
/* loaded from: classes.dex */
public class g {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final f f53315a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final e f53316b;

    public g(@NonNull f fVar, @NonNull e eVar) {
        this.f53315a = fVar;
        this.f53316b = eVar;
    }

    @Nullable
    @WorkerThread
    private com.airbnb.lottie.d a(@NonNull String str, @Nullable String str2) {
        Pair<FileExtension, InputStream> a10;
        l<com.airbnb.lottie.d> i9;
        if (str2 == null || (a10 = this.f53315a.a(str)) == null) {
            return null;
        }
        FileExtension fileExtension = (FileExtension) a10.first;
        InputStream inputStream = (InputStream) a10.second;
        if (fileExtension == FileExtension.ZIP) {
            i9 = com.airbnb.lottie.e.s(new ZipInputStream(inputStream), str);
        } else {
            i9 = com.airbnb.lottie.e.i(inputStream, str);
        }
        if (i9.b() != null) {
            return i9.b();
        }
        return null;
    }

    @NonNull
    @WorkerThread
    private l<com.airbnb.lottie.d> b(@NonNull String str, @Nullable String str2) {
        m.d.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                c a10 = this.f53316b.a(str);
                if (a10.isSuccessful()) {
                    l<com.airbnb.lottie.d> d10 = d(str, a10.a0(), a10.Q(), str2);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Completed fetch from network. Success: ");
                    sb2.append(d10.b() != null);
                    m.d.a(sb2.toString());
                    try {
                        a10.close();
                    } catch (IOException e10) {
                        m.d.d("LottieFetchResult close failed ", e10);
                    }
                    return d10;
                }
                l<com.airbnb.lottie.d> lVar = new l<>(new IllegalArgumentException(a10.u()));
                try {
                    a10.close();
                } catch (IOException e11) {
                    m.d.d("LottieFetchResult close failed ", e11);
                }
                return lVar;
            } catch (Exception e12) {
                l<com.airbnb.lottie.d> lVar2 = new l<>(e12);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e13) {
                        m.d.d("LottieFetchResult close failed ", e13);
                    }
                }
                return lVar2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e14) {
                    m.d.d("LottieFetchResult close failed ", e14);
                }
            }
            throw th2;
        }
    }

    @NonNull
    private l<com.airbnb.lottie.d> d(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2, @Nullable String str3) throws IOException {
        FileExtension fileExtension;
        l<com.airbnb.lottie.d> f10;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (!str2.contains("application/zip") && !str.split("\\?")[0].endsWith(".lottie")) {
            m.d.a("Received json response.");
            fileExtension = FileExtension.JSON;
            f10 = e(str, inputStream, str3);
        } else {
            m.d.a("Handling zip response.");
            fileExtension = FileExtension.ZIP;
            f10 = f(str, inputStream, str3);
        }
        if (str3 != null && f10.b() != null) {
            this.f53315a.e(str, fileExtension);
        }
        return f10;
    }

    @NonNull
    private l<com.airbnb.lottie.d> e(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        if (str2 == null) {
            return com.airbnb.lottie.e.i(inputStream, null);
        }
        return com.airbnb.lottie.e.i(new FileInputStream(new File(this.f53315a.f(str, inputStream, FileExtension.JSON).getAbsolutePath())), str);
    }

    @NonNull
    private l<com.airbnb.lottie.d> f(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        if (str2 == null) {
            return com.airbnb.lottie.e.s(new ZipInputStream(inputStream), null);
        }
        return com.airbnb.lottie.e.s(new ZipInputStream(new FileInputStream(this.f53315a.f(str, inputStream, FileExtension.ZIP))), str);
    }

    @NonNull
    @WorkerThread
    public l<com.airbnb.lottie.d> c(@NonNull String str, @Nullable String str2) {
        com.airbnb.lottie.d a10 = a(str, str2);
        if (a10 != null) {
            return new l<>(a10);
        }
        m.d.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(str, str2);
    }
}
