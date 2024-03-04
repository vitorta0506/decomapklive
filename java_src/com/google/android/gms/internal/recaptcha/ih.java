package com.google.android.gms.internal.recaptcha;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ih {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(gh ghVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        d(ghVar, sb2, 0);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void b(StringBuilder sb2, int i9, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                b(sb2, i9, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                b(sb2, i9, str, entry);
            }
        } else {
            sb2.append('\n');
            int i10 = 0;
            for (int i11 = 0; i11 < i9; i11++) {
                sb2.append(' ');
            }
            sb2.append(str);
            if (obj instanceof String) {
                sb2.append(": \"");
                sb2.append(gi.a(zzpy.zzp((String) obj)));
                sb2.append(Typography.quote);
            } else if (obj instanceof zzpy) {
                sb2.append(": \"");
                sb2.append(gi.a((zzpy) obj));
                sb2.append(Typography.quote);
            } else if (obj instanceof dg) {
                sb2.append(" {");
                d((dg) obj, sb2, i9 + 2);
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                while (i10 < i9) {
                    sb2.append(' ');
                    i10++;
                }
                sb2.append("}");
            } else if (obj instanceof Map.Entry) {
                sb2.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i12 = i9 + 2;
                b(sb2, i12, "key", entry2.getKey());
                b(sb2, i12, "value", entry2.getValue());
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
                while (i10 < i9) {
                    sb2.append(' ');
                    i10++;
                }
                sb2.append("}");
            } else {
                sb2.append(": ");
                sb2.append(obj.toString());
            }
        }
    }

    private static final String c(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i9 = 0; i9 < str.length(); i9++) {
            char charAt = str.charAt(i9);
            if (Character.isUpperCase(charAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(charAt));
        }
        return sb2.toString();
    }

    private static void d(gh ghVar, StringBuilder sb2, int i9) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : ghVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    b(sb2, i9, c(concat), dg.j(method2, ghVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    b(sb2, i9, c(concat2), dg.j(method3, ghVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get(substring.length() != 0 ? "set".concat(substring) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf5 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf5.length() != 0 ? "get".concat(valueOf5) : new String("get"))) {
                    }
                }
                String valueOf6 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf7 = String.valueOf(substring.substring(1));
                String concat3 = valueOf7.length() != 0 ? valueOf6.concat(valueOf7) : new String(valueOf6);
                Method method4 = (Method) hashMap.get(substring.length() != 0 ? "get".concat(substring) : new String("get"));
                Method method5 = (Method) hashMap.get(substring.length() != 0 ? "has".concat(substring) : new String("has"));
                if (method4 != null) {
                    Object j10 = dg.j(method4, ghVar, new Object[0]);
                    if (method5 == null) {
                        if (j10 instanceof Boolean) {
                            if (((Boolean) j10).booleanValue()) {
                                b(sb2, i9, c(concat3), j10);
                            }
                        } else if (j10 instanceof Integer) {
                            if (((Integer) j10).intValue() != 0) {
                                b(sb2, i9, c(concat3), j10);
                            }
                        } else if (j10 instanceof Float) {
                            if (((Float) j10).floatValue() != 0.0f) {
                                b(sb2, i9, c(concat3), j10);
                            }
                        } else if (j10 instanceof Double) {
                            if (((Double) j10).doubleValue() != 0.0d) {
                                b(sb2, i9, c(concat3), j10);
                            }
                        } else {
                            if (j10 instanceof String) {
                                equals = j10.equals("");
                            } else if (j10 instanceof zzpy) {
                                equals = j10.equals(zzpy.zzb);
                            } else if (j10 instanceof gh) {
                                if (j10 != ((gh) j10).h()) {
                                    b(sb2, i9, c(concat3), j10);
                                }
                            } else {
                                if ((j10 instanceof Enum) && ((Enum) j10).ordinal() == 0) {
                                }
                                b(sb2, i9, c(concat3), j10);
                            }
                            if (!equals) {
                                b(sb2, i9, c(concat3), j10);
                            }
                        }
                    } else if (((Boolean) dg.j(method5, ghVar, new Object[0])).booleanValue()) {
                        b(sb2, i9, c(concat3), j10);
                    }
                }
            }
        }
        if (!(ghVar instanceof bg)) {
            li liVar = ((dg) ghVar).zzc;
            if (liVar != null) {
                liVar.g(sb2, i9);
                return;
            }
            return;
        }
        bg bgVar = (bg) ghVar;
        throw null;
    }
}
