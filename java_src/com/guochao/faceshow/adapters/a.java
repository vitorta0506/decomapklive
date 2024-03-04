package com.guochao.faceshow.adapters;

import com.guochao.faceshow.aaspring.beans.LocalImageOrVideoBean;
import com.guochao.faceshow.bean.TCVideoFileInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f25090a;

    public static a b() {
        if (f25090a == null) {
            f25090a = new a();
        }
        return f25090a;
    }

    public List<TCVideoFileInfo> a(List<LocalImageOrVideoBean> list) {
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            arrayList.add(new TCVideoFileInfo(list.get(i9)));
        }
        return arrayList;
    }
}
