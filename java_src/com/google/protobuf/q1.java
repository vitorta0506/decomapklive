package com.google.protobuf;

import com.google.protobuf.GeneratedMessageLite;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class q1 {
    private static final String a(String str) {
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

    private static boolean b(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() == 0;
        } else if (obj instanceof Float) {
            return Float.floatToRawIntBits(((Float) obj).floatValue()) == 0;
        } else if (obj instanceof Double) {
            return Double.doubleToRawLongBits(((Double) obj).doubleValue()) == 0;
        } else if (obj instanceof String) {
            return obj.equals("");
        } else {
            if (obj instanceof ByteString) {
                return obj.equals(ByteString.EMPTY);
            }
            return obj instanceof o1 ? obj == ((o1) obj).getDefaultInstanceForType() : (obj instanceof java.lang.Enum) && ((java.lang.Enum) obj).ordinal() == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void c(StringBuilder sb2, int i9, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                c(sb2, i9, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                c(sb2, i9, str, entry);
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
                sb2.append(x2.e((String) obj));
                sb2.append(Typography.quote);
            } else if (obj instanceof ByteString) {
                sb2.append(": \"");
                sb2.append(x2.a((ByteString) obj));
                sb2.append(Typography.quote);
            } else if (obj instanceof GeneratedMessageLite) {
                sb2.append(" {");
                d((GeneratedMessageLite) obj, sb2, i9 + 2);
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
                c(sb2, i12, "key", entry2.getKey());
                c(sb2, i12, "value", entry2.getValue());
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

    private static void d(o1 o1Var, StringBuilder sb2, int i9) {
        java.lang.reflect.Method[] declaredMethods;
        Map.Entry<GeneratedMessageLite.c, Object> next;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (java.lang.reflect.Method method : o1Var.getClass().getDeclaredMethods()) {
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
            boolean z10 = true;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String str2 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 4);
                java.lang.reflect.Method method2 = (java.lang.reflect.Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    c(sb2, i9, a(str2), GeneratedMessageLite.invokeOrDie(method2, o1Var, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String str3 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 3);
                java.lang.reflect.Method method3 = (java.lang.reflect.Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    c(sb2, i9, a(str3), GeneratedMessageLite.invokeOrDie(method3, o1Var, new Object[0]));
                }
            }
            if (((java.lang.reflect.Method) hashMap2.get("set" + substring)) != null) {
                if (substring.endsWith("Bytes")) {
                    if (hashMap.containsKey("get" + substring.substring(0, substring.length() - 5))) {
                    }
                }
                String str4 = substring.substring(0, 1).toLowerCase() + substring.substring(1);
                java.lang.reflect.Method method4 = (java.lang.reflect.Method) hashMap.get("get" + substring);
                java.lang.reflect.Method method5 = (java.lang.reflect.Method) hashMap.get("has" + substring);
                if (method4 != null) {
                    Object invokeOrDie = GeneratedMessageLite.invokeOrDie(method4, o1Var, new Object[0]);
                    if (method5 == null) {
                        if (b(invokeOrDie)) {
                            z10 = false;
                        }
                    } else {
                        z10 = ((Boolean) GeneratedMessageLite.invokeOrDie(method5, o1Var, new Object[0])).booleanValue();
                    }
                    if (z10) {
                        c(sb2, i9, a(str4), invokeOrDie);
                    }
                }
            }
        }
        if (o1Var instanceof GeneratedMessageLite.b) {
            Iterator<Map.Entry<GeneratedMessageLite.c, Object>> E = ((GeneratedMessageLite.b) o1Var).f14694d.E();
            while (E.hasNext()) {
                c(sb2, i9, "[" + next.getKey().getNumber() + "]", E.next().getValue());
            }
        }
        i3 i3Var = ((GeneratedMessageLite) o1Var).f14689a;
        if (i3Var != null) {
            i3Var.l(sb2, i9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(o1 o1Var, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        d(o1Var, sb2, 0);
        return sb2.toString();
    }
}
