package androidx.renderscript;

import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public class ScriptC extends Script {
    private static final String TAG = "ScriptC";

    protected ScriptC(long j10, RenderScript renderScript) {
        super(j10, renderScript);
    }

    private static synchronized long internalCreate(RenderScript renderScript, Resources resources, int i9) {
        long nScriptCCreate;
        synchronized (ScriptC.class) {
            InputStream openRawResource = resources.openRawResource(i9);
            try {
                try {
                    byte[] bArr = new byte[1024];
                    int i10 = 0;
                    while (true) {
                        int length = bArr.length - i10;
                        if (length == 0) {
                            int length2 = bArr.length * 2;
                            byte[] bArr2 = new byte[length2];
                            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                            length = length2 - i10;
                            bArr = bArr2;
                        }
                        int read = openRawResource.read(bArr, i10, length);
                        if (read <= 0) {
                            nScriptCCreate = renderScript.nScriptCCreate(resources.getResourceEntryName(i9), renderScript.getApplicationContext().getCacheDir().toString(), bArr, i10);
                        } else {
                            i10 += read;
                        }
                    }
                } catch (IOException unused) {
                    throw new Resources.NotFoundException();
                }
            } finally {
                openRawResource.close();
            }
        }
        return nScriptCCreate;
    }

    private static synchronized long internalStringCreate(RenderScript renderScript, String str, byte[] bArr) {
        long nScriptCCreate;
        synchronized (ScriptC.class) {
            nScriptCCreate = renderScript.nScriptCCreate(str, renderScript.getApplicationContext().getCacheDir().toString(), bArr, bArr.length);
        }
        return nScriptCCreate;
    }

    protected ScriptC(RenderScript renderScript, Resources resources, int i9) {
        super(0L, renderScript);
        long internalCreate = internalCreate(renderScript, resources, i9);
        if (internalCreate != 0) {
            setID(internalCreate);
            return;
        }
        throw new RSRuntimeException("Loading of ScriptC script failed.");
    }

    protected ScriptC(RenderScript renderScript, String str, byte[] bArr, byte[] bArr2) {
        super(0L, renderScript);
        long internalStringCreate;
        if (RenderScript.sPointerSize == 4) {
            internalStringCreate = internalStringCreate(renderScript, str, bArr);
        } else {
            internalStringCreate = internalStringCreate(renderScript, str, bArr2);
        }
        if (internalStringCreate != 0) {
            setID(internalStringCreate);
            return;
        }
        throw new RSRuntimeException("Loading of ScriptC script failed.");
    }
}
