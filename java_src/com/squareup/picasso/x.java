package com.squareup.picasso;

import java.io.PrintWriter;
/* loaded from: classes4.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public final int f30062a;

    /* renamed from: b  reason: collision with root package name */
    public final int f30063b;

    /* renamed from: c  reason: collision with root package name */
    public final long f30064c;

    /* renamed from: d  reason: collision with root package name */
    public final long f30065d;

    /* renamed from: e  reason: collision with root package name */
    public final long f30066e;

    /* renamed from: f  reason: collision with root package name */
    public final long f30067f;

    /* renamed from: g  reason: collision with root package name */
    public final long f30068g;

    /* renamed from: h  reason: collision with root package name */
    public final long f30069h;

    /* renamed from: i  reason: collision with root package name */
    public final long f30070i;

    /* renamed from: j  reason: collision with root package name */
    public final long f30071j;

    /* renamed from: k  reason: collision with root package name */
    public final int f30072k;

    /* renamed from: l  reason: collision with root package name */
    public final int f30073l;

    /* renamed from: m  reason: collision with root package name */
    public final int f30074m;

    /* renamed from: n  reason: collision with root package name */
    public final long f30075n;

    public x(int i9, int i10, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, int i11, int i12, int i13, long j18) {
        this.f30062a = i9;
        this.f30063b = i10;
        this.f30064c = j10;
        this.f30065d = j11;
        this.f30066e = j12;
        this.f30067f = j13;
        this.f30068g = j14;
        this.f30069h = j15;
        this.f30070i = j16;
        this.f30071j = j17;
        this.f30072k = i11;
        this.f30073l = i12;
        this.f30074m = i13;
        this.f30075n = j18;
    }

    public void a(PrintWriter printWriter) {
        printWriter.println("===============BEGIN PICASSO STATS ===============");
        printWriter.println("Memory Cache Stats");
        printWriter.print("  Max Cache Size: ");
        printWriter.println(this.f30062a);
        printWriter.print("  Cache Size: ");
        printWriter.println(this.f30063b);
        printWriter.print("  Cache % Full: ");
        printWriter.println((int) Math.ceil((this.f30063b / this.f30062a) * 100.0f));
        printWriter.print("  Cache Hits: ");
        printWriter.println(this.f30064c);
        printWriter.print("  Cache Misses: ");
        printWriter.println(this.f30065d);
        printWriter.println("Network Stats");
        printWriter.print("  Download Count: ");
        printWriter.println(this.f30072k);
        printWriter.print("  Total Download Size: ");
        printWriter.println(this.f30066e);
        printWriter.print("  Average Download Size: ");
        printWriter.println(this.f30069h);
        printWriter.println("Bitmap Stats");
        printWriter.print("  Total Bitmaps Decoded: ");
        printWriter.println(this.f30073l);
        printWriter.print("  Total Bitmap Size: ");
        printWriter.println(this.f30067f);
        printWriter.print("  Total Transformed Bitmaps: ");
        printWriter.println(this.f30074m);
        printWriter.print("  Total Transformed Bitmap Size: ");
        printWriter.println(this.f30068g);
        printWriter.print("  Average Bitmap Size: ");
        printWriter.println(this.f30070i);
        printWriter.print("  Average Transformed Bitmap Size: ");
        printWriter.println(this.f30071j);
        printWriter.println("===============END PICASSO STATS ===============");
        printWriter.flush();
    }

    public String toString() {
        return "StatsSnapshot{maxSize=" + this.f30062a + ", size=" + this.f30063b + ", cacheHits=" + this.f30064c + ", cacheMisses=" + this.f30065d + ", downloadCount=" + this.f30072k + ", totalDownloadSize=" + this.f30066e + ", averageDownloadSize=" + this.f30069h + ", totalOriginalBitmapSize=" + this.f30067f + ", totalTransformedBitmapSize=" + this.f30068g + ", averageOriginalBitmapSize=" + this.f30070i + ", averageTransformedBitmapSize=" + this.f30071j + ", originalBitmapCount=" + this.f30073l + ", transformedBitmapCount=" + this.f30074m + ", timeStamp=" + this.f30075n + '}';
    }
}
