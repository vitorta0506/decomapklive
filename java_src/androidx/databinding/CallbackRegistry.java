package androidx.databinding;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class CallbackRegistry<C, T, A> implements Cloneable {
    private static final String TAG = "CallbackRegistry";
    private List<C> mCallbacks = new ArrayList();
    private long mFirst64Removed = 0;
    private int mNotificationLevel;
    private final NotifierCallback<C, T, A> mNotifier;
    private long[] mRemainderRemoved;

    /* loaded from: classes.dex */
    public static abstract class NotifierCallback<C, T, A> {
        public abstract void onNotifyCallback(C c10, T t10, int i9, A a10);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifierCallback) {
        this.mNotifier = notifierCallback;
    }

    private boolean isRemoved(int i9) {
        int i10;
        if (i9 < 64) {
            return ((1 << i9) & this.mFirst64Removed) != 0;
        }
        long[] jArr = this.mRemainderRemoved;
        if (jArr != null && (i10 = (i9 / 64) - 1) < jArr.length) {
            return ((1 << (i9 % 64)) & jArr[i10]) != 0;
        }
        return false;
    }

    private void notifyFirst64(T t10, int i9, A a10) {
        notifyCallbacks(t10, i9, a10, 0, Math.min(64, this.mCallbacks.size()), this.mFirst64Removed);
    }

    private void notifyRecurse(T t10, int i9, A a10) {
        int size = this.mCallbacks.size();
        long[] jArr = this.mRemainderRemoved;
        int length = jArr == null ? -1 : jArr.length - 1;
        notifyRemainder(t10, i9, a10, length);
        notifyCallbacks(t10, i9, a10, (length + 2) * 64, size, 0L);
    }

    private void notifyRemainder(T t10, int i9, A a10, int i10) {
        if (i10 < 0) {
            notifyFirst64(t10, i9, a10);
            return;
        }
        long j10 = this.mRemainderRemoved[i10];
        int i11 = (i10 + 1) * 64;
        int min = Math.min(this.mCallbacks.size(), i11 + 64);
        notifyRemainder(t10, i9, a10, i10 - 1);
        notifyCallbacks(t10, i9, a10, i11, min, j10);
    }

    private void removeRemovedCallbacks(int i9, long j10) {
        long j11 = Long.MIN_VALUE;
        for (int i10 = (i9 + 64) - 1; i10 >= i9; i10--) {
            if ((j10 & j11) != 0) {
                this.mCallbacks.remove(i10);
            }
            j11 >>>= 1;
        }
    }

    private void setRemovalBit(int i9) {
        if (i9 < 64) {
            this.mFirst64Removed = (1 << i9) | this.mFirst64Removed;
            return;
        }
        int i10 = (i9 / 64) - 1;
        long[] jArr = this.mRemainderRemoved;
        if (jArr == null) {
            this.mRemainderRemoved = new long[this.mCallbacks.size() / 64];
        } else if (jArr.length <= i10) {
            long[] jArr2 = new long[this.mCallbacks.size() / 64];
            long[] jArr3 = this.mRemainderRemoved;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.mRemainderRemoved = jArr2;
        }
        long j10 = 1 << (i9 % 64);
        long[] jArr4 = this.mRemainderRemoved;
        jArr4[i10] = j10 | jArr4[i10];
    }

    public synchronized void add(C c10) {
        if (c10 != null) {
            int lastIndexOf = this.mCallbacks.lastIndexOf(c10);
            if (lastIndexOf < 0 || isRemoved(lastIndexOf)) {
                this.mCallbacks.add(c10);
            }
        } else {
            throw new IllegalArgumentException("callback cannot be null");
        }
    }

    public synchronized void clear() {
        if (this.mNotificationLevel == 0) {
            this.mCallbacks.clear();
        } else if (!this.mCallbacks.isEmpty()) {
            for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                setRemovalBit(size);
            }
        }
    }

    public synchronized ArrayList<C> copyCallbacks() {
        ArrayList<C> arrayList;
        arrayList = new ArrayList<>(this.mCallbacks.size());
        int size = this.mCallbacks.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (!isRemoved(i9)) {
                arrayList.add(this.mCallbacks.get(i9));
            }
        }
        return arrayList;
    }

    public synchronized boolean isEmpty() {
        if (this.mCallbacks.isEmpty()) {
            return true;
        }
        if (this.mNotificationLevel == 0) {
            return false;
        }
        int size = this.mCallbacks.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (!isRemoved(i9)) {
                return false;
            }
        }
        return true;
    }

    public synchronized void notifyCallbacks(T t10, int i9, A a10) {
        this.mNotificationLevel++;
        notifyRecurse(t10, i9, a10);
        int i10 = this.mNotificationLevel - 1;
        this.mNotificationLevel = i10;
        if (i10 == 0) {
            long[] jArr = this.mRemainderRemoved;
            if (jArr != null) {
                for (int length = jArr.length - 1; length >= 0; length--) {
                    long j10 = this.mRemainderRemoved[length];
                    if (j10 != 0) {
                        removeRemovedCallbacks((length + 1) * 64, j10);
                        this.mRemainderRemoved[length] = 0;
                    }
                }
            }
            long j11 = this.mFirst64Removed;
            if (j11 != 0) {
                removeRemovedCallbacks(0, j11);
                this.mFirst64Removed = 0L;
            }
        }
    }

    public synchronized void remove(C c10) {
        if (this.mNotificationLevel == 0) {
            this.mCallbacks.remove(c10);
        } else {
            int lastIndexOf = this.mCallbacks.lastIndexOf(c10);
            if (lastIndexOf >= 0) {
                setRemovalBit(lastIndexOf);
            }
        }
    }

    /* renamed from: clone */
    public synchronized CallbackRegistry<C, T, A> m11clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e10;
        try {
            callbackRegistry = (CallbackRegistry) super.clone();
            try {
                callbackRegistry.mFirst64Removed = 0L;
                callbackRegistry.mRemainderRemoved = null;
                callbackRegistry.mNotificationLevel = 0;
                callbackRegistry.mCallbacks = new ArrayList();
                int size = this.mCallbacks.size();
                for (int i9 = 0; i9 < size; i9++) {
                    if (!isRemoved(i9)) {
                        callbackRegistry.mCallbacks.add(this.mCallbacks.get(i9));
                    }
                }
            } catch (CloneNotSupportedException e11) {
                e10 = e11;
                e10.printStackTrace();
                return callbackRegistry;
            }
        } catch (CloneNotSupportedException e12) {
            callbackRegistry = null;
            e10 = e12;
        }
        return callbackRegistry;
    }

    public synchronized void copyCallbacks(List<C> list) {
        list.clear();
        int size = this.mCallbacks.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (!isRemoved(i9)) {
                list.add(this.mCallbacks.get(i9));
            }
        }
    }

    private void notifyCallbacks(T t10, int i9, A a10, int i10, int i11, long j10) {
        long j11 = 1;
        while (i10 < i11) {
            if ((j10 & j11) == 0) {
                this.mNotifier.onNotifyCallback(this.mCallbacks.get(i10), t10, i9, a10);
            }
            j11 <<= 1;
            i10++;
        }
    }
}
