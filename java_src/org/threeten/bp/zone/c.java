package org.threeten.bp.zone;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StreamCorruptedException;
import java.net.URL;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes7.dex */
public final class c extends f {

    /* renamed from: c  reason: collision with root package name */
    private List<String> f56677c;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentNavigableMap<String, a> f56678d = new ConcurrentSkipListMap();

    /* renamed from: e  reason: collision with root package name */
    private Set<String> f56679e = new CopyOnWriteArraySet();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f56680a;

        /* renamed from: b  reason: collision with root package name */
        private final String[] f56681b;

        /* renamed from: c  reason: collision with root package name */
        private final short[] f56682c;

        /* renamed from: d  reason: collision with root package name */
        private final AtomicReferenceArray<Object> f56683d;

        a(String str, String[] strArr, short[] sArr, AtomicReferenceArray<Object> atomicReferenceArray) {
            this.f56683d = atomicReferenceArray;
            this.f56680a = str;
            this.f56681b = strArr;
            this.f56682c = sArr;
        }

        d b(short s10) throws Exception {
            Object obj = this.f56683d.get(s10);
            if (obj instanceof byte[]) {
                obj = org.threeten.bp.zone.a.a(new DataInputStream(new ByteArrayInputStream((byte[]) obj)));
                this.f56683d.set(s10, obj);
            }
            return (d) obj;
        }

        d c(String str) {
            int binarySearch = Arrays.binarySearch(this.f56681b, str);
            if (binarySearch < 0) {
                return null;
            }
            try {
                return b(this.f56682c[binarySearch]);
            } catch (Exception e10) {
                throw new ZoneRulesException("Invalid binary time-zone data: TZDB:" + str + ", version: " + this.f56680a, e10);
            }
        }

        public String toString() {
            return this.f56680a;
        }
    }

    public c() {
        if (!i(f.class.getClassLoader())) {
            throw new ZoneRulesException("No time-zone rules found for 'TZDB'");
        }
    }

    private boolean h(InputStream inputStream) throws IOException, StreamCorruptedException {
        boolean z10 = false;
        for (a aVar : k(inputStream)) {
            a putIfAbsent = this.f56678d.putIfAbsent(aVar.f56680a, aVar);
            if (putIfAbsent != null && !putIfAbsent.f56680a.equals(aVar.f56680a)) {
                throw new ZoneRulesException("Data already loaded for TZDB time-zone rules version: " + aVar.f56680a);
            }
            z10 = true;
        }
        return z10;
    }

    private boolean i(ClassLoader classLoader) {
        URL url = null;
        try {
            Enumeration<URL> resources = classLoader.getResources("org/threeten/bp/TZDB.dat");
            boolean z10 = false;
            while (resources.hasMoreElements()) {
                URL nextElement = resources.nextElement();
                try {
                    z10 |= j(nextElement);
                    url = nextElement;
                } catch (Exception e10) {
                    e = e10;
                    url = nextElement;
                    throw new ZoneRulesException("Unable to load TZDB time-zone rules: " + url, e);
                }
            }
            return z10;
        } catch (Exception e11) {
            e = e11;
        }
    }

    private boolean j(URL url) throws ClassNotFoundException, IOException, ZoneRulesException {
        boolean z10 = false;
        if (this.f56679e.add(url.toExternalForm())) {
            InputStream inputStream = null;
            try {
                inputStream = url.openStream();
                z10 = false | h(inputStream);
            } finally {
                if (inputStream != null) {
                    inputStream.close();
                }
            }
        }
        return z10;
    }

    private Iterable<a> k(InputStream inputStream) throws IOException, StreamCorruptedException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        if (dataInputStream.readByte() == 1) {
            if ("TZDB".equals(dataInputStream.readUTF())) {
                int readShort = dataInputStream.readShort();
                String[] strArr = new String[readShort];
                for (int i9 = 0; i9 < readShort; i9++) {
                    strArr[i9] = dataInputStream.readUTF();
                }
                int readShort2 = dataInputStream.readShort();
                String[] strArr2 = new String[readShort2];
                for (int i10 = 0; i10 < readShort2; i10++) {
                    strArr2[i10] = dataInputStream.readUTF();
                }
                this.f56677c = Arrays.asList(strArr2);
                int readShort3 = dataInputStream.readShort();
                Object[] objArr = new Object[readShort3];
                for (int i11 = 0; i11 < readShort3; i11++) {
                    byte[] bArr = new byte[dataInputStream.readShort()];
                    dataInputStream.readFully(bArr);
                    objArr[i11] = bArr;
                }
                AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(objArr);
                HashSet hashSet = new HashSet(readShort);
                for (int i12 = 0; i12 < readShort; i12++) {
                    int readShort4 = dataInputStream.readShort();
                    String[] strArr3 = new String[readShort4];
                    short[] sArr = new short[readShort4];
                    for (int i13 = 0; i13 < readShort4; i13++) {
                        strArr3[i13] = strArr2[dataInputStream.readShort()];
                        sArr[i13] = dataInputStream.readShort();
                    }
                    hashSet.add(new a(strArr[i12], strArr3, sArr, atomicReferenceArray));
                }
                return hashSet;
            }
            throw new StreamCorruptedException("File format not recognised");
        }
        throw new StreamCorruptedException("File format not recognised");
    }

    @Override // org.threeten.bp.zone.f
    protected d d(String str, boolean z10) {
        jl.d.i(str, "zoneId");
        d c10 = this.f56678d.lastEntry().getValue().c(str);
        if (c10 != null) {
            return c10;
        }
        throw new ZoneRulesException("Unknown time-zone ID: " + str);
    }

    @Override // org.threeten.bp.zone.f
    protected Set<String> e() {
        return new HashSet(this.f56677c);
    }

    public String toString() {
        return "TZDB";
    }
}
