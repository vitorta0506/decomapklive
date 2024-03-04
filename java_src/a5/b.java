package a5;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import com.google.android.play.core.internal.v0;
import java.io.File;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final f f606a;

    public b(f fVar) {
        this.f606a = fVar;
    }

    public static final int b(AssetManager assetManager, File file) {
        int intValue = ((Integer) v0.d(assetManager, "addAssetPath", Integer.class, String.class, file.getPath())).intValue();
        StringBuilder sb2 = new StringBuilder(39);
        sb2.append("addAssetPath completed with ");
        sb2.append(intValue);
        Log.d("SplitCompat", sb2.toString());
        return intValue;
    }

    public final synchronized void a(Context context, Set set) {
        AssetManager assets = context.getAssets();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            b(assets, (File) it.next());
        }
    }
}
