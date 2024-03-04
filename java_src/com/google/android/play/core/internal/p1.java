package com.google.android.play.core.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class p1 {
    public static X509Certificate[][] a(String str) throws zzf, SecurityException, IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        try {
            Pair c10 = q1.c(randomAccessFile);
            if (c10 != null) {
                ByteBuffer byteBuffer = (ByteBuffer) c10.first;
                long longValue = ((Long) c10.second).longValue();
                long j10 = (-20) + longValue;
                if (j10 >= 0) {
                    randomAccessFile.seek(j10);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new zzf("ZIP64 APK not supported");
                    }
                }
                long a10 = q1.a(byteBuffer);
                if (a10 < longValue) {
                    if (q1.b(byteBuffer) + a10 == longValue) {
                        if (a10 >= 32) {
                            ByteBuffer allocate = ByteBuffer.allocate(24);
                            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                            allocate.order(byteOrder);
                            randomAccessFile.seek(a10 - allocate.capacity());
                            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                            if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                                int i9 = 0;
                                long j11 = allocate.getLong(0);
                                if (j11 < allocate.capacity() || j11 > 2147483639) {
                                    StringBuilder sb2 = new StringBuilder(57);
                                    sb2.append("APK Signing Block size out of range: ");
                                    sb2.append(j11);
                                    throw new zzf(sb2.toString());
                                }
                                int i10 = (int) (8 + j11);
                                long j12 = a10 - i10;
                                if (j12 >= 0) {
                                    ByteBuffer allocate2 = ByteBuffer.allocate(i10);
                                    allocate2.order(byteOrder);
                                    randomAccessFile.seek(j12);
                                    randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                                    long j13 = allocate2.getLong(0);
                                    if (j13 == j11) {
                                        Pair create = Pair.create(allocate2, Long.valueOf(j12));
                                        ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                        long longValue2 = ((Long) create.second).longValue();
                                        if (byteBuffer2.order() == byteOrder) {
                                            int capacity = byteBuffer2.capacity() - 24;
                                            if (capacity >= 8) {
                                                int capacity2 = byteBuffer2.capacity();
                                                if (capacity <= byteBuffer2.capacity()) {
                                                    int limit = byteBuffer2.limit();
                                                    int position = byteBuffer2.position();
                                                    byteBuffer2.position(0);
                                                    byteBuffer2.limit(capacity);
                                                    byteBuffer2.position(8);
                                                    ByteBuffer slice = byteBuffer2.slice();
                                                    slice.order(byteBuffer2.order());
                                                    byteBuffer2.position(0);
                                                    byteBuffer2.limit(limit);
                                                    byteBuffer2.position(position);
                                                    while (slice.hasRemaining()) {
                                                        i9++;
                                                        if (slice.remaining() >= 8) {
                                                            long j14 = slice.getLong();
                                                            if (j14 >= 4 && j14 <= 2147483647L) {
                                                                int i11 = (int) j14;
                                                                int position2 = slice.position() + i11;
                                                                if (i11 <= slice.remaining()) {
                                                                    if (slice.getInt() == 1896449818) {
                                                                        X509Certificate[][] l10 = l(randomAccessFile.getChannel(), new m1(e(slice, i11 - 4), longValue2, a10, longValue, byteBuffer, null));
                                                                        randomAccessFile.close();
                                                                        return l10;
                                                                    }
                                                                    slice.position(position2);
                                                                } else {
                                                                    int remaining = slice.remaining();
                                                                    StringBuilder sb3 = new StringBuilder(91);
                                                                    sb3.append("APK Signing Block entry #");
                                                                    sb3.append(i9);
                                                                    sb3.append(" size out of range: ");
                                                                    sb3.append(i11);
                                                                    sb3.append(", available: ");
                                                                    sb3.append(remaining);
                                                                    throw new zzf(sb3.toString());
                                                                }
                                                            } else {
                                                                StringBuilder sb4 = new StringBuilder(76);
                                                                sb4.append("APK Signing Block entry #");
                                                                sb4.append(i9);
                                                                sb4.append(" size out of range: ");
                                                                sb4.append(j14);
                                                                throw new zzf(sb4.toString());
                                                            }
                                                        } else {
                                                            StringBuilder sb5 = new StringBuilder(70);
                                                            sb5.append("Insufficient data to read size of APK Signing Block entry #");
                                                            sb5.append(i9);
                                                            throw new zzf(sb5.toString());
                                                        }
                                                    }
                                                    throw new zzf("No APK Signature Scheme v2 block in APK Signing Block");
                                                }
                                                StringBuilder sb6 = new StringBuilder(41);
                                                sb6.append("end > capacity: ");
                                                sb6.append(capacity);
                                                sb6.append(" > ");
                                                sb6.append(capacity2);
                                                throw new IllegalArgumentException(sb6.toString());
                                            }
                                            StringBuilder sb7 = new StringBuilder(38);
                                            sb7.append("end < start: ");
                                            sb7.append(capacity);
                                            sb7.append(" < ");
                                            sb7.append(8);
                                            throw new IllegalArgumentException(sb7.toString());
                                        }
                                        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                                    }
                                    StringBuilder sb8 = new StringBuilder(103);
                                    sb8.append("APK Signing Block sizes in header and footer do not match: ");
                                    sb8.append(j13);
                                    sb8.append(" vs ");
                                    sb8.append(j11);
                                    throw new zzf(sb8.toString());
                                }
                                StringBuilder sb9 = new StringBuilder(59);
                                sb9.append("APK Signing Block offset out of range: ");
                                sb9.append(j12);
                                throw new zzf(sb9.toString());
                            }
                            throw new zzf("No APK Signing Block before ZIP Central Directory");
                        }
                        StringBuilder sb10 = new StringBuilder(87);
                        sb10.append("APK too small for APK Signing Block. ZIP Central Directory offset: ");
                        sb10.append(a10);
                        throw new zzf(sb10.toString());
                    }
                    throw new zzf("ZIP Central Directory is not immediately followed by End of Central Directory");
                }
                StringBuilder sb11 = new StringBuilder(122);
                sb11.append("ZIP Central Directory offset out of range: ");
                sb11.append(a10);
                sb11.append(". ZIP End of Central Directory offset: ");
                sb11.append(longValue);
                throw new zzf(sb11.toString());
            }
            long length = randomAccessFile.length();
            StringBuilder sb12 = new StringBuilder(102);
            sb12.append("Not an APK file: ZIP End of Central Directory record not found in file with ");
            sb12.append(length);
            sb12.append(" bytes");
            throw new zzf(sb12.toString());
        } finally {
            try {
                randomAccessFile.close();
            } catch (IOException unused) {
            }
        }
    }

    private static int b(int i9) {
        if (i9 != 1) {
            if (i9 == 2) {
                return 64;
            }
            StringBuilder sb2 = new StringBuilder(44);
            sb2.append("Unknown content digest algorthm: ");
            sb2.append(i9);
            throw new IllegalArgumentException(sb2.toString());
        }
        return 32;
    }

    private static int c(int i9) {
        if (i9 != 513) {
            if (i9 != 514) {
                if (i9 != 769) {
                    switch (i9) {
                        case 257:
                        case 259:
                            return 1;
                        case 258:
                        case 260:
                            return 2;
                        default:
                            String valueOf = String.valueOf(Long.toHexString(i9));
                            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown signature algorithm: 0x".concat(valueOf) : new String("Unknown signature algorithm: 0x"));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    private static String d(int i9) {
        if (i9 != 1) {
            if (i9 == 2) {
                return "SHA-512";
            }
            StringBuilder sb2 = new StringBuilder(44);
            sb2.append("Unknown content digest algorthm: ");
            sb2.append(i9);
            throw new IllegalArgumentException(sb2.toString());
        }
        return "SHA-256";
    }

    private static ByteBuffer e(ByteBuffer byteBuffer, int i9) throws BufferUnderflowException {
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i10 = i9 + position;
        if (i10 >= position && i10 <= limit) {
            byteBuffer.limit(i10);
            try {
                ByteBuffer slice = byteBuffer.slice();
                slice.order(byteBuffer.order());
                byteBuffer.position(i10);
                return slice;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        throw new BufferUnderflowException();
    }

    private static ByteBuffer f(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i9 = byteBuffer.getInt();
            if (i9 >= 0) {
                if (i9 <= byteBuffer.remaining()) {
                    return e(byteBuffer, i9);
                }
                int remaining = byteBuffer.remaining();
                StringBuilder sb2 = new StringBuilder(101);
                sb2.append("Length-prefixed field longer than remaining buffer. Field length: ");
                sb2.append(i9);
                sb2.append(", remaining: ");
                sb2.append(remaining);
                throw new IOException(sb2.toString());
            }
            throw new IllegalArgumentException("Negative length");
        }
        int remaining2 = byteBuffer.remaining();
        StringBuilder sb3 = new StringBuilder(93);
        sb3.append("Remaining buffer too short to contain length of length-prefixed field. Remaining: ");
        sb3.append(remaining2);
        throw new IOException(sb3.toString());
    }

    private static void g(int i9, byte[] bArr, int i10) {
        bArr[1] = (byte) (i9 & 255);
        bArr[2] = (byte) ((i9 >>> 8) & 255);
        bArr[3] = (byte) ((i9 >>> 16) & 255);
        bArr[4] = (byte) (i9 >> 24);
    }

    private static void h(Map map, FileChannel fileChannel, long j10, long j11, long j12, ByteBuffer byteBuffer) throws SecurityException {
        if (!map.isEmpty()) {
            l1 l1Var = new l1(fileChannel, 0L, j10);
            l1 l1Var2 = new l1(fileChannel, j11, j12 - j11);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            q1.d(duplicate, j10);
            z zVar = new z(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            int i9 = 0;
            for (Integer num : map.keySet()) {
                iArr[i9] = num.intValue();
                i9++;
            }
            try {
                byte[][] k10 = k(iArr, new w0[]{l1Var, l1Var2, zVar});
                for (int i10 = 0; i10 < size; i10++) {
                    int i11 = iArr[i10];
                    if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i11)), k10[i10])) {
                        throw new SecurityException(d(i11).concat(" digest of contents did not verify"));
                    }
                }
                return;
            } catch (DigestException e10) {
                throw new SecurityException("Failed to compute digest(s) of contents", e10);
            }
        }
        throw new SecurityException("No digests provided");
    }

    private static byte[] i(ByteBuffer byteBuffer) throws IOException {
        int i9 = byteBuffer.getInt();
        if (i9 >= 0) {
            if (i9 <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i9];
                byteBuffer.get(bArr);
                return bArr;
            }
            int remaining = byteBuffer.remaining();
            StringBuilder sb2 = new StringBuilder(90);
            sb2.append("Underflow while reading length-prefixed value. Length: ");
            sb2.append(i9);
            sb2.append(", available: ");
            sb2.append(remaining);
            throw new IOException(sb2.toString());
        }
        throw new IOException("Negative length");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
        r11 = c(r5);
        r12 = c(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
        if (r11 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r12 == 1) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.security.cert.X509Certificate[] j(java.nio.ByteBuffer r22, java.util.Map r23, java.security.cert.CertificateFactory r24) throws java.lang.SecurityException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.p1.j(java.nio.ByteBuffer, java.util.Map, java.security.cert.CertificateFactory):java.security.cert.X509Certificate[]");
    }

    private static byte[][] k(int[] iArr, w0[] w0VarArr) throws DigestException {
        long j10;
        int i9;
        int length;
        long j11 = 0;
        int i10 = 0;
        long j12 = 0;
        int i11 = 0;
        while (true) {
            j10 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            if (i11 >= 3) {
                break;
            }
            j12 += (w0VarArr[i11].zza() + 1048575) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            i11++;
        }
        if (j12 < 2097151) {
            int i12 = (int) j12;
            byte[][] bArr = new byte[iArr.length];
            int i13 = 0;
            while (true) {
                length = iArr.length;
                if (i13 >= length) {
                    break;
                }
                byte[] bArr2 = new byte[(b(iArr[i13]) * i12) + 5];
                bArr2[0] = 90;
                g(i12, bArr2, 1);
                bArr[i13] = bArr2;
                i13++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i14 = 0; i14 < iArr.length; i14++) {
                String d10 = d(iArr[i14]);
                try {
                    messageDigestArr[i14] = MessageDigest.getInstance(d10);
                } catch (NoSuchAlgorithmException e10) {
                    throw new RuntimeException(d10.concat(" digest not supported"), e10);
                }
            }
            int i15 = 0;
            int i16 = 0;
            for (i9 = 3; i15 < i9; i9 = 3) {
                w0 w0Var = w0VarArr[i15];
                long j13 = j11;
                long zza = w0Var.zza();
                while (zza > j11) {
                    int min = (int) Math.min(zza, j10);
                    g(min, bArr3, 1);
                    for (int i17 = 0; i17 < length; i17++) {
                        messageDigestArr[i17].update(bArr3);
                    }
                    long j14 = j13;
                    try {
                        w0Var.a(messageDigestArr, j14, min);
                        byte[] bArr4 = bArr3;
                        int i18 = 0;
                        while (i18 < iArr.length) {
                            int i19 = iArr[i18];
                            w0 w0Var2 = w0Var;
                            byte[] bArr5 = bArr[i18];
                            int b10 = b(i19);
                            int i20 = length;
                            MessageDigest messageDigest = messageDigestArr[i18];
                            MessageDigest[] messageDigestArr2 = messageDigestArr;
                            int digest = messageDigest.digest(bArr5, (i16 * b10) + 5, b10);
                            if (digest != b10) {
                                String algorithm = messageDigest.getAlgorithm();
                                StringBuilder sb2 = new StringBuilder(String.valueOf(algorithm).length() + 46);
                                sb2.append("Unexpected output size of ");
                                sb2.append(algorithm);
                                sb2.append(" digest: ");
                                sb2.append(digest);
                                throw new RuntimeException(sb2.toString());
                            }
                            i18++;
                            w0Var = w0Var2;
                            length = i20;
                            messageDigestArr = messageDigestArr2;
                        }
                        MessageDigest[] messageDigestArr3 = messageDigestArr;
                        long j15 = min;
                        long j16 = j14 + j15;
                        zza -= j15;
                        i16++;
                        bArr3 = bArr4;
                        j11 = 0;
                        j13 = j16;
                        messageDigestArr = messageDigestArr3;
                        j10 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                    } catch (IOException e11) {
                        StringBuilder sb3 = new StringBuilder(59);
                        sb3.append("Failed to digest chunk #");
                        sb3.append(i16);
                        sb3.append(" of section #");
                        sb3.append(i10);
                        throw new DigestException(sb3.toString(), e11);
                    }
                }
                i10++;
                i15++;
                j11 = 0;
                j10 = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            }
            byte[][] bArr6 = new byte[iArr.length];
            for (int i21 = 0; i21 < iArr.length; i21++) {
                int i22 = iArr[i21];
                byte[] bArr7 = bArr[i21];
                String d11 = d(i22);
                try {
                    bArr6[i21] = MessageDigest.getInstance(d11).digest(bArr7);
                } catch (NoSuchAlgorithmException e12) {
                    throw new RuntimeException(d11.concat(" digest not supported"), e12);
                }
            }
            return bArr6;
        }
        StringBuilder sb4 = new StringBuilder(37);
        sb4.append("Too many chunks: ");
        sb4.append(j12);
        throw new DigestException(sb4.toString());
    }

    private static X509Certificate[][] l(FileChannel fileChannel, m1 m1Var) throws SecurityException {
        ByteBuffer byteBuffer;
        long j10;
        long j11;
        long j12;
        ByteBuffer byteBuffer2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                byteBuffer = m1Var.f10584a;
                ByteBuffer f10 = f(byteBuffer);
                int i9 = 0;
                while (f10.hasRemaining()) {
                    i9++;
                    try {
                        arrayList.add(j(f(f10), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e10) {
                        StringBuilder sb2 = new StringBuilder(48);
                        sb2.append("Failed to parse/verify signer #");
                        sb2.append(i9);
                        sb2.append(" block");
                        throw new SecurityException(sb2.toString(), e10);
                    }
                }
                if (i9 > 0) {
                    if (!hashMap.isEmpty()) {
                        j10 = m1Var.f10585b;
                        j11 = m1Var.f10586c;
                        j12 = m1Var.f10587d;
                        byteBuffer2 = m1Var.f10588e;
                        h(hashMap, fileChannel, j10, j11, j12, byteBuffer2);
                        return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                    }
                    throw new SecurityException("No content digests found");
                }
                throw new SecurityException("No signers found");
            } catch (IOException e11) {
                throw new SecurityException("Failed to read list of signers", e11);
            }
        } catch (CertificateException e12) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e12);
        }
    }
}
