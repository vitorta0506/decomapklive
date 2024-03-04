package androidx.emoji2.text.flatbuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface ReadWriteBuf extends ReadBuf {
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    int limit();

    void put(byte b10);

    void put(byte[] bArr, int i9, int i10);

    void putBoolean(boolean z10);

    void putDouble(double d10);

    void putFloat(float f10);

    void putInt(int i9);

    void putLong(long j10);

    void putShort(short s10);

    boolean requestCapacity(int i9);

    void set(int i9, byte b10);

    void set(int i9, byte[] bArr, int i10, int i11);

    void setBoolean(int i9, boolean z10);

    void setDouble(int i9, double d10);

    void setFloat(int i9, float f10);

    void setInt(int i9, int i10);

    void setLong(int i9, long j10);

    void setShort(int i9, short s10);

    int writePosition();
}
