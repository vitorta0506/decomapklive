package com.guochao.faceshow.aaspring.utils;

import java.util.List;
/* loaded from: classes3.dex */
public final class ShellUtils {
    private static final String LINE_SEP = System.getProperty("line.separator");

    /* loaded from: classes3.dex */
    public static class CommandResult {
        public String errorMsg;
        public int result;
        public String successMsg;

        public CommandResult(int i9, String str, String str2) {
            this.result = i9;
            this.successMsg = str;
            this.errorMsg = str2;
        }

        public String toString() {
            return "result: " + this.result + "\nsuccessMsg: " + this.successMsg + "\nerrorMsg: " + this.errorMsg;
        }
    }

    private ShellUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static CommandResult execCmd(String str, boolean z10) {
        return execCmd(new String[]{str}, z10, true);
    }

    public static CommandResult execCmd(List<String> list, boolean z10) {
        return execCmd(list == null ? null : (String[]) list.toArray(new String[0]), z10, true);
    }

    public static CommandResult execCmd(String[] strArr, boolean z10) {
        return execCmd(strArr, z10, true);
    }

    public static CommandResult execCmd(String str, boolean z10, boolean z11) {
        return execCmd(new String[]{str}, z10, z11);
    }

    public static CommandResult execCmd(List<String> list, boolean z10, boolean z11) {
        return execCmd(list == null ? null : (String[]) list.toArray(new String[0]), z10, z11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x016c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0162 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x011d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0158 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.guochao.faceshow.aaspring.utils.ShellUtils.CommandResult execCmd(java.lang.String[] r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.guochao.faceshow.aaspring.utils.ShellUtils.execCmd(java.lang.String[], boolean, boolean):com.guochao.faceshow.aaspring.utils.ShellUtils$CommandResult");
    }
}
