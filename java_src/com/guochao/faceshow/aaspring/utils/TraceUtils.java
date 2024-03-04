package com.guochao.faceshow.aaspring.utils;

import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.security.CertificateUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
public class TraceUtils {
    private static final String EXCEED_PING = "exceed";
    private static final String FROM_PING = "From";
    private static final String PARENTHESE_CLOSE_PING = ")";
    private static final String PARENTHESE_OPEN_PING = "(";
    private static final String PING = "PING";
    private static final String SMALL_FROM_PING = "from";
    private static final String TIME_PING = "time=";
    private static final String UNREACHABLE_PING = "100%";
    private float elapsedTime;
    private String ipToPing;
    Callback mCallback;
    private final int MAX_TTL = 30;
    private int ttl = 1;
    private List<TraceRouteContainer> traces = new ArrayList();
    private int maxTtl = 30;

    /* loaded from: classes3.dex */
    public interface Callback {
        void onTrace(TraceRouteContainer traceRouteContainer);
    }

    /* loaded from: classes3.dex */
    public static class TraceRouteContainer {
        private float elapsedtime;
        private String hostname;
        private String ip;
        private int ttl;

        public TraceRouteContainer(String str, String str2, float f10) {
            this.hostname = str;
            this.ip = str2;
            this.elapsedtime = f10;
        }

        public String getIp() {
            return this.ip;
        }

        public int getTtl() {
            return this.ttl;
        }

        public void setHostname(String str) {
            this.hostname = str;
        }

        public void setTtl(int i9) {
            this.ttl = i9;
        }

        public String toString() {
            return String.format("%d    %s     %s      %.2f ms", Integer.valueOf(this.ttl), this.hostname, this.ip, Float.valueOf(this.elapsedtime));
        }
    }

    public TraceUtils(Callback callback) {
        this.mCallback = callback;
    }

    private String launchPing(String str) throws IOException {
        String format = String.format("ping -c 1 -w 4 -t %d ", Integer.valueOf(this.ttl));
        long nanoTime = System.nanoTime();
        Process exec = Runtime.getRuntime().exec(format + str);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
        String str2 = "";
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            str2 = str2 + readLine + IOUtils.LINE_SEPARATOR_UNIX;
            if (readLine.contains(FROM_PING) || readLine.contains("from")) {
                this.elapsedTime = ((float) (System.nanoTime() - nanoTime)) / 1000000.0f;
            }
        }
        Log.v("zzz", str2);
        exec.destroy();
        if (!str2.equals("")) {
            if (this.ttl == 1) {
                this.ipToPing = parseIpToPingFromPing(str2);
            }
            return str2;
        }
        throw new IllegalArgumentException();
    }

    private String parseIpFromPing(String str) {
        int indexOf;
        if (str.contains(FROM_PING)) {
            String substring = str.substring(str.indexOf(FROM_PING) + 5);
            if (substring.contains(PARENTHESE_OPEN_PING)) {
                return substring.substring(substring.indexOf(PARENTHESE_OPEN_PING) + 1, substring.indexOf(PARENTHESE_CLOSE_PING));
            }
            String substring2 = substring.substring(0, substring.indexOf(IOUtils.LINE_SEPARATOR_UNIX));
            if (substring2.contains(CertificateUtil.DELIMITER)) {
                indexOf = substring2.indexOf(CertificateUtil.DELIMITER);
            } else {
                indexOf = substring2.indexOf(" ");
            }
            return substring2.substring(0, indexOf);
        }
        return str.substring(str.indexOf(PARENTHESE_OPEN_PING) + 1, str.indexOf(PARENTHESE_CLOSE_PING));
    }

    private String parseIpToPingFromPing(String str) {
        if (str.contains(PING)) {
            return str.substring(str.indexOf(PARENTHESE_OPEN_PING) + 1, str.indexOf(PARENTHESE_CLOSE_PING));
        }
        return "";
    }

    private String parseTimeFromPing(String str) {
        if (str.contains(TIME_PING)) {
            String substring = str.substring(str.indexOf(TIME_PING) + 5);
            return substring.substring(0, substring.indexOf(" "));
        }
        return "";
    }

    private void showResultInLog() {
        for (TraceRouteContainer traceRouteContainer : this.traces) {
            Log.v("ccc", traceRouteContainer.toString());
        }
        this.ttl = 1;
    }

    public String doInBackground(String str) {
        String str2;
        TraceRouteContainer traceRouteContainer;
        float f10;
        try {
            str2 = launchPing(str);
        } catch (IOException e10) {
            e10.printStackTrace();
            str2 = "";
        }
        if (str2.contains(UNREACHABLE_PING) && !str2.contains(EXCEED_PING)) {
            traceRouteContainer = new TraceRouteContainer("", parseIpFromPing(str2), this.elapsedTime);
        } else {
            String parseIpFromPing = parseIpFromPing(str2);
            if (this.ttl == this.maxTtl) {
                f10 = Float.parseFloat(parseTimeFromPing(str2));
            } else {
                f10 = this.elapsedTime;
            }
            traceRouteContainer = new TraceRouteContainer("", parseIpFromPing, f10);
        }
        try {
            traceRouteContainer.setHostname(InetAddress.getByName(traceRouteContainer.getIp()).getHostName());
        } catch (UnknownHostException e11) {
            e11.printStackTrace();
        }
        this.traces.add(traceRouteContainer);
        traceRouteContainer.setTtl(this.ttl);
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onTrace(traceRouteContainer);
        }
        onPostExecute(str2);
        return str2;
    }

    protected void onPostExecute(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        List<TraceRouteContainer> list = this.traces;
        if (list.get(list.size() - 1).getIp().equals(this.ipToPing)) {
            int i9 = this.ttl;
            int i10 = this.maxTtl;
            if (i9 < i10) {
                this.ttl = i10;
                List<TraceRouteContainer> list2 = this.traces;
                list2.remove(list2.size() - 1);
                doInBackground(this.ipToPing);
                return;
            }
            showResultInLog();
            return;
        }
        int i11 = this.ttl;
        if (i11 < this.maxTtl) {
            this.ttl = i11 + 1;
            doInBackground(this.ipToPing);
        }
    }
}
