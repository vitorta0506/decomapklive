package d;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.LocaleList;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class a extends Paint {
    public a() {
    }

    @Override // android.graphics.Paint
    public void setTextLocales(@NonNull LocaleList localeList) {
    }

    public a(int i9) {
        super(i9);
    }

    public a(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    public a(int i9, PorterDuff.Mode mode) {
        super(i9);
        setXfermode(new PorterDuffXfermode(mode));
    }
}
