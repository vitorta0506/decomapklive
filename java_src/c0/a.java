package c0;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public interface a {

    /* renamed from: c0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0021a {
        void a(@NonNull Bitmap bitmap);

        @NonNull
        byte[] b(int i9);

        @NonNull
        Bitmap c(int i9, int i10, @NonNull Bitmap.Config config);

        @NonNull
        int[] d(int i9);

        void e(@NonNull byte[] bArr);

        void f(@NonNull int[] iArr);
    }

    @Nullable
    Bitmap a();

    void b();

    int c();

    void clear();

    void d(@NonNull Bitmap.Config config);

    int e();

    void f();

    int g();

    @NonNull
    ByteBuffer getData();

    int h();
}
