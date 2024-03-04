package com.guochao.faceshow.aaspring.utils;

import java.io.File;
/* loaded from: classes3.dex */
public class TXLogsManager {
    public static boolean cleanFile(File file) {
        if (file != null && file.isDirectory()) {
            String[] list = file.list();
            if (list == null) {
                return true;
            }
            for (int i9 = 0; i9 < list.length && cleanFile(new File(file, list[i9])); i9++) {
            }
            return false;
        }
        return false;
    }

    public static void deleteLogs(String str) {
        File[] listFiles = new File(str).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        for (File file : listFiles) {
            if (file.isDirectory()) {
                cleanFile(file);
            } else if (file.isFile() && file.exists()) {
                file.delete();
            }
        }
    }
}
