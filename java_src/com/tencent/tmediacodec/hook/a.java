package com.tencent.tmediacodec.hook;

import android.graphics.SurfaceTexture;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.tmediacodec.hook.THookTextureView;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f34634a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, b> f34635b = new ConcurrentHashMap();

    public static void a(@NonNull String str, @NonNull b bVar) {
        Map<String, b> map = f34635b;
        map.put(str, bVar);
        if (com.tencent.tmediacodec.f.a.a()) {
            com.tencent.tmediacodec.f.a.b("HookManager", "after hookSurfaceCallback size:" + map.size() + " mHoldCallbackMap:" + map);
        }
        if (f34634a) {
            return;
        }
        f34634a = true;
        THookTextureView.setHookCallback(new THookTextureView.a() { // from class: com.tencent.tmediacodec.hook.a.1
            @Override // com.tencent.tmediacodec.hook.THookTextureView.a
            public final boolean a(@Nullable SurfaceTexture surfaceTexture) {
                if (surfaceTexture == null) {
                    return true;
                }
                String obj = surfaceTexture.toString();
                for (String str2 : a.f34635b.keySet()) {
                    if (TextUtils.equals(str2, obj)) {
                        b bVar2 = (b) a.f34635b.get(obj);
                        if (bVar2 != null) {
                            bVar2.a(surfaceTexture);
                            return false;
                        }
                        return false;
                    }
                }
                return true;
            }
        });
    }

    public static void a(@NonNull String str) {
        f34635b.remove(str);
    }

    public static void a(@NonNull SurfaceTexture surfaceTexture) {
        try {
            com.tencent.tmediacodec.f.a.d("HookManager", "realReleaseSurfaceTexture surfaceTexture:".concat(String.valueOf(surfaceTexture)));
            a(surfaceTexture.toString());
            surfaceTexture.release();
        } catch (Throwable th2) {
            com.tencent.tmediacodec.f.a.a("HookManager", "realReleaseSurfaceTexture surfaceTexture:" + surfaceTexture + " ignoreThrowable", th2);
        }
    }
}
