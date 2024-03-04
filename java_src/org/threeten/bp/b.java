package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class b implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* renamed from: a  reason: collision with root package name */
    private byte f56480a;

    /* renamed from: b  reason: collision with root package name */
    private Object f56481b;

    public b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(DataInput dataInput) throws IOException {
        return b(dataInput.readByte(), dataInput);
    }

    private static Object b(byte b10, DataInput dataInput) throws IOException {
        if (b10 != 64) {
            switch (b10) {
                case 1:
                    return Duration.readExternal(dataInput);
                case 2:
                    return Instant.readExternal(dataInput);
                case 3:
                    return LocalDate.readExternal(dataInput);
                case 4:
                    return LocalDateTime.readExternal(dataInput);
                case 5:
                    return LocalTime.readExternal(dataInput);
                case 6:
                    return ZonedDateTime.readExternal(dataInput);
                case 7:
                    return c.c(dataInput);
                case 8:
                    return ZoneOffset.readExternal(dataInput);
                default:
                    switch (b10) {
                        case 66:
                            return OffsetTime.readExternal(dataInput);
                        case 67:
                            return Year.readExternal(dataInput);
                        case 68:
                            return YearMonth.readExternal(dataInput);
                        case 69:
                            return OffsetDateTime.readExternal(dataInput);
                        default:
                            throw new StreamCorruptedException("Unknown serialized type");
                    }
            }
        }
        return MonthDay.readExternal(dataInput);
    }

    static void c(byte b10, Object obj, DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(b10);
        if (b10 != 64) {
            switch (b10) {
                case 1:
                    ((Duration) obj).writeExternal(dataOutput);
                    return;
                case 2:
                    ((Instant) obj).writeExternal(dataOutput);
                    return;
                case 3:
                    ((LocalDate) obj).writeExternal(dataOutput);
                    return;
                case 4:
                    ((LocalDateTime) obj).writeExternal(dataOutput);
                    return;
                case 5:
                    ((LocalTime) obj).writeExternal(dataOutput);
                    return;
                case 6:
                    ((ZonedDateTime) obj).writeExternal(dataOutput);
                    return;
                case 7:
                    ((c) obj).writeExternal(dataOutput);
                    return;
                case 8:
                    ((ZoneOffset) obj).writeExternal(dataOutput);
                    return;
                default:
                    switch (b10) {
                        case 66:
                            ((OffsetTime) obj).writeExternal(dataOutput);
                            return;
                        case 67:
                            ((Year) obj).writeExternal(dataOutput);
                            return;
                        case 68:
                            ((YearMonth) obj).writeExternal(dataOutput);
                            return;
                        case 69:
                            ((OffsetDateTime) obj).writeExternal(dataOutput);
                            return;
                        default:
                            throw new InvalidClassException("Unknown serialized type");
                    }
            }
        }
        ((MonthDay) obj).writeExternal(dataOutput);
    }

    private Object readResolve() {
        return this.f56481b;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        byte readByte = objectInput.readByte();
        this.f56480a = readByte;
        this.f56481b = b(readByte, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        c(this.f56480a, this.f56481b, objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(byte b10, Object obj) {
        this.f56480a = b10;
        this.f56481b = obj;
    }
}
