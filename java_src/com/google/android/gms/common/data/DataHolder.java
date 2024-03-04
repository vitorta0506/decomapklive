package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
@KeepName
/* loaded from: classes2.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    @NonNull
    public static final Parcelable.Creator<DataHolder> CREATOR = new c();
    private static final a zaf = new b(new String[0], null);

    /* renamed from: a  reason: collision with root package name */
    final int f7634a;

    /* renamed from: b  reason: collision with root package name */
    Bundle f7635b;

    /* renamed from: c  reason: collision with root package name */
    int[] f7636c;

    /* renamed from: d  reason: collision with root package name */
    int f7637d;
    private final String[] zag;
    private final CursorWindow[] zah;
    private final int zai;
    @Nullable
    private final Bundle zaj;

    /* renamed from: e  reason: collision with root package name */
    boolean f7638e = false;
    private boolean zak = true;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String[] f7639a;

        /* renamed from: b  reason: collision with root package name */
        private final ArrayList f7640b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final HashMap f7641c = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder(int i9, String[] strArr, CursorWindow[] cursorWindowArr, int i10, @Nullable Bundle bundle) {
        this.f7634a = i9;
        this.zag = strArr;
        this.zah = cursorWindowArr;
        this.zai = i10;
        this.zaj = bundle;
    }

    public int I() {
        return this.zai;
    }

    public final void K() {
        this.f7635b = new Bundle();
        int i9 = 0;
        int i10 = 0;
        while (true) {
            String[] strArr = this.zag;
            if (i10 >= strArr.length) {
                break;
            }
            this.f7635b.putInt(strArr[i10], i10);
            i10++;
        }
        this.f7636c = new int[this.zah.length];
        int i11 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zah;
            if (i9 >= cursorWindowArr.length) {
                this.f7637d = i11;
                return;
            }
            this.f7636c[i9] = i11;
            i11 += this.zah[i9].getNumRows() - (i11 - cursorWindowArr[i9].getStartPosition());
            i9++;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.f7638e) {
                this.f7638e = true;
                int i9 = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.zah;
                    if (i9 >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i9].close();
                    i9++;
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zak && this.zah.length > 0 && !isClosed()) {
                close();
                String obj = toString();
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: " + obj + ")");
            }
        } finally {
            super.finalize();
        }
    }

    @Nullable
    public Bundle getMetadata() {
        return this.zaj;
    }

    public boolean isClosed() {
        boolean z10;
        synchronized (this) {
            z10 = this.f7638e;
        }
        return z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i9) {
        int a10 = x3.a.a(parcel);
        x3.a.r(parcel, 1, this.zag, false);
        x3.a.t(parcel, 2, this.zah, i9, false);
        x3.a.k(parcel, 3, I());
        x3.a.e(parcel, 4, getMetadata(), false);
        x3.a.k(parcel, 1000, this.f7634a);
        x3.a.b(parcel, a10);
        if ((i9 & 1) != 0) {
            close();
        }
    }
}
