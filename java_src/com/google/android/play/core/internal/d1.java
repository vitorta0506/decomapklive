package com.google.android.play.core.internal;

import com.tencent.thumbplayer.core.common.TPCodecParamers;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class d1 {
    public static long a(e1 e1Var, InputStream inputStream, OutputStream outputStream, long j10) throws IOException {
        byte[] bArr = new byte[16384];
        DataInputStream dataInputStream = new DataInputStream(new BufferedInputStream(inputStream, 4096));
        int readInt = dataInputStream.readInt();
        if (readInt != -771763713) {
            String valueOf = String.valueOf(String.format("%x", Integer.valueOf(readInt)));
            throw new zzck(valueOf.length() != 0 ? "Unexpected magic=".concat(valueOf) : new String("Unexpected magic="));
        }
        int read = dataInputStream.read();
        if (read != 4) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Unexpected version=");
            sb2.append(read);
            throw new zzck(sb2.toString());
        }
        long j11 = 0;
        while (true) {
            long j12 = j10 - j11;
            try {
                int read2 = dataInputStream.read();
                if (read2 == -1) {
                    throw new IOException("Patch file overrun");
                }
                if (read2 == 0) {
                    return j11;
                }
                switch (read2) {
                    case TPCodecParamers.TP_PROFILE_MJPEG_JPEG_LS /* 247 */:
                        read2 = dataInputStream.readUnsignedShort();
                        c(bArr, dataInputStream, outputStream, read2, j12);
                        break;
                    case 248:
                        read2 = dataInputStream.readInt();
                        c(bArr, dataInputStream, outputStream, read2, j12);
                        break;
                    case 249:
                        long readUnsignedShort = dataInputStream.readUnsignedShort();
                        read2 = dataInputStream.read();
                        if (read2 != -1) {
                            b(bArr, e1Var, outputStream, readUnsignedShort, read2, j12);
                            break;
                        } else {
                            throw new IOException("Unexpected end of patch");
                        }
                    case 250:
                        read2 = dataInputStream.readUnsignedShort();
                        b(bArr, e1Var, outputStream, dataInputStream.readUnsignedShort(), read2, j12);
                        break;
                    case 251:
                        read2 = dataInputStream.readInt();
                        b(bArr, e1Var, outputStream, dataInputStream.readUnsignedShort(), read2, j12);
                        break;
                    case 252:
                        long readInt2 = dataInputStream.readInt();
                        read2 = dataInputStream.read();
                        if (read2 != -1) {
                            b(bArr, e1Var, outputStream, readInt2, read2, j12);
                            break;
                        } else {
                            throw new IOException("Unexpected end of patch");
                        }
                    case 253:
                        read2 = dataInputStream.readUnsignedShort();
                        b(bArr, e1Var, outputStream, dataInputStream.readInt(), read2, j12);
                        break;
                    case 254:
                        read2 = dataInputStream.readInt();
                        b(bArr, e1Var, outputStream, dataInputStream.readInt(), read2, j12);
                        break;
                    case 255:
                        long readLong = dataInputStream.readLong();
                        read2 = dataInputStream.readInt();
                        b(bArr, e1Var, outputStream, readLong, read2, j12);
                        break;
                    default:
                        c(bArr, dataInputStream, outputStream, read2, j12);
                        break;
                }
                j11 += read2;
            } finally {
                outputStream.flush();
            }
        }
    }

    private static void b(byte[] bArr, e1 e1Var, OutputStream outputStream, long j10, int i9, long j11) throws IOException {
        int i10 = i9;
        if (i10 < 0) {
            throw new IOException("copyLength negative");
        }
        if (j10 < 0) {
            throw new IOException("inputOffset negative");
        }
        long j12 = i10;
        if (j12 <= j11) {
            try {
                InputStream c10 = new f1(e1Var, j10, j12).c();
                while (i10 > 0) {
                    int min = Math.min(i10, 16384);
                    int i11 = 0;
                    while (i11 < min) {
                        int read = c10.read(bArr, i11, min - i11);
                        if (read == -1) {
                            throw new IOException("truncated input stream");
                        }
                        i11 += read;
                    }
                    outputStream.write(bArr, 0, min);
                    i10 -= min;
                }
                c10.close();
                return;
            } catch (EOFException e10) {
                throw new IOException("patch underrun", e10);
            }
        }
        throw new IOException("Output length overrun");
    }

    private static void c(byte[] bArr, DataInputStream dataInputStream, OutputStream outputStream, int i9, long j10) throws IOException {
        if (i9 < 0) {
            throw new IOException("copyLength negative");
        }
        if (i9 > j10) {
            throw new IOException("Output length overrun");
        }
        while (i9 > 0) {
            try {
                int min = Math.min(i9, 16384);
                dataInputStream.readFully(bArr, 0, min);
                outputStream.write(bArr, 0, min);
                i9 -= min;
            } catch (EOFException unused) {
                throw new IOException("patch underrun");
            }
        }
    }
}
