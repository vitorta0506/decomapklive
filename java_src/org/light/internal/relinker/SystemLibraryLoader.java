package org.light.internal.relinker;

import android.os.Build;
import org.light.internal.relinker.ReLinker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class SystemLibraryLoader implements ReLinker.LibraryLoader {
    @Override // org.light.internal.relinker.ReLinker.LibraryLoader
    public void loadLibrary(String str) {
        System.loadLibrary(str);
    }

    @Override // org.light.internal.relinker.ReLinker.LibraryLoader
    public void loadPath(String str) {
        System.load(str);
    }

    @Override // org.light.internal.relinker.ReLinker.LibraryLoader
    public String mapLibraryName(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }

    @Override // org.light.internal.relinker.ReLinker.LibraryLoader
    public String[] supportedAbis() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        return !TextUtils.isEmpty(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override // org.light.internal.relinker.ReLinker.LibraryLoader
    public String unmapLibraryName(String str) {
        return str.substring(3, str.length() - 3);
    }
}
