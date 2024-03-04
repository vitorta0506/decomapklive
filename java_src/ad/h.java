package ad;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.tencent.thumbplayer.api.TPErrorCode;
/* loaded from: classes4.dex */
public class h implements ad.b {

    /* renamed from: a  reason: collision with root package name */
    private final int f731a;

    /* renamed from: b  reason: collision with root package name */
    private final int f732b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f733c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final d f734d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f735e;

    /* loaded from: classes4.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f736a;

        /* renamed from: b  reason: collision with root package name */
        int f737b;

        /* renamed from: c  reason: collision with root package name */
        boolean f738c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        d f739d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        String f740e;

        @NonNull
        public h a() {
            if (this.f739d == null) {
                this.f739d = new e();
            }
            return new h(this);
        }

        @NonNull
        public b b(int i9) {
            this.f736a = i9;
            return this;
        }

        @NonNull
        public b c(int i9) {
            this.f737b = i9;
            return this;
        }

        @NonNull
        public b d(boolean z10) {
            this.f738c = z10;
            return this;
        }

        @NonNull
        public b e(@Nullable String str) {
            this.f740e = str;
            return this;
        }

        private b() {
            this.f736a = 2;
            this.f737b = 0;
            this.f738c = true;
            this.f740e = "PRETTY_LOGGER";
        }
    }

    @Nullable
    private String a(@Nullable String str) {
        if (!j.d(str) && !j.b(this.f735e, str)) {
            return this.f735e + "-" + str;
        }
        return this.f735e;
    }

    private String b(@NonNull String str) {
        j.a(str);
        return str.substring(str.lastIndexOf(".") + 1);
    }

    private int c(@NonNull StackTraceElement[] stackTraceElementArr) {
        j.a(stackTraceElementArr);
        for (int i9 = 5; i9 < stackTraceElementArr.length; i9++) {
            String className = stackTraceElementArr[i9].getClassName();
            if (!className.equals(g.class.getName()) && !className.equals(f.class.getName())) {
                return i9 - 1;
            }
        }
        return -1;
    }

    private void d(int i9, @Nullable String str) {
        e(i9, str, "└────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
    }

    private void e(int i9, @Nullable String str, @NonNull String str2) {
        j.a(str2);
        this.f734d.log(i9, str, str2);
    }

    private void f(int i9, @Nullable String str, @NonNull String str2) {
        String[] split;
        j.a(str2);
        for (String str3 : str2.split(System.getProperty("line.separator"))) {
            e(i9, str, "│ " + str3);
        }
    }

    private void g(int i9, @Nullable String str) {
        e(i9, str, "├┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄");
    }

    private void h(int i9, @Nullable String str, int i10) {
        int i11;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (this.f733c) {
            e(i9, str, "│ Thread: " + Thread.currentThread().getName());
            g(i9, str);
        }
        int c10 = c(stackTrace) + this.f732b;
        if (i10 + c10 > stackTrace.length) {
            i10 = (stackTrace.length - c10) - 1;
        }
        String str2 = "";
        while (i10 > 0) {
            if (i10 + c10 < stackTrace.length) {
                str2 = str2 + "   ";
                e(i9, str, "│ " + str2 + b(stackTrace[i11].getClassName()) + "." + stackTrace[i11].getMethodName() + "  (" + stackTrace[i11].getFileName() + CertificateUtil.DELIMITER + stackTrace[i11].getLineNumber() + ")");
            }
            i10--;
        }
    }

    private void i(int i9, @Nullable String str) {
        e(i9, str, "┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────");
    }

    @NonNull
    public static b j() {
        return new b();
    }

    @Override // ad.b
    public void log(int i9, @Nullable String str, @NonNull String str2) {
        j.a(str2);
        String a10 = a(str);
        i(i9, a10);
        h(i9, a10, this.f731a);
        byte[] bytes = str2.getBytes();
        int length = bytes.length;
        if (length <= 4000) {
            if (this.f731a > 0) {
                g(i9, a10);
            }
            f(i9, a10, str2);
            d(i9, a10);
            return;
        }
        if (this.f731a > 0) {
            g(i9, a10);
        }
        for (int i10 = 0; i10 < length; i10 += TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY) {
            f(i9, a10, new String(bytes, i10, Math.min(length - i10, (int) TPErrorCode.TP_ERROR_TYPE_DOWNLOAD_PROXY)));
        }
        d(i9, a10);
    }

    private h(@NonNull b bVar) {
        j.a(bVar);
        this.f731a = bVar.f736a;
        this.f732b = bVar.f737b;
        this.f733c = bVar.f738c;
        this.f734d = bVar.f739d;
        this.f735e = bVar.f740e;
    }
}
