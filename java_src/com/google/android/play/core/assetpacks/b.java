package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class b {
    public static b c(Bundle bundle, j1 j1Var, t2 t2Var) {
        return d(bundle, j1Var, t2Var, new ArrayList(), new b0() { // from class: com.google.android.play.core.assetpacks.c0
            @Override // com.google.android.play.core.assetpacks.b0
            public final int a(int i9, String str) {
                return i9;
            }
        });
    }

    private static b d(Bundle bundle, j1 j1Var, t2 t2Var, List list, b0 b0Var) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap hashMap = new HashMap();
        int size = stringArrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            String str = stringArrayList.get(i9);
            hashMap.put(str, AssetPackState.i(bundle, str, j1Var, t2Var, b0Var));
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            hashMap.put(str2, AssetPackState.h(str2, 4, 0, 0L, 0L, 0.0d, 1, "", ""));
        }
        return new k0(bundle.getLong("total_bytes_to_download"), hashMap);
    }

    public abstract Map<String, AssetPackState> a();

    public abstract long b();
}
