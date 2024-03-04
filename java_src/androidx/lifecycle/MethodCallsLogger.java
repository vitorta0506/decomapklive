package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MethodCallsLogger {
    private Map<String, Integer> mCalledMethods = new HashMap();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean approveCall(String str, int i9) {
        Integer num = this.mCalledMethods.get(str);
        int intValue = num != null ? num.intValue() : 0;
        boolean z10 = (intValue & i9) != 0;
        this.mCalledMethods.put(str, Integer.valueOf(i9 | intValue));
        return !z10;
    }
}
