package cn.jiguang.au;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.f.i;
import cn.jiguang.net.HttpRequest;
import cn.jiguang.net.HttpResponse;
import cn.jiguang.net.HttpUtils;
import cn.jiguang.net.SSLTrustManager;
import com.guochao.faceshow.utils.HttpFileUtil;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static SSLTrustManager f2098a;

    public static g a(Context context, String str, byte[] bArr, int i9, int i10, int i11) {
        try {
            HttpRequest httpRequest = new HttpRequest(str);
            a(httpRequest, context, bArr, i9, i11);
            while (i10 > 0) {
                i10--;
                HttpResponse httpPost = HttpUtils.httpPost(context, httpRequest);
                int responseCode = httpPost.getResponseCode();
                cn.jiguang.as.d.d("HttpHelper", "status code:" + responseCode + " retry left:" + i10);
                if (responseCode == 200) {
                    return new g(0, httpPost.getResponseBody());
                }
                if (responseCode == 401) {
                    return new g(-3, httpPost.getResponseBody());
                }
                if (responseCode == 404 || responseCode == 410 || responseCode == 429) {
                    return new g(-1, httpPost.getResponseBody());
                }
                if (responseCode == 503) {
                    return new g(-2, httpPost.getResponseBody());
                }
                if (responseCode != 3005) {
                    return responseCode >= 500 ? new g(-1, httpPost.getResponseBody()) : new g(-2, httpPost.getResponseBody());
                }
            }
            return new g(-2, "Failed - retry enough");
        } catch (AssertionError e10) {
            return new g(-2, "Catch AssertionError to avoid http close crash - " + e10.getMessage());
        } catch (Exception e11) {
            return new g(-2, "Exception - " + e11.getMessage());
        } catch (Throwable th2) {
            return new g(-2, "Exception - " + th2.getMessage());
        }
    }

    public static g a(String str, String str2, Context context, boolean z10, int i9, int i10) {
        try {
            try {
                byte[] bytes = str2.getBytes("UTF-8");
                if (z10) {
                    try {
                        bytes = i.a(bytes);
                    } catch (IOException e10) {
                        return new g(-2, "zip err:" + e10.getMessage());
                    }
                }
                HttpRequest httpRequest = new HttpRequest(str);
                a(httpRequest, context, bytes, i10);
                while (i9 > 0) {
                    i9--;
                    HttpResponse httpPost = HttpUtils.httpPost(context, httpRequest);
                    int responseCode = httpPost.getResponseCode();
                    cn.jiguang.as.d.d("HttpHelper", "status code:" + responseCode + " retry left:" + i9);
                    if (responseCode == 200) {
                        return new g(0, httpPost.getResponseBody());
                    }
                    if (responseCode == 401) {
                        return new g(-3, httpPost.getResponseBody());
                    }
                    if (responseCode == 404 || responseCode == 410 || responseCode == 429) {
                        return new g(-1, httpPost.getResponseBody());
                    }
                    if (responseCode == 503) {
                        return new g(-2, httpPost.getResponseBody());
                    }
                    if (responseCode != 3005) {
                        return responseCode >= 500 ? new g(-1, httpPost.getResponseBody()) : new g(-2, httpPost.getResponseBody());
                    }
                }
                return new g(-2, "Failed - retry enough");
            } catch (UnsupportedEncodingException e11) {
                return new g(-2, "Exception - " + e11.getMessage());
            }
        } catch (AssertionError e12) {
            return new g(-2, "Catch AssertionError to avoid http close crash - " + e12.getMessage());
        } catch (Exception e13) {
            return new g(-2, "Exception - " + e13.getMessage());
        } catch (Throwable th2) {
            return new g(-2, "Exception - " + th2.getMessage());
        }
    }

    private static void a(HttpRequest httpRequest, Context context, byte[] bArr, int i9) {
        String a10;
        httpRequest.setConnectTimeout(HttpFileUtil.TIMEOUT);
        httpRequest.setReadTimeout(HttpFileUtil.TIMEOUT);
        httpRequest.setDoOutPut(true);
        httpRequest.setDoInPut(true);
        httpRequest.setUseCaches(false);
        String a11 = cn.jiguang.bh.d.a(cn.jiguang.bh.d.a());
        byte[] a12 = cn.jiguang.bh.d.a(bArr, a11, (i9 == 2 || i9 == 3) ? "0102030405060708" : "iop203040506aPk!", true);
        httpRequest.setBody(a12);
        httpRequest.setRequestProperty("Content-Length", String.valueOf(a12.length));
        httpRequest.setNeedRetryIfHttpsFailed(true);
        if (f2098a == null) {
            try {
                if (!TextUtils.isEmpty("")) {
                    f2098a = new SSLTrustManager("");
                }
            } catch (Throwable unused) {
            }
        }
        SSLTrustManager sSLTrustManager = f2098a;
        if (sSLTrustManager != null) {
            httpRequest.setSslTrustManager(sSLTrustManager);
        }
        httpRequest.setRequestProperty("Accept", "application/jason");
        httpRequest.setRequestProperty("Accept-Encoding", "gzip");
        httpRequest.setRequestProperty("X-App-Key", cn.jiguang.d.a.e(context));
        if (i9 == 2 || i9 == 3) {
            httpRequest.setHaveRspData(true);
            httpRequest.setRspDatazip(true);
            httpRequest.setNeedErrorInput(true);
            httpRequest.setRequestProperty("FillType", "1");
            if (i9 == 3) {
                httpRequest.setRequestProperty("X-Real-IP", "jcore");
                a10 = f.b(a11);
            } else {
                a10 = f.a(a11);
            }
        } else {
            boolean z10 = i9 == 4;
            httpRequest.setHaveRspData(z10);
            httpRequest.setRspDatazip(z10);
            a10 = "Basic " + f.a(context, cn.jiguang.f.g.b(a12), a11, z10);
        }
        httpRequest.setRequestProperty("Authorization", a10);
        httpRequest.setRequestProperty("Charset", "UTF-8");
    }

    private static void a(HttpRequest httpRequest, Context context, byte[] bArr, int i9, int i10) {
        String str;
        httpRequest.setConnectTimeout(HttpFileUtil.TIMEOUT);
        httpRequest.setReadTimeout(HttpFileUtil.TIMEOUT);
        httpRequest.setDoOutPut(true);
        httpRequest.setDoInPut(true);
        httpRequest.setUseCaches(false);
        httpRequest.setBody(bArr);
        httpRequest.setRequestProperty("Content-Length", String.valueOf(bArr.length));
        httpRequest.setNeedRetryIfHttpsFailed(true);
        if (f2098a == null) {
            try {
                if (!TextUtils.isEmpty("")) {
                    f2098a = new SSLTrustManager("");
                }
            } catch (Throwable unused) {
            }
        }
        SSLTrustManager sSLTrustManager = f2098a;
        if (sSLTrustManager != null) {
            httpRequest.setSslTrustManager(sSLTrustManager);
        }
        httpRequest.setRequestProperty("Accept", "application/jason");
        httpRequest.setRequestProperty("Accept-Encoding", "gzip");
        httpRequest.setRequestProperty("X-App-Key", cn.jiguang.d.a.e(context));
        httpRequest.setRequestProperty("Charset", "UTF-8");
        httpRequest.setRequestProperty(EngineConst.PluginName.HOST_NAME, (!JCoreManager.isTestEnv() || TextUtils.isEmpty(f.f2120c)) ? "stats.jpush.cn" : Uri.parse(f.f2120c).getHost());
        String a10 = cn.jiguang.bh.d.a(i9);
        if (i10 == 2) {
            httpRequest.setHaveRspData(true);
            httpRequest.setRspDatazip(true);
            httpRequest.setNeedErrorInput(true);
            httpRequest.setRequestProperty("FillType", "1");
            str = f.a(a10);
        } else {
            httpRequest.setHaveRspData(false);
            httpRequest.setRspDatazip(false);
            str = "Basic " + f.a(context, cn.jiguang.f.g.b(bArr), a10);
        }
        httpRequest.setRequestProperty("Authorization", str);
    }
}
