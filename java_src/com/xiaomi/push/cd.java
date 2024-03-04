package com.xiaomi.push;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes5.dex */
public class cd extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private t1 f36434a;

    /* renamed from: a  reason: collision with other field name */
    private u1 f22a;

    /* renamed from: a  reason: collision with other field name */
    private Throwable f23a;

    public cd() {
        this.f36434a = null;
        this.f22a = null;
        this.f23a = null;
    }

    public cd(t1 t1Var) {
        this.f22a = null;
        this.f23a = null;
        this.f36434a = t1Var;
    }

    public cd(String str) {
        super(str);
        this.f36434a = null;
        this.f22a = null;
        this.f23a = null;
    }

    public cd(String str, Throwable th2) {
        super(str);
        this.f36434a = null;
        this.f22a = null;
        this.f23a = th2;
    }

    public cd(Throwable th2) {
        this.f36434a = null;
        this.f22a = null;
        this.f23a = th2;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        t1 t1Var;
        u1 u1Var;
        String message = super.getMessage();
        return (message != null || (u1Var = this.f22a) == null) ? (message != null || (t1Var = this.f36434a) == null) ? message : t1Var.toString() : u1Var.toString();
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        if (this.f23a != null) {
            printStream.println("Nested Exception: ");
            this.f23a.printStackTrace(printStream);
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        if (this.f23a != null) {
            printWriter.println("Nested Exception: ");
            this.f23a.printStackTrace(printWriter);
        }
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        String message = super.getMessage();
        if (message != null) {
            sb2.append(message);
            sb2.append(": ");
        }
        u1 u1Var = this.f22a;
        if (u1Var != null) {
            sb2.append(u1Var);
        }
        t1 t1Var = this.f36434a;
        if (t1Var != null) {
            sb2.append(t1Var);
        }
        if (this.f23a != null) {
            sb2.append("\n  -- caused by: ");
            sb2.append(this.f23a);
        }
        return sb2.toString();
    }
}
