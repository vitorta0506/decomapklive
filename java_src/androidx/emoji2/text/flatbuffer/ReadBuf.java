package androidx.emoji2.text.flatbuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface ReadBuf {
    byte[] data();

    byte get(int i9);

    boolean getBoolean(int i9);

    double getDouble(int i9);

    float getFloat(int i9);

    int getInt(int i9);

    long getLong(int i9);

    short getShort(int i9);

    String getString(int i9, int i10);

    int limit();
}
