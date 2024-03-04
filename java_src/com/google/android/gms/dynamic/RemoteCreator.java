package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import androidx.annotation.NonNull;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.p;
/* loaded from: classes2.dex */
public abstract class RemoteCreator<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f7851a;

    /* renamed from: b  reason: collision with root package name */
    private Object f7852b;

    /* loaded from: classes2.dex */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(@NonNull String str) {
            super(str);
        }

        public RemoteCreatorException(@NonNull String str, @NonNull Throwable th2) {
            super(str, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public RemoteCreator(@NonNull String str) {
        this.f7851a = str;
    }

    @NonNull
    protected abstract T a(@NonNull IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public final T b(@NonNull Context context) throws RemoteCreatorException {
        if (this.f7852b == null) {
            p.j(context);
            Context c10 = d.c(context);
            if (c10 != null) {
                try {
                    this.f7852b = a((IBinder) c10.getClassLoader().loadClass(this.f7851a).newInstance());
                } catch (ClassNotFoundException e10) {
                    throw new RemoteCreatorException("Could not load creator class.", e10);
                } catch (IllegalAccessException e11) {
                    throw new RemoteCreatorException("Could not access creator.", e11);
                } catch (InstantiationException e12) {
                    throw new RemoteCreatorException("Could not instantiate creator.", e12);
                }
            } else {
                throw new RemoteCreatorException("Could not get remote context.");
            }
        }
        return (T) this.f7852b;
    }
}
