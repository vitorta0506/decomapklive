package cn.jpush.android.webview.bridge;

import android.text.TextUtils;
import android.webkit.WebView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import cn.jpush.android.helper.Logger;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, Method> f3455a;

    /* renamed from: b  reason: collision with root package name */
    private String f3456b;

    /* renamed from: c  reason: collision with root package name */
    private String f3457c;

    public c(String str, Class cls) {
        String a10;
        try {
            if (TextUtils.isEmpty(str)) {
                throw new Exception("injected name can not be null");
            }
            this.f3456b = str;
            this.f3455a = new HashMap<>();
            Method[] declaredMethods = cls.getDeclaredMethods();
            StringBuilder sb2 = new StringBuilder("javascript:(function(b){console.log(\"");
            sb2.append(this.f3456b);
            sb2.append(" initialization begin\");var a={queue:[],callback:function(){var d=Array.prototype.slice.call(arguments,0);var c=d.shift();var e=d.shift();this.queue[c].apply(this,d);if(!e){delete this.queue[c]}}};");
            for (Method method : declaredMethods) {
                if (method.getModifiers() == 9 && (a10 = a(method)) != null) {
                    this.f3455a.put(a10, method);
                    sb2.append(String.format(Locale.ENGLISH, "a.%s=", method.getName()));
                }
            }
            sb2.append("function(){var f=Array.prototype.slice.call(arguments,0);if(f.length<1){throw\"");
            sb2.append(this.f3456b);
            sb2.append(" call error, message:miss method name\"}var e=[];for(var h=1;h<f.length;h++){var c=f[h];var j=typeof c;e[e.length]=j;if(j==\"function\"){var d=a.queue.length;a.queue[d]=c;f[h]=d}}var g=JSON.parse(prompt(JSON.stringify({method:f.shift(),types:e,args:f})));if(g.code!=200){throw\"");
            sb2.append(this.f3456b);
            sb2.append(" call error, code:\"+g.code+\", message:\"+g.result}return g.result};Object.getOwnPropertyNames(a).forEach(function(d){var c=a[d];if(typeof c===\"function\"&&d!==\"callback\"){a[d]=function(){return c.apply(a,[d].concat(Array.prototype.slice.call(arguments,0)))}}});b.");
            sb2.append(this.f3456b);
            sb2.append("=a;console.log(\"");
            sb2.append(this.f3456b);
            sb2.append(" initialization end\")})(window);");
            this.f3457c = sb2.toString();
            Logger.d("JsCallJava", "----------" + sb2.toString());
        } catch (Exception e10) {
            Logger.e("JsCallJava", "init js error:" + e10.getMessage());
        }
    }

    private String a(String str, int i9, Object obj) {
        String valueOf;
        if (obj == null) {
            valueOf = "null";
        } else if (obj instanceof String) {
            String replace = ((String) obj).replace("\"", "\\\"");
            valueOf = "\"" + ((Object) replace) + "\"";
        } else {
            valueOf = ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof JSONObject)) ? String.valueOf(obj) : "";
        }
        String format = String.format(Locale.ENGLISH, "{\"code\": %d, \"result\": %s}", Integer.valueOf(i9), valueOf);
        Logger.d("JsCallJava", this.f3456b + " call json: " + str + " result:" + format);
        return format;
    }

    private String a(Method method) {
        StringBuilder sb2;
        String str;
        String name = method.getName();
        Class<?>[] parameterTypes = method.getParameterTypes();
        int length = parameterTypes.length;
        if (length < 1 || parameterTypes[0] != WebView.class) {
            Logger.w("JsCallJava", "method(" + name + ") must use webview to be first parameter, will be pass");
            return null;
        }
        for (int i9 = 1; i9 < length; i9++) {
            Class<?> cls = parameterTypes[i9];
            if (cls == String.class) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_S";
            } else if (cls == Integer.TYPE || cls == Long.TYPE || cls == Float.TYPE || cls == Double.TYPE) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_N";
            } else if (cls == Boolean.TYPE) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_B";
            } else if (cls == JSONObject.class) {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_O";
            } else {
                sb2 = new StringBuilder();
                sb2.append(name);
                str = "_P";
            }
            sb2.append(str);
            name = sb2.toString();
        }
        return name;
    }

    public String a() {
        return this.f3457c;
    }

    public String a(WebView webView, String str) {
        StringBuilder sb2;
        String message;
        String sb3;
        if (TextUtils.isEmpty(str)) {
            sb3 = "call data empty";
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString(PushConstants.MZ_PUSH_MESSAGE_METHOD);
                JSONArray jSONArray = jSONObject.getJSONArray("types");
                JSONArray jSONArray2 = jSONObject.getJSONArray("args");
                int length = jSONArray.length();
                Object[] objArr = new Object[length + 1];
                int i9 = 0;
                objArr[0] = webView;
                int i10 = 0;
                while (true) {
                    Object obj = null;
                    if (i9 >= length) {
                        break;
                    }
                    String optString = jSONArray.optString(i9);
                    if (TypedValues.Custom.S_STRING.equals(optString)) {
                        string = string + "_S";
                        int i11 = i9 + 1;
                        if (!jSONArray2.isNull(i9)) {
                            obj = jSONArray2.getString(i9);
                        }
                        objArr[i11] = obj;
                    } else if ("number".equals(optString)) {
                        string = string + "_N";
                        i10 = (i10 * 10) + i9 + 1;
                    } else if (TypedValues.Custom.S_BOOLEAN.equals(optString)) {
                        string = string + "_B";
                        objArr[i9 + 1] = Boolean.valueOf(jSONArray2.getBoolean(i9));
                    } else if ("object".equals(optString)) {
                        string = string + "_O";
                        int i12 = i9 + 1;
                        if (!jSONArray2.isNull(i9)) {
                            obj = jSONArray2.getJSONObject(i9);
                        }
                        objArr[i12] = obj;
                    } else {
                        string = string + "_P";
                    }
                    i9++;
                }
                Method method = this.f3455a.get(string);
                if (method == null) {
                    return a(str, 500, "not found method(" + string + ") with valid parameters");
                }
                if (i10 > 0) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    while (i10 > 0) {
                        int i13 = i10 - ((i10 / 10) * 10);
                        Class<?> cls = parameterTypes[i13];
                        if (cls == Integer.TYPE) {
                            objArr[i13] = Integer.valueOf(jSONArray2.getInt(i13 - 1));
                        } else if (cls == Long.TYPE) {
                            objArr[i13] = Long.valueOf(Long.parseLong(jSONArray2.getString(i13 - 1)));
                        } else {
                            objArr[i13] = Double.valueOf(jSONArray2.getDouble(i13 - 1));
                        }
                        i10 /= 10;
                    }
                }
                return a(str, 200, method.invoke(null, objArr));
            } catch (Exception e10) {
                if (e10.getCause() != null) {
                    sb2 = new StringBuilder();
                    sb2.append("method execute error:");
                    message = e10.getCause().getMessage();
                } else {
                    sb2 = new StringBuilder();
                    sb2.append("method execute error:");
                    message = e10.getMessage();
                }
                sb2.append(message);
                sb3 = sb2.toString();
            }
        }
        return a(str, 500, sb3);
    }
}
