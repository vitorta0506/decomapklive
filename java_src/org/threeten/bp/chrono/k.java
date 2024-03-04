package org.threeten.bp.chrono;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
/* loaded from: classes7.dex */
final class k implements Externalizable {
    private static final long serialVersionUID = 7857518227608961174L;

    /* renamed from: a  reason: collision with root package name */
    private byte f56506a;

    /* renamed from: b  reason: collision with root package name */
    private Object f56507b;

    public k() {
    }

    private static Object a(byte b10, ObjectInput objectInput) throws IOException, ClassNotFoundException {
        switch (b10) {
            case 1:
                return JapaneseDate.readExternal(objectInput);
            case 2:
                return JapaneseEra.readExternal(objectInput);
            case 3:
                return HijrahDate.readExternal(objectInput);
            case 4:
                return HijrahEra.readExternal(objectInput);
            case 5:
                return MinguoDate.readExternal(objectInput);
            case 6:
                return MinguoEra.readExternal(objectInput);
            case 7:
                return ThaiBuddhistDate.readExternal(objectInput);
            case 8:
                return ThaiBuddhistEra.readExternal(objectInput);
            case 9:
            case 10:
            default:
                throw new StreamCorruptedException("Unknown serialized type");
            case 11:
                return i.readExternal(objectInput);
            case 12:
                return d.j(objectInput);
            case 13:
                return h.e(objectInput);
        }
    }

    private static void b(byte b10, Object obj, ObjectOutput objectOutput) throws IOException {
        objectOutput.writeByte(b10);
        switch (b10) {
            case 1:
                ((JapaneseDate) obj).writeExternal(objectOutput);
                return;
            case 2:
                ((JapaneseEra) obj).writeExternal(objectOutput);
                return;
            case 3:
                ((HijrahDate) obj).writeExternal(objectOutput);
                return;
            case 4:
                ((HijrahEra) obj).writeExternal(objectOutput);
                return;
            case 5:
                ((MinguoDate) obj).writeExternal(objectOutput);
                return;
            case 6:
                ((MinguoEra) obj).writeExternal(objectOutput);
                return;
            case 7:
                ((ThaiBuddhistDate) obj).writeExternal(objectOutput);
                return;
            case 8:
                ((ThaiBuddhistEra) obj).writeExternal(objectOutput);
                return;
            case 9:
            case 10:
            default:
                throw new InvalidClassException("Unknown serialized type");
            case 11:
                ((i) obj).writeExternal(objectOutput);
                return;
            case 12:
                ((d) obj).writeExternal(objectOutput);
                return;
            case 13:
                ((h) obj).writeExternal(objectOutput);
                return;
        }
    }

    private Object readResolve() {
        return this.f56507b;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        byte readByte = objectInput.readByte();
        this.f56506a = readByte;
        this.f56507b = a(readByte, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        b(this.f56506a, this.f56507b, objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(byte b10, Object obj) {
        this.f56506a = b10;
        this.f56507b = obj;
    }
}
