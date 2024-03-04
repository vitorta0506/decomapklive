package com.google.android.play.core.assetpacks;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.common.LocalTestingException;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class g2 implements c4 {

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10240i = new com.google.android.play.core.internal.g("FakeAssetPackService");

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicInteger f10241j = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private final String f10242a;

    /* renamed from: b  reason: collision with root package name */
    private final y f10243b;

    /* renamed from: c  reason: collision with root package name */
    private final j1 f10244c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f10245d;

    /* renamed from: e  reason: collision with root package name */
    private final v2 f10246e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10247f;

    /* renamed from: g  reason: collision with root package name */
    private final t2 f10248g;

    /* renamed from: h  reason: collision with root package name */
    private final Handler f10249h = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public g2(File file, y yVar, j1 j1Var, Context context, v2 v2Var, com.google.android.play.core.internal.g1 g1Var, t2 t2Var) {
        this.f10242a = file.getAbsolutePath();
        this.f10243b = yVar;
        this.f10244c = j1Var;
        this.f10245d = context;
        this.f10246e = v2Var;
        this.f10247f = g1Var;
        this.f10248g = t2Var;
    }

    @VisibleForTesting
    static long h(int i9, long j10) {
        if (i9 != 2) {
            if (i9 == 3 || i9 == 4) {
                return j10;
            }
            return 0L;
        }
        return j10 / 2;
    }

    private final Bundle k(int i9, String str, int i10) throws LocalTestingException {
        Bundle bundle = new Bundle();
        bundle.putInt(TPDownloadProxyEnum.USER_APP_VERSION_CODE, this.f10246e.a());
        bundle.putInt("session_id", i9);
        File[] m10 = m(str);
        ArrayList<String> arrayList = new ArrayList<>();
        long j10 = 0;
        for (File file : m10) {
            j10 += file.length();
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
            arrayList2.add(i10 == 3 ? new Intent().setData(Uri.EMPTY) : null);
            String a10 = com.google.android.play.core.internal.c1.a(file);
            bundle.putParcelableArrayList(u4.b.b("chunk_intents", str, a10), arrayList2);
            bundle.putString(u4.b.b("uncompressed_hash_sha256", str, a10), l(file));
            bundle.putLong(u4.b.b("uncompressed_size", str, a10), file.length());
            arrayList.add(a10);
        }
        bundle.putStringArrayList(u4.b.a("slice_ids", str), arrayList);
        bundle.putLong(u4.b.a("pack_version", str), this.f10246e.a());
        bundle.putInt(u4.b.a("status", str), i10);
        bundle.putInt(u4.b.a("error_code", str), 0);
        bundle.putLong(u4.b.a("bytes_downloaded", str), h(i10, j10));
        bundle.putLong(u4.b.a("total_bytes_to_download", str), j10);
        bundle.putStringArrayList("pack_names", new ArrayList<>(Arrays.asList(str)));
        bundle.putLong("bytes_downloaded", h(i10, j10));
        bundle.putLong("total_bytes_to_download", j10);
        final Intent putExtra = new Intent("com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE").putExtra("com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE", bundle);
        this.f10249h.post(new Runnable() { // from class: com.google.android.play.core.assetpacks.f2
            @Override // java.lang.Runnable
            public final void run() {
                g2.this.i(putExtra);
            }
        });
        return bundle;
    }

    private static String l(File file) throws LocalTestingException {
        try {
            return i2.a(Arrays.asList(file));
        } catch (IOException e10) {
            throw new LocalTestingException(String.format("Could not digest file: %s.", file), e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new LocalTestingException("SHA256 algorithm not supported.", e11);
        }
    }

    private final File[] m(final String str) throws LocalTestingException {
        File file = new File(this.f10242a);
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FilenameFilter() { // from class: com.google.android.play.core.assetpacks.d2
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str2) {
                    return str2.startsWith(String.valueOf(str).concat("-")) && str2.endsWith(".apk");
                }
            });
            if (listFiles != null) {
                if (listFiles.length != 0) {
                    for (File file2 : listFiles) {
                        if (com.google.android.play.core.internal.c1.a(file2).equals(str)) {
                            return listFiles;
                        }
                    }
                    throw new LocalTestingException(String.format("No main slice available for pack '%s'.", str));
                }
                throw new LocalTestingException(String.format("No APKs available for pack '%s'.", str));
            }
            throw new LocalTestingException(String.format("Failed fetching APKs for pack '%s'.", str));
        }
        throw new LocalTestingException(String.format("Local testing directory '%s' not found.", file));
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void a(final int i9, final String str) {
        f10240i.d("notifyModuleCompleted", new Object[0]);
        ((Executor) this.f10247f.zza()).execute(new Runnable() { // from class: com.google.android.play.core.assetpacks.e2
            @Override // java.lang.Runnable
            public final void run() {
                g2.this.j(i9, str);
            }
        });
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void b() {
        f10240i.d("keepAlive", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final d5.d c(int i9, String str, String str2, int i10) {
        File[] m10;
        int i11;
        f10240i.d("getChunkFileDescriptor(session=%d, %s, %s, %d)", Integer.valueOf(i9), str, str2, Integer.valueOf(i10));
        d5.o oVar = new d5.o();
        try {
        } catch (LocalTestingException e10) {
            f10240i.e("getChunkFileDescriptor failed", e10);
            oVar.b(e10);
        } catch (FileNotFoundException e11) {
            f10240i.e("getChunkFileDescriptor failed", e11);
            oVar.b(new LocalTestingException("Asset Slice file not found.", e11));
        }
        for (File file : m(str)) {
            if (com.google.android.play.core.internal.c1.a(file).equals(str2)) {
                oVar.c(ParcelFileDescriptor.open(file, 268435456));
                return oVar.a();
            }
        }
        throw new LocalTestingException(String.format("Local testing slice for '%s' not found.", str2));
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void d(int i9) {
        f10240i.d("notifySessionFailed", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void e(List list) {
        f10240i.d("cancelDownload(%s)", list);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final void f(int i9, String str, String str2, int i10) {
        f10240i.d("notifyChunkTransferred", new Object[0]);
    }

    @Override // com.google.android.play.core.assetpacks.c4
    public final d5.d g(Map map) {
        f10240i.d("syncPacks()", new Object[0]);
        return d5.f.c(new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void i(Intent intent) {
        this.f10243b.a(this.f10245d, intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void j(int i9, String str) {
        try {
            k(i9, str, 4);
        } catch (LocalTestingException e10) {
            f10240i.e("notifyModuleCompleted failed", e10);
        }
    }
}
