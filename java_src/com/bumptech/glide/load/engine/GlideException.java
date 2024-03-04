package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class GlideException extends Exception {
    private static final StackTraceElement[] EMPTY_ELEMENTS = new StackTraceElement[0];
    private static final long serialVersionUID = 1;
    private final List<Throwable> causes;
    private Class<?> dataClass;
    private DataSource dataSource;
    private String detailMessage;
    @Nullable
    private Exception exception;
    private e0.b key;

    public GlideException(String str) {
        this(str, Collections.emptyList());
    }

    private void addRootCauses(Throwable th2, List<Throwable> list) {
        if (th2 instanceof GlideException) {
            for (Throwable th3 : ((GlideException) th2).getCauses()) {
                addRootCauses(th3, list);
            }
            return;
        }
        list.add(th2);
    }

    private static void appendCauses(List<Throwable> list, Appendable appendable) {
        try {
            appendCausesWrapped(list, appendable);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    private static void appendCausesWrapped(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i9 = 0;
        while (i9 < size) {
            int i10 = i9 + 1;
            appendable.append("Cause (").append(String.valueOf(i10)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th2 = list.get(i9);
            if (th2 instanceof GlideException) {
                ((GlideException) th2).printStackTrace(appendable);
            } else {
                appendExceptionMessage(th2, appendable);
            }
            i9 = i10;
        }
    }

    private static void appendExceptionMessage(Throwable th2, Appendable appendable) {
        try {
            appendable.append(th2.getClass().toString()).append(": ").append(th2.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th2);
        }
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public List<Throwable> getCauses() {
        return this.causes;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb2 = new StringBuilder(71);
        sb2.append(this.detailMessage);
        sb2.append(this.dataClass != null ? ", " + this.dataClass : "");
        sb2.append(this.dataSource != null ? ", " + this.dataSource : "");
        sb2.append(this.key != null ? ", " + this.key : "");
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb2.toString();
        }
        if (rootCauses.size() == 1) {
            sb2.append("\nThere was 1 root cause:");
        } else {
            sb2.append("\nThere were ");
            sb2.append(rootCauses.size());
            sb2.append(" root causes:");
        }
        for (Throwable th2 : rootCauses) {
            sb2.append('\n');
            sb2.append(th2.getClass().getName());
            sb2.append('(');
            sb2.append(th2.getMessage());
            sb2.append(')');
        }
        sb2.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb2.toString();
    }

    @Nullable
    public Exception getOrigin() {
        return this.exception;
    }

    public List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        addRootCauses(this, arrayList);
        return arrayList;
    }

    public void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i9 = 0;
        while (i9 < size) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Root cause (");
            int i10 = i9 + 1;
            sb2.append(i10);
            sb2.append(" of ");
            sb2.append(size);
            sb2.append(")");
            Log.i(str, sb2.toString(), rootCauses.get(i9));
            i9 = i10;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLoggingDetails(e0.b bVar, DataSource dataSource) {
        setLoggingDetails(bVar, dataSource, null);
    }

    public void setOrigin(@Nullable Exception exc) {
        this.exception = exc;
    }

    public GlideException(String str, Throwable th2) {
        this(str, Collections.singletonList(th2));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStackTrace((Appendable) printStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLoggingDetails(e0.b bVar, DataSource dataSource, Class<?> cls) {
        this.key = bVar;
        this.dataSource = dataSource;
        this.dataClass = cls;
    }

    public GlideException(String str, List<Throwable> list) {
        this.detailMessage = str;
        setStackTrace(EMPTY_ELEMENTS);
        this.causes = list;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace((Appendable) printWriter);
    }

    private void printStackTrace(Appendable appendable) {
        appendExceptionMessage(this, appendable);
        appendCauses(getCauses(), new a(appendable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements Appendable {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f4247a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f4248b = true;

        a(Appendable appendable) {
            this.f4247a = appendable;
        }

        @NonNull
        private CharSequence a(@Nullable CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c10) throws IOException {
            if (this.f4248b) {
                this.f4248b = false;
                this.f4247a.append("  ");
            }
            this.f4248b = c10 == '\n';
            this.f4247a.append(c10);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            CharSequence a10 = a(charSequence);
            return append(a10, 0, a10.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i9, int i10) throws IOException {
            CharSequence a10 = a(charSequence);
            boolean z10 = false;
            if (this.f4248b) {
                this.f4248b = false;
                this.f4247a.append("  ");
            }
            if (a10.length() > 0 && a10.charAt(i10 - 1) == '\n') {
                z10 = true;
            }
            this.f4248b = z10;
            this.f4247a.append(a10, i9, i10);
            return this;
        }
    }
}
