package s0;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class g {
    @NonNull
    public <Z> l<ImageView, Z> a(@NonNull ImageView imageView, @NonNull Class<Z> cls) {
        if (Bitmap.class.equals(cls)) {
            return new b(imageView);
        }
        if (Drawable.class.isAssignableFrom(cls)) {
            return new e(imageView);
        }
        throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
    }
}
