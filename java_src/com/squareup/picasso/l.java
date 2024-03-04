package com.squareup.picasso;

import android.content.Context;
import android.graphics.Bitmap;
import java.util.LinkedHashMap;
import java.util.Objects;
/* loaded from: classes4.dex */
public class l implements d {

    /* renamed from: a  reason: collision with root package name */
    final LinkedHashMap<String, Bitmap> f29961a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29962b;

    /* renamed from: c  reason: collision with root package name */
    private int f29963c;

    /* renamed from: d  reason: collision with root package name */
    private int f29964d;

    /* renamed from: e  reason: collision with root package name */
    private int f29965e;

    /* renamed from: f  reason: collision with root package name */
    private int f29966f;

    /* renamed from: g  reason: collision with root package name */
    private int f29967g;

    public l(Context context) {
        this(c0.b(context));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(int r4) {
        /*
            r3 = this;
        L0:
            monitor-enter(r3)
            int r0 = r3.f29963c     // Catch: java.lang.Throwable -> L71
            if (r0 < 0) goto L52
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f29961a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L11
            int r0 = r3.f29963c     // Catch: java.lang.Throwable -> L71
            if (r0 != 0) goto L52
        L11:
            int r0 = r3.f29963c     // Catch: java.lang.Throwable -> L71
            if (r0 <= r4) goto L50
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f29961a     // Catch: java.lang.Throwable -> L71
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L1e
            goto L50
        L1e:
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r0 = r3.f29961a     // Catch: java.lang.Throwable -> L71
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L71
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L71
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L71
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L71
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> L71
            java.util.LinkedHashMap<java.lang.String, android.graphics.Bitmap> r2 = r3.f29961a     // Catch: java.lang.Throwable -> L71
            r2.remove(r1)     // Catch: java.lang.Throwable -> L71
            int r1 = r3.f29963c     // Catch: java.lang.Throwable -> L71
            int r0 = com.squareup.picasso.c0.k(r0)     // Catch: java.lang.Throwable -> L71
            int r1 = r1 - r0
            r3.f29963c = r1     // Catch: java.lang.Throwable -> L71
            int r0 = r3.f29965e     // Catch: java.lang.Throwable -> L71
            int r0 = r0 + 1
            r3.f29965e = r0     // Catch: java.lang.Throwable -> L71
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L71
            goto L0
        L50:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L71
            return
        L52:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L71
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
            r0.<init>()     // Catch: java.lang.Throwable -> L71
            java.lang.Class r1 = r3.getClass()     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L71
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            r0.append(r1)     // Catch: java.lang.Throwable -> L71
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L71
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L71
            throw r4     // Catch: java.lang.Throwable -> L71
        L71:
            r4 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L71
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.l.c(int):void");
    }

    @Override // com.squareup.picasso.d
    public final synchronized int a() {
        return this.f29962b;
    }

    @Override // com.squareup.picasso.d
    public void b(String str, Bitmap bitmap) {
        if (str != null && bitmap != null) {
            synchronized (this) {
                this.f29964d++;
                this.f29963c += c0.k(bitmap);
                Bitmap put = this.f29961a.put(str, bitmap);
                if (put != null) {
                    this.f29963c -= c0.k(put);
                }
            }
            c(this.f29962b);
            return;
        }
        throw new NullPointerException("key == null || bitmap == null");
    }

    @Override // com.squareup.picasso.d
    public Bitmap get(String str) {
        Objects.requireNonNull(str, "key == null");
        synchronized (this) {
            Bitmap bitmap = this.f29961a.get(str);
            if (bitmap != null) {
                this.f29966f++;
                return bitmap;
            }
            this.f29967g++;
            return null;
        }
    }

    @Override // com.squareup.picasso.d
    public final synchronized int size() {
        return this.f29963c;
    }

    public l(int i9) {
        if (i9 > 0) {
            this.f29962b = i9;
            this.f29961a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("Max size must be positive.");
    }
}
