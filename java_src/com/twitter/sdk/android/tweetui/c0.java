package com.twitter.sdk.android.tweetui;

import android.text.TextUtils;
import com.twitter.sdk.android.core.models.HashtagEntity;
import com.twitter.sdk.android.core.models.MediaEntity;
import com.twitter.sdk.android.core.models.MentionEntity;
import com.twitter.sdk.android.core.models.SymbolEntity;
import com.twitter.sdk.android.core.models.UrlEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import xe.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class c0 {
    static void a(List<? extends i> list, List<Integer> list2) {
        if (list == null || list2 == null) {
            return;
        }
        for (i iVar : list) {
            int i9 = iVar.f35448a;
            int i10 = 0;
            Iterator<Integer> it = list2.iterator();
            while (it.hasNext() && it.next().intValue() - i10 <= i9) {
                i10++;
            }
            iVar.f35448a += i10;
            iVar.f35449b += i10;
        }
    }

    static void b(List<? extends i> list, List<int[]> list2) {
        if (list == null || list2 == null || list2.isEmpty()) {
            return;
        }
        int size = list2.size();
        int i9 = 0;
        int i10 = 0;
        for (i iVar : list) {
            int i11 = i10;
            int i12 = 0;
            int i13 = i9;
            while (i9 < size) {
                int[] iArr = list2.get(i9);
                int i14 = iArr[0];
                int i15 = iArr[1];
                int i16 = i15 - i14;
                if (i15 < iVar.f35448a) {
                    i11 += i16;
                    i13++;
                } else if (i15 < iVar.f35449b) {
                    i12 += i16;
                }
                i9++;
            }
            int i17 = i12 + i11;
            iVar.f35448a -= i17;
            iVar.f35449b -= i17;
            i9 = i13;
            i10 = i11;
        }
    }

    static void c(StringBuilder sb2, h hVar) {
        ArrayList arrayList = new ArrayList();
        int length = sb2.length() - 1;
        for (int i9 = 0; i9 < length; i9++) {
            if (Character.isHighSurrogate(sb2.charAt(i9)) && Character.isLowSurrogate(sb2.charAt(i9 + 1))) {
                arrayList.add(Integer.valueOf(i9));
            }
        }
        a(hVar.f35443b, arrayList);
        a(hVar.f35444c, arrayList);
        a(hVar.f35445d, arrayList);
        a(hVar.f35446e, arrayList);
        a(hVar.f35447f, arrayList);
    }

    static void d(h hVar, com.twitter.sdk.android.core.models.l lVar) {
        com.twitter.sdk.android.core.models.n nVar = lVar.f35258d;
        if (nVar == null) {
            return;
        }
        List<UrlEntity> list = nVar.f35308a;
        if (list != null) {
            for (UrlEntity urlEntity : list) {
                hVar.f35443b.add(i.d(urlEntity));
            }
        }
        List<MediaEntity> list2 = lVar.f35258d.f35310c;
        if (list2 != null) {
            for (MediaEntity mediaEntity : list2) {
                hVar.f35444c.add(new g(mediaEntity));
            }
        }
        List<HashtagEntity> list3 = lVar.f35258d.f35311d;
        if (list3 != null) {
            for (HashtagEntity hashtagEntity : list3) {
                hVar.f35445d.add(i.a(hashtagEntity));
            }
        }
        List<MentionEntity> list4 = lVar.f35258d.f35309b;
        if (list4 != null) {
            for (MentionEntity mentionEntity : list4) {
                hVar.f35446e.add(i.b(mentionEntity));
            }
        }
        List<SymbolEntity> list5 = lVar.f35258d.f35312e;
        if (list5 != null) {
            for (SymbolEntity symbolEntity : list5) {
                hVar.f35447f.add(i.c(symbolEntity));
            }
        }
    }

    static void e(h hVar, com.twitter.sdk.android.core.models.l lVar) {
        if (TextUtils.isEmpty(lVar.A)) {
            return;
        }
        a.d e10 = xe.a.f59700b.e(lVar.A);
        StringBuilder sb2 = new StringBuilder(e10.f59707a);
        b(hVar.f35443b, e10.f59708b);
        b(hVar.f35444c, e10.f59708b);
        b(hVar.f35445d, e10.f59708b);
        b(hVar.f35446e, e10.f59708b);
        b(hVar.f35447f, e10.f59708b);
        c(sb2, hVar);
        hVar.f35442a = sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h f(com.twitter.sdk.android.core.models.l lVar) {
        if (lVar == null) {
            return null;
        }
        h hVar = new h();
        d(hVar, lVar);
        e(hVar, lVar);
        return hVar;
    }
}
