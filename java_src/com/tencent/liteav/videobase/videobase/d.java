package com.tencent.liteav.videobase.videobase;

import com.tencent.liteav.base.Log;
import com.tencent.liteav.videobase.videobase.h;
/* loaded from: classes4.dex */
public abstract class d implements IVideoReporter {
    private static final String TAG = "NativeVideoReporter";
    protected long mNativeVideoReporter;

    protected abstract void nativeNotifyError(long j10, int i9, String str);

    protected abstract void nativeNotifyEvent(long j10, int i9, String str);

    protected abstract void nativeNotifyWarning(long j10, int i9, String str);

    protected abstract void nativeUpdateKeyStatus(long j10, int i9, int i10, double d10);

    protected abstract void nativeUpdateKeyStatusObject(long j10, int i9, int i10, Object obj);

    protected abstract void nativeUpdateStatus(long j10, int i9, double d10);

    protected abstract void nativeUpdateStatusObject(long j10, int i9, Object obj);

    protected abstract void nativeUpdateStatusString(long j10, int i9, String str);

    @Override // com.tencent.liteav.videobase.videobase.IVideoReporter
    public synchronized void notifyError(h.a aVar, String str, Object... objArr) {
        if (this.mNativeVideoReporter != 0) {
            String str2 = "";
            if (str != null && !str.isEmpty()) {
                str2 = "" + String.format(str, objArr);
            }
            int a10 = h.a(aVar);
            if (a10 != 0) {
                nativeNotifyError(this.mNativeVideoReporter, a10, str2);
                return;
            }
            Log.i(TAG, "notifyError error code:" + aVar + ", do not need transfer to LiteAvCode:" + a10, new Object[0]);
        }
    }

    @Override // com.tencent.liteav.videobase.videobase.IVideoReporter
    public synchronized void notifyEvent(h.b bVar, String str, Object... objArr) {
        if (this.mNativeVideoReporter != 0) {
            String str2 = "";
            if (str != null && !str.isEmpty()) {
                str2 = String.format(str, objArr);
            }
            int a10 = h.a(bVar);
            if (a10 != 0) {
                if (h.b(bVar)) {
                    nativeNotifyWarning(this.mNativeVideoReporter, a10, str2);
                    return;
                } else {
                    nativeNotifyEvent(this.mNativeVideoReporter, a10, str2);
                    return;
                }
            }
            Log.i(TAG, "notifyEvent event code:" + bVar + ", do not need transfer to LiteAvCode:" + a10, new Object[0]);
        }
    }

    @Override // com.tencent.liteav.videobase.videobase.IVideoReporter
    public synchronized void notifyWarning(h.c cVar, String str, Object... objArr) {
        if (this.mNativeVideoReporter != 0) {
            String str2 = "";
            if (str != null && !str.isEmpty()) {
                str2 = "" + String.format(str, objArr);
            }
            int a10 = h.a(cVar);
            if (a10 != 0) {
                nativeNotifyWarning(this.mNativeVideoReporter, a10, str2);
                return;
            }
            Log.i(TAG, "notifyWarning warning code:" + cVar + ", do not need transfer to LiteAvCode:" + a10, new Object[0]);
        }
    }

    @Override // com.tencent.liteav.videobase.videobase.IVideoReporter
    public synchronized void updateStatus(i iVar, Object obj) {
        long j10 = this.mNativeVideoReporter;
        if (j10 != 0) {
            int i9 = iVar.value;
            if (i9 < i.STATUS_VIDEO_CAPTURE_FRAME.value) {
                return;
            }
            if (obj instanceof Double) {
                nativeUpdateStatus(this.mNativeVideoReporter, iVar.value, ((Double) obj).doubleValue());
            } else if (obj instanceof Float) {
                nativeUpdateStatus(this.mNativeVideoReporter, iVar.value, ((Float) obj).floatValue());
            } else if (obj instanceof Long) {
                nativeUpdateStatus(this.mNativeVideoReporter, iVar.value, ((Long) obj).longValue());
            } else if (obj instanceof Integer) {
                nativeUpdateStatus(this.mNativeVideoReporter, iVar.value, ((Integer) obj).intValue());
            } else if (obj instanceof String) {
                nativeUpdateStatusString(j10, i9, (String) obj);
            } else {
                nativeUpdateStatusObject(j10, i9, obj);
            }
        }
    }

    @Override // com.tencent.liteav.videobase.videobase.IVideoReporter
    public synchronized void updateStatus(i iVar, int i9, Object obj) {
        long j10 = this.mNativeVideoReporter;
        if (j10 != 0) {
            int i10 = iVar.value;
            if (i10 < i.STATUS_VIDEO_CAPTURE_FRAME.value) {
                return;
            }
            if (obj instanceof Double) {
                nativeUpdateKeyStatus(this.mNativeVideoReporter, iVar.value, i9, ((Double) obj).doubleValue());
            } else if (obj instanceof Float) {
                nativeUpdateKeyStatus(this.mNativeVideoReporter, iVar.value, i9, ((Float) obj).floatValue());
            } else if (obj instanceof Integer) {
                nativeUpdateKeyStatus(this.mNativeVideoReporter, iVar.value, i9, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                nativeUpdateKeyStatus(this.mNativeVideoReporter, iVar.value, i9, ((Long) obj).longValue());
            } else {
                nativeUpdateKeyStatusObject(j10, i10, i9, obj);
            }
        }
    }
}
