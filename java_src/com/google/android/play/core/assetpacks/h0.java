package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes2.dex */
final class h0 extends com.google.android.play.core.internal.e1 {

    /* renamed from: a  reason: collision with root package name */
    private final File f10254a;

    /* renamed from: b  reason: collision with root package name */
    private final File f10255b;

    /* renamed from: c  reason: collision with root package name */
    private final NavigableMap f10256c = new TreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(File file, File file2) throws IOException {
        this.f10254a = file;
        this.f10255b = file2;
        List<File> a10 = h3.a(file, file2);
        if (!a10.isEmpty()) {
            long j10 = 0;
            for (File file3 : a10) {
                this.f10256c.put(Long.valueOf(j10), file3);
                j10 += file3.length();
            }
            return;
        }
        throw new f1(String.format("Virtualized slice archive empty for %s, %s", file, file2));
    }

    private final InputStream d(long j10, Long l10) throws IOException {
        FileInputStream fileInputStream = new FileInputStream((File) this.f10256c.get(l10));
        if (fileInputStream.skip(j10 - l10.longValue()) == j10 - l10.longValue()) {
            return fileInputStream;
        }
        throw new f1(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l10));
    }

    @Override // com.google.android.play.core.internal.e1
    public final long a() {
        Map.Entry lastEntry = this.f10256c.lastEntry();
        return ((Long) lastEntry.getKey()).longValue() + ((File) lastEntry.getValue()).length();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.internal.e1
    public final InputStream b(long j10, long j11) throws IOException {
        if (j10 >= 0 && j11 >= 0) {
            long j12 = j10 + j11;
            if (j12 <= a()) {
                Long l10 = (Long) this.f10256c.floorKey(Long.valueOf(j10));
                Long l11 = (Long) this.f10256c.floorKey(Long.valueOf(j12));
                if (l10.equals(l11)) {
                    return new g0(d(j10, l10), j11);
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(d(j10, l10));
                Collection values = this.f10256c.subMap(l10, false, l11, false).values();
                if (!values.isEmpty()) {
                    arrayList.add(new j2(Collections.enumeration(values)));
                }
                arrayList.add(new g0(new FileInputStream((File) this.f10256c.get(l11)), j11 - (l11.longValue() - j10)));
                return new SequenceInputStream(Collections.enumeration(arrayList));
            }
            throw new f1(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(a()), Long.valueOf(j12)));
        }
        throw new f1(String.format("Invalid input parameters %s, %s", Long.valueOf(j10), Long.valueOf(j11)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
