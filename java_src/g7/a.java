package g7;

import android.net.ParseException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.SerializedName;
import java.io.NotSerializableException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import retrofit2.HttpException;
/* loaded from: classes3.dex */
public class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private Throwable f39965a;

    /* renamed from: b  reason: collision with root package name */
    private int f39966b;

    /* renamed from: c  reason: collision with root package name */
    private String f39967c;
    @SerializedName("msg")

    /* renamed from: d  reason: collision with root package name */
    private String f39968d;

    /* renamed from: e  reason: collision with root package name */
    private T f39969e;

    public a() {
        this.f39965a = new RuntimeException("");
        this.f39966b = -1;
        this.f39968d = "";
    }

    public static a e(Throwable th2) {
        if (th2 instanceof HttpException) {
            HttpException httpException = (HttpException) th2;
            a aVar = new a(httpException, httpException.code());
            aVar.f39968d = httpException.getMessage();
            return aVar;
        } else if (!(th2 instanceof JsonParseException) && !(th2 instanceof JSONException) && !(th2 instanceof JsonSyntaxException) && !(th2 instanceof JsonSerializer) && !(th2 instanceof NotSerializableException) && !(th2 instanceof ParseException)) {
            if (th2 instanceof ClassCastException) {
                a aVar2 = new a(th2, 1007);
                aVar2.f39968d = "ClassCastExeption";
                return aVar2;
            } else if (th2 instanceof ConnectException) {
                a aVar3 = new a(th2, 1002);
                aVar3.f39968d = "Connect failed";
                return aVar3;
            } else if (th2 instanceof SSLHandshakeException) {
                a aVar4 = new a(th2, 1004);
                aVar4.f39968d = "SSL verify failed";
                return aVar4;
            } else if (th2 instanceof ConnectTimeoutException) {
                a aVar5 = new a(th2, 1005);
                aVar5.f39968d = "Connect time out";
                return aVar5;
            } else if (th2 instanceof SocketTimeoutException) {
                a aVar6 = new a(th2, 1005);
                aVar6.f39968d = "Connect time out";
                return aVar6;
            } else if (th2 instanceof UnknownHostException) {
                a aVar7 = new a(th2, 1009);
                aVar7.f39968d = "dns failed";
                return aVar7;
            } else if (th2 instanceof NullPointerException) {
                a aVar8 = new a(th2, 1010);
                aVar8.f39968d = "NullPointerException";
                return aVar8;
            } else {
                a aVar9 = new a(th2, 1000);
                aVar9.f39968d = "Unknown error";
                return aVar9;
            }
        } else {
            a aVar10 = new a(th2, 1001);
            aVar10.f39968d = "Parse json failed";
            return aVar10;
        }
    }

    public int a() {
        return this.f39966b;
    }

    public String b() {
        return this.f39967c;
    }

    public String c() {
        return this.f39968d;
    }

    public T d() {
        return this.f39969e;
    }

    public void f(T t10) {
        this.f39969e = t10;
    }

    public String toString() {
        return "ApiException{mThrowable=" + this.f39965a + ", code=" + this.f39966b + ", displayMessage='" + this.f39967c + "', message='" + this.f39968d + "', mResult=" + this.f39969e + '}';
    }

    public a(Throwable th2, int i9) {
        if (th2 == null) {
            this.f39965a = new RuntimeException();
        } else {
            this.f39965a = th2;
        }
        this.f39966b = i9;
        this.f39968d = this.f39965a.getMessage();
    }
}
