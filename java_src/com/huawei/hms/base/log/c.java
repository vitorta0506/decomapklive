package com.huawei.hms.base.log;

import android.os.Process;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    public String f27264b;

    /* renamed from: c  reason: collision with root package name */
    public String f27265c;

    /* renamed from: d  reason: collision with root package name */
    public int f27266d;

    /* renamed from: g  reason: collision with root package name */
    public String f27269g;

    /* renamed from: h  reason: collision with root package name */
    public int f27270h;

    /* renamed from: i  reason: collision with root package name */
    public int f27271i;

    /* renamed from: j  reason: collision with root package name */
    public int f27272j;

    /* renamed from: a  reason: collision with root package name */
    public final StringBuilder f27263a = new StringBuilder();

    /* renamed from: e  reason: collision with root package name */
    public long f27267e = 0;

    /* renamed from: f  reason: collision with root package name */
    public long f27268f = 0;

    public c(int i9, String str, int i10, String str2) {
        this.f27265c = "HMS";
        this.f27272j = i9;
        this.f27264b = str;
        this.f27266d = i10;
        if (str2 != null) {
            this.f27265c = str2;
        }
        b();
    }

    public static String a(int i9) {
        return i9 != 3 ? i9 != 4 ? i9 != 5 ? i9 != 6 ? String.valueOf(i9) : ExifInterface.LONGITUDE_EAST : ExifInterface.LONGITUDE_WEST : "I" : "D";
    }

    public final c b() {
        this.f27267e = System.currentTimeMillis();
        Thread currentThread = Thread.currentThread();
        this.f27268f = currentThread.getId();
        this.f27270h = Process.myPid();
        StackTraceElement[] stackTrace = currentThread.getStackTrace();
        int length = stackTrace.length;
        int i9 = this.f27272j;
        if (length > i9) {
            StackTraceElement stackTraceElement = stackTrace[i9];
            this.f27269g = stackTraceElement.getFileName();
            this.f27271i = stackTraceElement.getLineNumber();
        }
        return this;
    }

    public String c() {
        StringBuilder sb2 = new StringBuilder();
        b(sb2);
        return sb2.toString();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        b(sb2);
        a(sb2);
        return sb2.toString();
    }

    public <T> c a(T t10) {
        this.f27263a.append(t10);
        return this;
    }

    public c a(Throwable th2) {
        a((c) '\n').a((c) Log.getStackTraceString(th2));
        return this;
    }

    public String a() {
        StringBuilder sb2 = new StringBuilder();
        a(sb2);
        return sb2.toString();
    }

    public final StringBuilder a(StringBuilder sb2) {
        sb2.append(' ');
        sb2.append(this.f27263a.toString());
        return sb2;
    }

    public final StringBuilder b(StringBuilder sb2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
        sb2.append('[');
        sb2.append(simpleDateFormat.format(Long.valueOf(this.f27267e)));
        String a10 = a(this.f27266d);
        sb2.append(' ');
        sb2.append(a10);
        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb2.append(this.f27265c);
        sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb2.append(this.f27264b);
        sb2.append(' ');
        sb2.append(this.f27270h);
        sb2.append(':');
        sb2.append(this.f27268f);
        sb2.append(' ');
        sb2.append(this.f27269g);
        sb2.append(':');
        sb2.append(this.f27271i);
        sb2.append(']');
        return sb2;
    }
}
