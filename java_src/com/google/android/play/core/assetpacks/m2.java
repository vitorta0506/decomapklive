package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
/* loaded from: classes2.dex */
final class m2 {

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10341b = new com.google.android.play.core.internal.g("MergeSliceTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10342a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m2(e0 e0Var) {
        this.f10342a = e0Var;
    }

    private static void b(File file, File file2) {
        File[] listFiles;
        if (file.isDirectory()) {
            file2.mkdirs();
            for (File file3 : file.listFiles()) {
                b(file3, new File(file2, file3.getName()));
            }
            if (!file.delete()) {
                throw new f1("Unable to delete directory: ".concat(String.valueOf(file)));
            }
        } else if (!file2.exists()) {
            if (!file.renameTo(file2)) {
                throw new f1("Unable to move file: ".concat(String.valueOf(file)));
            }
        } else {
            throw new f1("File clashing with existing file from other slice: ".concat(file2.toString()));
        }
    }

    public final void a(l2 l2Var) {
        File D = this.f10342a.D(l2Var.f10148b, l2Var.f10330c, l2Var.f10331d, l2Var.f10332e);
        if (D.exists()) {
            File w6 = this.f10342a.w(l2Var.f10148b, l2Var.f10330c, l2Var.f10331d);
            if (!w6.exists()) {
                w6.mkdirs();
            }
            b(D, w6);
            try {
                this.f10342a.a(l2Var.f10148b, l2Var.f10330c, l2Var.f10331d, this.f10342a.q(l2Var.f10148b, l2Var.f10330c, l2Var.f10331d) + 1);
                return;
            } catch (IOException e10) {
                f10341b.b("Writing merge checkpoint failed with %s.", e10.getMessage());
                throw new f1("Writing merge checkpoint failed.", e10, l2Var.f10147a);
            }
        }
        throw new f1(String.format("Cannot find verified files for slice %s.", l2Var.f10332e), l2Var.f10147a);
    }
}
