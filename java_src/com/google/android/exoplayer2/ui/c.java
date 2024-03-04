package com.google.android.exoplayer2.ui;

import android.text.Html;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.facebook.appevents.integrity.IntegrityManager;
import com.google.android.exoplayer2.ui.c;
import com.google.android.exoplayer2.util.l0;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6759a = Pattern.compile("(&#13;)?&#10;");

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f6760a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, String> f6761b;

        private b(String str, Map<String, String> map) {
            this.f6760a = str;
            this.f6761b = map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.ui.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0081c {

        /* renamed from: e  reason: collision with root package name */
        private static final Comparator<C0081c> f6762e = new Comparator() { // from class: com.google.android.exoplayer2.ui.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int e10;
                e10 = c.C0081c.e((c.C0081c) obj, (c.C0081c) obj2);
                return e10;
            }
        };

        /* renamed from: f  reason: collision with root package name */
        private static final Comparator<C0081c> f6763f = new Comparator() { // from class: com.google.android.exoplayer2.ui.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int f10;
                f10 = c.C0081c.f((c.C0081c) obj, (c.C0081c) obj2);
                return f10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final int f6764a;

        /* renamed from: b  reason: collision with root package name */
        public final int f6765b;

        /* renamed from: c  reason: collision with root package name */
        public final String f6766c;

        /* renamed from: d  reason: collision with root package name */
        public final String f6767d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int e(C0081c c0081c, C0081c c0081c2) {
            int compare = Integer.compare(c0081c2.f6765b, c0081c.f6765b);
            if (compare != 0) {
                return compare;
            }
            int compareTo = c0081c.f6766c.compareTo(c0081c2.f6766c);
            return compareTo != 0 ? compareTo : c0081c.f6767d.compareTo(c0081c2.f6767d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int f(C0081c c0081c, C0081c c0081c2) {
            int compare = Integer.compare(c0081c2.f6764a, c0081c.f6764a);
            if (compare != 0) {
                return compare;
            }
            int compareTo = c0081c2.f6766c.compareTo(c0081c.f6766c);
            return compareTo != 0 ? compareTo : c0081c2.f6767d.compareTo(c0081c.f6767d);
        }

        private C0081c(int i9, int i10, String str, String str2) {
            this.f6764a = i9;
            this.f6765b = i10;
            this.f6766c = str;
            this.f6767d = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final List<C0081c> f6768a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<C0081c> f6769b = new ArrayList();
    }

    public static b a(@Nullable CharSequence charSequence, float f10) {
        if (charSequence == null) {
            return new b("", ImmutableMap.of());
        }
        if (!(charSequence instanceof Spanned)) {
            return new b(b(charSequence), ImmutableMap.of());
        }
        Spanned spanned = (Spanned) charSequence;
        HashSet<Integer> hashSet = new HashSet();
        int i9 = 0;
        for (BackgroundColorSpan backgroundColorSpan : (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class)) {
            hashSet.add(Integer.valueOf(backgroundColorSpan.getBackgroundColor()));
        }
        HashMap hashMap = new HashMap();
        for (Integer num : hashSet) {
            int intValue = num.intValue();
            hashMap.put(com.google.android.exoplayer2.ui.b.a("bg_" + intValue), l0.z("background-color:%s;", com.google.android.exoplayer2.ui.b.b(intValue)));
        }
        SparseArray<d> c10 = c(spanned, f10);
        StringBuilder sb2 = new StringBuilder(spanned.length());
        int i10 = 0;
        while (i9 < c10.size()) {
            int keyAt = c10.keyAt(i9);
            sb2.append(b(spanned.subSequence(i10, keyAt)));
            d dVar = c10.get(keyAt);
            Collections.sort(dVar.f6769b, C0081c.f6763f);
            for (C0081c c0081c : dVar.f6769b) {
                sb2.append(c0081c.f6767d);
            }
            Collections.sort(dVar.f6768a, C0081c.f6762e);
            for (C0081c c0081c2 : dVar.f6768a) {
                sb2.append(c0081c2.f6766c);
            }
            i9++;
            i10 = keyAt;
        }
        sb2.append(b(spanned.subSequence(i10, spanned.length())));
        return new b(sb2.toString(), hashMap);
    }

    private static String b(CharSequence charSequence) {
        return f6759a.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }

    private static SparseArray<d> c(Spanned spanned, float f10) {
        Object[] spans;
        SparseArray<d> sparseArray = new SparseArray<>();
        for (Object obj : spanned.getSpans(0, spanned.length(), Object.class)) {
            String e10 = e(obj, f10);
            String d10 = d(obj);
            int spanStart = spanned.getSpanStart(obj);
            int spanEnd = spanned.getSpanEnd(obj);
            if (e10 != null) {
                com.google.android.exoplayer2.util.a.e(d10);
                C0081c c0081c = new C0081c(spanStart, spanEnd, e10, d10);
                f(sparseArray, spanStart).f6768a.add(c0081c);
                f(sparseArray, spanEnd).f6769b.add(c0081c);
            }
        }
        return sparseArray;
    }

    @Nullable
    private static String d(Object obj) {
        if ((obj instanceof StrikethroughSpan) || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof b3.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof b3.e)) {
            return "</span>";
        }
        if (obj instanceof TypefaceSpan) {
            if (((TypefaceSpan) obj).getFamily() != null) {
                return "</span>";
            }
            return null;
        }
        if (obj instanceof StyleSpan) {
            int style = ((StyleSpan) obj).getStyle();
            if (style == 1) {
                return "</b>";
            }
            if (style == 2) {
                return "</i>";
            }
            if (style == 3) {
                return "</i></b>";
            }
        } else if (obj instanceof b3.c) {
            return "<rt>" + b(((b3.c) obj).f1160a) + "</rt></ruby>";
        } else if (obj instanceof UnderlineSpan) {
            return "</u>";
        }
        return null;
    }

    @Nullable
    private static String e(Object obj, float f10) {
        float size;
        if (obj instanceof StrikethroughSpan) {
            return "<span style='text-decoration:line-through;'>";
        }
        if (obj instanceof ForegroundColorSpan) {
            return l0.z("<span style='color:%s;'>", com.google.android.exoplayer2.ui.b.b(((ForegroundColorSpan) obj).getForegroundColor()));
        }
        if (obj instanceof BackgroundColorSpan) {
            return l0.z("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
        }
        if (obj instanceof b3.a) {
            return "<span style='text-combine-upright:all;'>";
        }
        if (obj instanceof AbsoluteSizeSpan) {
            AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
            if (absoluteSizeSpan.getDip()) {
                size = absoluteSizeSpan.getSize();
            } else {
                size = absoluteSizeSpan.getSize() / f10;
            }
            return l0.z("<span style='font-size:%.2fpx;'>", Float.valueOf(size));
        } else if (obj instanceof RelativeSizeSpan) {
            return l0.z("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
        } else {
            if (obj instanceof TypefaceSpan) {
                String family = ((TypefaceSpan) obj).getFamily();
                if (family != null) {
                    return l0.z("<span style='font-family:\"%s\";'>", family);
                }
                return null;
            } else if (obj instanceof StyleSpan) {
                int style = ((StyleSpan) obj).getStyle();
                if (style != 1) {
                    if (style != 2) {
                        if (style != 3) {
                            return null;
                        }
                        return "<b><i>";
                    }
                    return "<i>";
                }
                return "<b>";
            } else if (obj instanceof b3.c) {
                int i9 = ((b3.c) obj).f1161b;
                if (i9 != -1) {
                    if (i9 != 1) {
                        if (i9 != 2) {
                            return null;
                        }
                        return "<ruby style='ruby-position:under;'>";
                    }
                    return "<ruby style='ruby-position:over;'>";
                }
                return "<ruby style='ruby-position:unset;'>";
            } else if (obj instanceof UnderlineSpan) {
                return "<u>";
            } else {
                if (obj instanceof b3.e) {
                    b3.e eVar = (b3.e) obj;
                    return l0.z("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", h(eVar.f1162a, eVar.f1163b), g(eVar.f1164c));
                }
                return null;
            }
        }
    }

    private static d f(SparseArray<d> sparseArray, int i9) {
        d dVar = sparseArray.get(i9);
        if (dVar == null) {
            d dVar2 = new d();
            sparseArray.put(i9, dVar2);
            return dVar2;
        }
        return dVar;
    }

    private static String g(int i9) {
        return i9 != 2 ? "over right" : "under left";
    }

    private static String h(int i9, int i10) {
        StringBuilder sb2 = new StringBuilder();
        if (i10 == 1) {
            sb2.append("filled ");
        } else if (i10 == 2) {
            sb2.append("open ");
        }
        if (i9 == 0) {
            sb2.append(IntegrityManager.INTEGRITY_TYPE_NONE);
        } else if (i9 == 1) {
            sb2.append("circle");
        } else if (i9 == 2) {
            sb2.append("dot");
        } else if (i9 != 3) {
            sb2.append("unset");
        } else {
            sb2.append("sesame");
        }
        return sb2.toString();
    }
}
