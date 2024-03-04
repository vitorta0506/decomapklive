package com.tencent.thumbplayer.adapter.a.b;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.core.common.TPNativeLibraryException;
import com.tencent.thumbplayer.core.common.TPThumbplayerCapabilityHelper;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.o;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Set<String> f33585a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private static Set<String> f33586b = new HashSet();

    public static synchronized void a(@NonNull Context context) {
        synchronized (a.class) {
            TPLogUtil.i("TPDrmCapability", "TPDrmCapability, init");
            TPLogUtil.i("TPDrmCapability", "TPDrmCapability, get shared preferences.");
            SharedPreferences sharedPreferences = context.getSharedPreferences("TP_DRM_CAPABILITY", 0);
            try {
                f33585a = sharedPreferences.getStringSet("DRM_CAPABILITY_LIST", f33585a);
            } catch (ClassCastException e10) {
                TPLogUtil.e("TPDrmCapability", e10);
            }
            f33585a.removeAll(f33586b);
            a(sharedPreferences);
        }
    }

    private static void a(final SharedPreferences sharedPreferences) {
        o.a().d().execute(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.b.a.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = new int[0];
                try {
                    iArr = TPThumbplayerCapabilityHelper.getDRMCapabilities();
                } catch (TPNativeLibraryException e10) {
                    TPLogUtil.e("TPDrmCapability", e10);
                }
                TPLogUtil.i("TPDrmCapability", "TPThumbPlayerCapabilityHelper, DRM capability:" + Arrays.toString(iArr));
                if (iArr.length == 0) {
                    return;
                }
                HashSet hashSet = new HashSet();
                for (int i9 : iArr) {
                    hashSet.add(String.valueOf(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDrmType.class, i9)));
                }
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putStringSet("DRM_CAPABILITY_LIST", hashSet);
                edit.apply();
                synchronized (a.class) {
                    Set unused = a.f33585a = hashSet;
                    a.f33585a.removeAll(a.f33586b);
                }
            }
        });
    }

    public static synchronized boolean a(@TPCommonEnum.TP_DRM_TYPE int i9) {
        synchronized (a.class) {
            if (i9 == -1) {
                return false;
            }
            for (String str : f33585a) {
                if (com.tencent.thumbplayer.utils.b.a(str, -1) == i9) {
                    return true;
                }
            }
            return false;
        }
    }

    public static synchronized int[] a() {
        int[] iArr;
        synchronized (a.class) {
            iArr = new int[f33585a.size()];
            int i9 = 0;
            for (String str : f33585a) {
                int i10 = i9 + 1;
                iArr[i9] = com.tencent.thumbplayer.utils.b.a(str, -1);
                i9 = i10;
            }
        }
        return iArr;
    }

    public static synchronized void b(@TPCommonEnum.TP_DRM_TYPE int i9) {
        synchronized (a.class) {
            if (i9 == -1) {
                return;
            }
            f33586b.add(String.valueOf(i9));
            f33585a.removeAll(f33586b);
        }
    }
}
