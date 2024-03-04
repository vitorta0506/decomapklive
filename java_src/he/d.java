package he;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f40646a;

    /* renamed from: b  reason: collision with root package name */
    private final Random f40647b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(SharedPreferences sharedPreferences, Random random) {
        this.f40646a = sharedPreferences;
        this.f40647b = random;
        g();
    }

    private float f() {
        float nextFloat = this.f40647b.nextFloat();
        this.f40646a.edit().putFloat("com.snapchat.kit.sdk.core.metrics.skate.deviceSampleValue", nextFloat).apply();
        return nextFloat;
    }

    private void g() {
        HashMap hashMap = new HashMap();
        hashMap.put("com.snapchat.kit.sdk.SnapLogin", "LOGIN");
        hashMap.put("com.snapchat.kit.sdk.Bitmoji", "BITMOJI");
        hashMap.put("com.snapchat.kit.sdk.SnapCreative", "CREATIVE");
        hashMap.put("com.snapchat.kit.sdk.SnapStoryKit", "STORY");
        ArrayList arrayList = new ArrayList();
        HashMap hashMap2 = new HashMap();
        for (String str : hashMap.keySet()) {
            try {
                Class<?> cls = Class.forName(str);
                String str2 = (String) hashMap.get(str);
                arrayList.add(str2);
                try {
                    hashMap2.put(str2, (String) cls.getMethod("getVersion", new Class[0]).invoke(null, new Object[0]));
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    hashMap2.put(str2, "0.0.0");
                }
            } catch (ClassNotFoundException unused2) {
            }
        }
        this.f40646a.edit().putString("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.kitVersions", new JSONObject(hashMap2).toString()).apply();
        this.f40646a.edit().putString("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.kitVariants", TextUtils.join(",", arrayList)).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final com.snapchat.kit.sdk.core.models.b a() {
        try {
            long j10 = this.f40646a.getLong("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateDay", -1L);
            long j11 = this.f40646a.getLong("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateMonth", -1L);
            long j12 = this.f40646a.getLong("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateYear", -1L);
            int i9 = this.f40646a.getInt("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateCount", -1);
            if (j10 < 1 || j10 > 31 || j11 < 1 || j11 > 12 || j12 < 2020 || i9 <= 0) {
                return null;
            }
            return new com.snapchat.kit.sdk.core.models.b(new com.snapchat.kit.sdk.core.models.c(j10, j11, j12), i9);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(@NonNull com.snapchat.kit.sdk.core.models.b bVar) {
        this.f40646a.edit().putLong("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateDay", bVar.f29502a.f29504a).putLong("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateMonth", bVar.f29502a.f29505b).putLong("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateYear", bVar.f29502a.f29506c).putInt("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.skateCount", bVar.a()).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final String c() {
        return this.f40646a.getString("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.kitVariants", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final String d() {
        return this.f40646a.getString("com.snapchat.kit.sdk.core.metrics.skate.SkateStore.kitVersions", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final double e() {
        float f10;
        if (!this.f40646a.contains("com.snapchat.kit.sdk.core.metrics.skate.deviceSampleValue")) {
            f10 = f();
        } else {
            try {
                return this.f40646a.getFloat("com.snapchat.kit.sdk.core.metrics.skate.deviceSampleValue", 0.99999f);
            } catch (ClassCastException unused) {
                f10 = f();
            }
        }
        return f10;
    }
}
