package androidx.renderscript;

import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes.dex */
public class BaseObj {
    private boolean mDestroyed;
    private long mID;
    RenderScript mRS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseObj(long j10, RenderScript renderScript) {
        renderScript.validate();
        this.mRS = renderScript;
        this.mID = j10;
        this.mDestroyed = false;
    }

    private void helpDestroy() {
        boolean z10;
        synchronized (this) {
            z10 = true;
            if (this.mDestroyed) {
                z10 = false;
            } else {
                this.mDestroyed = true;
            }
        }
        if (z10) {
            ReentrantReadWriteLock.ReadLock readLock = this.mRS.mRWLock.readLock();
            readLock.lock();
            if (this.mRS.isAlive()) {
                this.mRS.nObjDestroy(this.mID);
            }
            readLock.unlock();
            this.mRS = null;
            this.mID = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkValid() {
        if (this.mID == 0 && getNObj() == null) {
            throw new RSIllegalArgumentException("Invalid object.");
        }
    }

    public void destroy() {
        if (!this.mDestroyed) {
            helpDestroy();
            return;
        }
        throw new RSInvalidStateException("Object already destroyed.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.mID == ((BaseObj) obj).mID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void finalize() throws Throwable {
        helpDestroy();
        super.finalize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getID(RenderScript renderScript) {
        this.mRS.validate();
        if (!this.mDestroyed) {
            long j10 = this.mID;
            if (j10 != 0) {
                if (renderScript == null || renderScript == this.mRS) {
                    return j10;
                }
                throw new RSInvalidStateException("using object with mismatched context.");
            }
            throw new RSRuntimeException("Internal error: Object id 0.");
        }
        throw new RSInvalidStateException("using a destroyed object.");
    }

    android.renderscript.BaseObj getNObj() {
        return null;
    }

    public int hashCode() {
        long j10 = this.mID;
        return (int) ((j10 >> 32) ^ (268435455 & j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setID(long j10) {
        if (this.mID == 0) {
            this.mID = j10;
            return;
        }
        throw new RSRuntimeException("Internal Error, reset of object ID.");
    }
}
