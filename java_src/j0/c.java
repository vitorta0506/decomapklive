package j0;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public class c implements e0.a<ByteBuffer> {
    @Override // e0.a
    /* renamed from: c */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull e0.e eVar) {
        try {
            v0.a.f(byteBuffer, file);
            return true;
        } catch (IOException e10) {
            if (Log.isLoggable("ByteBufferEncoder", 3)) {
                Log.d("ByteBufferEncoder", "Failed to write data", e10);
            }
            return false;
        }
    }
}
