package org.threeten.bp.zone;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import kotlin.UByte;
import org.threeten.bp.ZoneOffset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* renamed from: a  reason: collision with root package name */
    private byte f56668a;

    /* renamed from: b  reason: collision with root package name */
    private Object f56669b;

    public a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(DataInput dataInput) throws IOException, ClassNotFoundException {
        return c(dataInput.readByte(), dataInput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(DataInput dataInput) throws IOException {
        int readByte = dataInput.readByte() & UByte.MAX_VALUE;
        if (readByte == 255) {
            return dataInput.readLong();
        }
        return ((((readByte << 16) + ((dataInput.readByte() & UByte.MAX_VALUE) << 8)) + (dataInput.readByte() & UByte.MAX_VALUE)) * 900) - 4575744000L;
    }

    private static Object c(byte b10, DataInput dataInput) throws IOException, ClassNotFoundException {
        if (b10 != 1) {
            if (b10 != 2) {
                if (b10 == 3) {
                    return ZoneOffsetTransitionRule.readExternal(dataInput);
                }
                throw new StreamCorruptedException("Unknown serialized type");
            }
            return ZoneOffsetTransition.readExternal(dataInput);
        }
        return b.m(dataInput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneOffset d(DataInput dataInput) throws IOException {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds(readByte * 900);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(long j10, DataOutput dataOutput) throws IOException {
        if (j10 >= -4575744000L && j10 < 10413792000L && j10 % 900 == 0) {
            int i9 = (int) ((j10 + 4575744000L) / 900);
            dataOutput.writeByte((i9 >>> 16) & 255);
            dataOutput.writeByte((i9 >>> 8) & 255);
            dataOutput.writeByte(i9 & 255);
            return;
        }
        dataOutput.writeByte(255);
        dataOutput.writeLong(j10);
    }

    private static void f(byte b10, Object obj, DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(b10);
        if (b10 == 1) {
            ((b) obj).n(dataOutput);
        } else if (b10 == 2) {
            ((ZoneOffsetTransition) obj).writeExternal(dataOutput);
        } else if (b10 == 3) {
            ((ZoneOffsetTransitionRule) obj).writeExternal(dataOutput);
        } else {
            throw new InvalidClassException("Unknown serialized type");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(ZoneOffset zoneOffset, DataOutput dataOutput) throws IOException {
        int totalSeconds = zoneOffset.getTotalSeconds();
        int i9 = totalSeconds % 900 == 0 ? totalSeconds / 900 : 127;
        dataOutput.writeByte(i9);
        if (i9 == 127) {
            dataOutput.writeInt(totalSeconds);
        }
    }

    private Object readResolve() {
        return this.f56669b;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte readByte = objectInput.readByte();
        this.f56668a = readByte;
        this.f56669b = c(readByte, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f(this.f56668a, this.f56669b, objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(byte b10, Object obj) {
        this.f56668a = b10;
        this.f56669b = obj;
    }
}
