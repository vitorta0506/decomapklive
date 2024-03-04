package ec;

import android.content.Context;
import android.os.AsyncTask;
import java.io.InputStream;
/* loaded from: classes4.dex */
public class d extends AsyncTask<Context, Integer, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f38556a = d.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public Boolean doInBackground(Context... contextArr) {
        InputStream inputStream;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            inputStream = a.m(contextArr[0]);
        } catch (Exception e10) {
            String str = f38556a;
            f.d(str, "doInBackground: exception : " + e10.getMessage());
            inputStream = null;
        }
        String str2 = f38556a;
        f.b(str2, "doInBackground: get bks from hms tss cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        if (inputStream != null) {
            e.b(inputStream);
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: b */
    public void onPostExecute(Boolean bool) {
        if (bool.booleanValue()) {
            f.e(f38556a, "onPostExecute: upate done");
        } else {
            f.d(f38556a, "onPostExecute: upate failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: c */
    public void onProgressUpdate(Integer... numArr) {
        f.e(f38556a, "onProgressUpdate");
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        f.b(f38556a, "onPreExecute");
    }
}
