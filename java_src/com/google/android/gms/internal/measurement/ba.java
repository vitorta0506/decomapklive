package com.google.android.gms.internal.measurement;

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
public final class ba {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(z9 z9Var, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        d(z9Var, sb2, 0);
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
                sb2.append(ab.a(zzjd.zzm((String) obj)));
                sb2.append(Typography.quote);
            } else if (obj instanceof zzjd) {
                sb2.append(": \"");
                sb2.append(ab.a((zzjd) obj));
                sb2.append(Typography.quote);
            } else if (obj instanceof x8) {
                sb2.append(" {");
                d((x8) obj, sb2, i9 + 2);
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
                sb2.append(obj);
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

    private static void d(z9 z9Var, StringBuilder sb2, int i9) {
        Method[] declaredMethods;
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : z9Var.getClass().getDeclaredMethods()) {
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
                String concat = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1, substring.length() - 4)));
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    b(sb2, i9, c(concat), x8.p(method2, z9Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String concat2 = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1, substring.length() - 3)));
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    b(sb2, i9, c(concat2), x8.p(method3, z9Var, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set".concat(substring))) != null && (!substring.endsWith("Bytes") || !hashMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                String concat3 = String.valueOf(substring.substring(0, 1).toLowerCase()).concat(String.valueOf(substring.substring(1)));
                Method method4 = (Method) hashMap.get("get".concat(substring));
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object p10 = x8.p(method4, z9Var, new Object[0]);
                    if (method5 == null) {
                        if (p10 instanceof Boolean) {
                            if (((Boolean) p10).booleanValue()) {
                                b(sb2, i9, c(concat3), p10);
                            }
                        } else if (p10 instanceof Integer) {
                            if (((Integer) p10).intValue() != 0) {
                                b(sb2, i9, c(concat3), p10);
                            }
                        } else if (p10 instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) p10).floatValue()) != 0) {
                                b(sb2, i9, c(concat3), p10);
                            }
                        } else if (p10 instanceof Double) {
                            if (Double.doubleToRawLongBits(((Double) p10).doubleValue()) != 0) {
                                b(sb2, i9, c(concat3), p10);
                            }
                        } else {
                            if (p10 instanceof String) {
                                equals = p10.equals("");
                            } else if (p10 instanceof zzjd) {
                                equals = p10.equals(zzjd.zzb);
                            } else if (p10 instanceof z9) {
                                if (p10 != ((z9) p10).f()) {
                                    b(sb2, i9, c(concat3), p10);
                                }
                            } else {
                                if ((p10 instanceof Enum) && ((Enum) p10).ordinal() == 0) {
                                }
                                b(sb2, i9, c(concat3), p10);
                            }
                            if (!equals) {
                                b(sb2, i9, c(concat3), p10);
                            }
                        }
                    } else if (((Boolean) x8.p(method5, z9Var, new Object[0])).booleanValue()) {
                        b(sb2, i9, c(concat3), p10);
                    }
                }
            }
        }
        if (!(z9Var instanceof v8)) {
            cb cbVar = ((x8) z9Var).zzc;
            if (cbVar != null) {
                cbVar.g(sb2, i9);
                return;
            }
            return;
        }
        v8 v8Var = (v8) z9Var;
        throw null;
    }
}
