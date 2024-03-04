package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KeyCache {
    HashMap<Object, HashMap<String, float[]>> map = new HashMap<>();

    public float getFloatValue(Object obj, String str, int i9) {
        HashMap<String, float[]> hashMap;
        float[] fArr;
        if (this.map.containsKey(obj) && (hashMap = this.map.get(obj)) != null && hashMap.containsKey(str) && (fArr = hashMap.get(str)) != null && fArr.length > i9) {
            return fArr[i9];
        }
        return Float.NaN;
    }

    public void setFloatValue(Object obj, String str, int i9, float f10) {
        if (!this.map.containsKey(obj)) {
            HashMap<String, float[]> hashMap = new HashMap<>();
            float[] fArr = new float[i9 + 1];
            fArr[i9] = f10;
            hashMap.put(str, fArr);
            this.map.put(obj, hashMap);
            return;
        }
        HashMap<String, float[]> hashMap2 = this.map.get(obj);
        if (hashMap2 == null) {
            hashMap2 = new HashMap<>();
        }
        if (!hashMap2.containsKey(str)) {
            float[] fArr2 = new float[i9 + 1];
            fArr2[i9] = f10;
            hashMap2.put(str, fArr2);
            this.map.put(obj, hashMap2);
            return;
        }
        float[] fArr3 = hashMap2.get(str);
        if (fArr3 == null) {
            fArr3 = new float[0];
        }
        if (fArr3.length <= i9) {
            fArr3 = Arrays.copyOf(fArr3, i9 + 1);
        }
        fArr3[i9] = f10;
        hashMap2.put(str, fArr3);
    }
}