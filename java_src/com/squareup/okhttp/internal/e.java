package com.squareup.okhttp.internal;
/* loaded from: classes4.dex */
public abstract class e implements Runnable {
    protected final String name;

    public e(String str, Object... objArr) {
        this.name = String.format(str, objArr);
    }

    protected abstract void execute();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.name);
        try {
            execute();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
