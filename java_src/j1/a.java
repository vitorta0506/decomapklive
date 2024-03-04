package j1;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class a implements i1.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f52961a = {"京", "津", "冀", "晋", "蒙", "辽", "吉", "黑", "沪", "苏", "浙", "皖", "闽", "赣", "鲁", "豫", "鄂", "湘", "粤", "桂", "琼", "渝", "川", "贵", "云", "藏", "陕", "甘", "青", "宁", "新"};

    @Override // i1.b
    public int a(Object obj) {
        if (obj == null) {
            return -1;
        }
        int length = f52961a.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (f52961a[i9].equals(obj.toString())) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01d4, code lost:
        if (r3.equals("云") == false) goto L6;
     */
    @Override // i1.b
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> b(int r17) {
        /*
            Method dump skipped, instructions count: 1196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j1.a.b(int):java.util.List");
    }

    @Override // i1.b
    public int c(int i9, Object obj) {
        if (obj == null) {
            return -1;
        }
        List<String> b10 = b(i9);
        int size = b10.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (b10.get(i10).equals(obj.toString())) {
                return i10;
            }
        }
        return -1;
    }

    @Override // i1.b
    public int d(int i9, int i10, Object obj) {
        return 0;
    }

    @Override // i1.b
    @NonNull
    public List<String> e() {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, f52961a);
        return arrayList;
    }

    @Override // i1.b
    public boolean f() {
        return false;
    }

    @Override // i1.b
    @NonNull
    public List<?> g(int i9, int i10) {
        return new ArrayList();
    }

    @Override // i1.b
    public boolean h() {
        return true;
    }
}
