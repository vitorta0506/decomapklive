package com.twitter.sdk.android.tweetui;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import com.facebook.internal.AnalyticsEvents;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
final class b0 {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f35426a = Pattern.compile("^https?://twitter\\.com(/#!)?/\\w+/status/\\d+$");

    /* renamed from: b  reason: collision with root package name */
    static final Pattern f35427b = Pattern.compile("^https?://vine\\.co(/#!)?/v/\\w+$");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class a extends com.twitter.sdk.android.tweetui.internal.b {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ l f35428f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ i f35429g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i9, int i10, boolean z10, l lVar, i iVar) {
            super(i9, i10, z10);
            this.f35428f = lVar;
            this.f35429g = iVar;
        }

        @Override // android.text.style.ClickableSpan, com.twitter.sdk.android.tweetui.internal.c
        public void onClick(View view) {
            l lVar = this.f35428f;
            if (lVar == null) {
                return;
            }
            lVar.a(this.f35429g.f35451d);
        }
    }

    private static void b(SpannableStringBuilder spannableStringBuilder, List<i> list, i iVar, l lVar, int i9, int i10) {
        if (list == null || list.isEmpty()) {
            return;
        }
        int i11 = 0;
        for (i iVar2 : list) {
            int i12 = iVar2.f35448a - i11;
            int i13 = iVar2.f35449b - i11;
            if (i12 >= 0 && i13 <= spannableStringBuilder.length()) {
                if (iVar != null && iVar.f35448a == iVar2.f35448a) {
                    spannableStringBuilder.replace(i12, i13, "");
                    i11 += i13 - i12;
                } else if (!TextUtils.isEmpty(iVar2.f35450c)) {
                    spannableStringBuilder.replace(i12, i13, (CharSequence) iVar2.f35450c);
                    int length = i13 - (iVar2.f35450c.length() + i12);
                    i11 += length;
                    spannableStringBuilder.setSpan(new a(i10, i9, false, lVar, iVar2), i12, i13 - length, 33);
                }
            }
        }
    }

    static i c(String str, List<i> list, boolean z10, boolean z11) {
        if (list.isEmpty()) {
            return null;
        }
        i iVar = list.get(list.size() - 1);
        if (j(str).endsWith(iVar.f35451d) && (d(iVar) || ((z10 && e(iVar)) || (z11 && f(iVar))))) {
            return iVar;
        }
        return null;
    }

    static boolean d(i iVar) {
        return (iVar instanceof g) && AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO.equals(((g) iVar).f35440f);
    }

    static boolean e(i iVar) {
        return f35426a.matcher(iVar.f35452e).find();
    }

    static boolean f(i iVar) {
        return f35427b.matcher(iVar.f35452e).find();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(i iVar, i iVar2) {
        if (iVar != null || iVar2 == null) {
            if (iVar == null || iVar2 != null) {
                if (iVar == null && iVar2 == null) {
                    return 0;
                }
                int i9 = iVar.f35448a;
                int i10 = iVar2.f35448a;
                if (i9 < i10) {
                    return -1;
                }
                return i9 > i10 ? 1 : 0;
            }
            return 1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CharSequence h(h hVar, l lVar, int i9, int i10, boolean z10, boolean z11) {
        if (hVar == null) {
            return null;
        }
        if (TextUtils.isEmpty(hVar.f35442a)) {
            return hVar.f35442a;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(hVar.f35442a);
        List<i> i11 = i(com.twitter.sdk.android.core.models.j.a(hVar.f35443b), com.twitter.sdk.android.core.models.j.a(hVar.f35444c), com.twitter.sdk.android.core.models.j.a(hVar.f35445d), com.twitter.sdk.android.core.models.j.a(hVar.f35446e), com.twitter.sdk.android.core.models.j.a(hVar.f35447f));
        b(spannableStringBuilder, i11, c(hVar.f35442a, i11, z10, z11), lVar, i9, i10);
        return k(spannableStringBuilder);
    }

    static List<i> i(List<i> list, List<g> list2, List<i> list3, List<i> list4, List<i> list5) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.addAll(list2);
        arrayList.addAll(list3);
        arrayList.addAll(list4);
        arrayList.addAll(list5);
        Collections.sort(arrayList, new Comparator() { // from class: com.twitter.sdk.android.tweetui.a0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int g10;
                g10 = b0.g((i) obj, (i) obj2);
                return g10;
            }
        });
        return arrayList;
    }

    static String j(String str) {
        return str.endsWith(Character.toString((char) 8206)) ? str.substring(0, str.length() - 1) : str;
    }

    static CharSequence k(CharSequence charSequence) {
        int length = charSequence.length();
        while (length > 0 && charSequence.charAt(length - 1) <= ' ') {
            length--;
        }
        return length < charSequence.length() ? charSequence.subSequence(0, length) : charSequence;
    }
}
