package com.appsflyer.internal;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.UByte;
/* loaded from: classes.dex */
public final class AFe1eSDK extends FilterInputStream {
    private static final short AFInAppEventParameterName = (short) ((Math.sqrt(5.0d) - 1.0d) * Math.pow(2.0d, 15.0d));
    private int AFInAppEventType;
    private byte[] AFKeystoreWrapper;
    private int AFLogger;
    private int afDebugLog;
    private int afErrorLog;
    private int afInfoLog;
    private int afRDLog;
    private int afWarnLog;
    private int getLevel;
    private int init;
    private byte[] valueOf;
    private byte[] values;

    public AFe1eSDK(InputStream inputStream, int[] iArr, int i9, byte[] bArr, int i10, int i11) throws IOException {
        super(inputStream);
        this.AFLogger = Integer.MAX_VALUE;
        this.AFKeystoreWrapper = new byte[8];
        this.valueOf = new byte[8];
        this.values = new byte[8];
        this.AFInAppEventType = 8;
        this.afErrorLog = 8;
        this.afInfoLog = Math.min(Math.max(i10, 5), 16);
        this.afRDLog = i11;
        if (i11 == 3) {
            System.arraycopy(bArr, 0, this.valueOf, 0, 8);
        }
        long j10 = ((iArr[0] & 4294967295L) << 32) | (4294967295L & iArr[1]);
        if (i9 == 0) {
            this.afDebugLog = (int) j10;
            long j11 = j10 >> 3;
            short s10 = AFInAppEventParameterName;
            this.afWarnLog = (int) ((s10 * j11) >> 32);
            this.init = (int) (j10 >> 32);
            this.getLevel = (int) (j11 + s10);
            return;
        }
        int i12 = (int) j10;
        this.afDebugLog = i12;
        this.afWarnLog = i12 * i9;
        this.init = i12 ^ i9;
        this.getLevel = (int) (j10 >> 32);
    }

    private int AFInAppEventType() throws IOException {
        if (this.AFLogger == Integer.MAX_VALUE) {
            this.AFLogger = ((FilterInputStream) this).in.read();
        }
        if (this.AFInAppEventType == 8) {
            byte[] bArr = this.AFKeystoreWrapper;
            int i9 = this.AFLogger;
            bArr[0] = (byte) i9;
            if (i9 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i10 = 1;
            do {
                int read = ((FilterInputStream) this).in.read(this.AFKeystoreWrapper, i10, 8 - i10);
                if (read <= 0) {
                    break;
                }
                i10 += read;
            } while (i10 < 8);
            if (i10 >= 8) {
                AFKeystoreWrapper();
                int read2 = ((FilterInputStream) this).in.read();
                this.AFLogger = read2;
                this.AFInAppEventType = 0;
                this.afErrorLog = read2 < 0 ? 8 - (this.AFKeystoreWrapper[7] & UByte.MAX_VALUE) : 8;
            } else {
                throw new IllegalStateException("unexpected block size");
            }
        }
        return this.afErrorLog;
    }

    private void AFKeystoreWrapper() {
        if (this.afRDLog == 3) {
            byte[] bArr = this.AFKeystoreWrapper;
            System.arraycopy(bArr, 0, this.values, 0, bArr.length);
        }
        byte[] bArr2 = this.AFKeystoreWrapper;
        int i9 = ((bArr2[0] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr2[1] << 16) & 16711680) + ((bArr2[2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr2[3] & UByte.MAX_VALUE);
        int i10 = ((-16777216) & (bArr2[4] << 24)) + (16711680 & (bArr2[5] << 16)) + (65280 & (bArr2[6] << 8)) + (bArr2[7] & UByte.MAX_VALUE);
        int i11 = 0;
        while (true) {
            int i12 = this.afInfoLog;
            if (i11 >= i12) {
                break;
            }
            short s10 = AFInAppEventParameterName;
            i10 -= ((((i12 - i11) * s10) + i9) ^ ((i9 << 4) + this.init)) ^ ((i9 >>> 5) + this.getLevel);
            i9 -= (((i10 << 4) + this.afDebugLog) ^ ((s10 * (i12 - i11)) + i10)) ^ ((i10 >>> 5) + this.afWarnLog);
            i11++;
        }
        byte[] bArr3 = this.AFKeystoreWrapper;
        bArr3[0] = (byte) (i9 >> 24);
        bArr3[1] = (byte) (i9 >> 16);
        bArr3[2] = (byte) (i9 >> 8);
        bArr3[3] = (byte) i9;
        bArr3[4] = (byte) (i10 >> 24);
        bArr3[5] = (byte) (i10 >> 16);
        bArr3[6] = (byte) (i10 >> 8);
        bArr3[7] = (byte) i10;
        if (this.afRDLog == 3) {
            for (int i13 = 0; i13 < 8; i13++) {
                byte[] bArr4 = this.AFKeystoreWrapper;
                bArr4[i13] = (byte) (bArr4[i13] ^ this.valueOf[i13]);
            }
            byte[] bArr5 = this.values;
            System.arraycopy(bArr5, 0, this.valueOf, 0, bArr5.length);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        AFInAppEventType();
        return this.afErrorLog - this.AFInAppEventType;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        AFInAppEventType();
        int i9 = this.AFInAppEventType;
        if (i9 >= this.afErrorLog) {
            return -1;
        }
        byte[] bArr = this.AFKeystoreWrapper;
        this.AFInAppEventType = i9 + 1;
        return bArr[i9] & UByte.MAX_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long j11 = 0;
        while (j11 < j10 && read() != -1) {
            j11++;
        }
        return j11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i9, int i10) throws IOException {
        int i11 = i9 + i10;
        for (int i12 = i9; i12 < i11; i12++) {
            AFInAppEventType();
            int i13 = this.AFInAppEventType;
            if (i13 >= this.afErrorLog) {
                if (i12 == i9) {
                    return -1;
                }
                return i10 - (i11 - i12);
            }
            byte[] bArr2 = this.AFKeystoreWrapper;
            this.AFInAppEventType = i13 + 1;
            bArr[i12] = bArr2[i13];
        }
        return i10;
    }
}
