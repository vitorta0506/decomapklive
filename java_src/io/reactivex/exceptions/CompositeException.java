package io.reactivex.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes7.dex */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    /* loaded from: classes7.dex */
    static final class a extends RuntimeException {
        private static final long serialVersionUID = 3875212506787802066L;

        a() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static abstract class b {
        b() {
        }

        abstract void a(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final PrintStream f51310a;

        c(PrintStream printStream) {
            this.f51310a = printStream;
        }

        @Override // io.reactivex.exceptions.CompositeException.b
        void a(Object obj) {
            this.f51310a.println(obj);
        }
    }

    /* loaded from: classes7.dex */
    static final class d extends b {

        /* renamed from: a  reason: collision with root package name */
        private final PrintWriter f51311a;

        d(PrintWriter printWriter) {
            this.f51311a = printWriter;
        }

        @Override // io.reactivex.exceptions.CompositeException.b
        void a(Object obj) {
            this.f51311a.println(obj);
        }
    }

    public CompositeException(Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void appendStackTrace(StringBuilder sb2, Throwable th2, String str) {
        StackTraceElement[] stackTrace;
        sb2.append(str);
        sb2.append(th2);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
            sb2.append("\t\tat ");
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        if (th2.getCause() != null) {
            sb2.append("\tCaused by: ");
            appendStackTrace(sb2, th2.getCause(), "");
        }
    }

    private List<Throwable> getListOfCauses(Throwable th2) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th2.getCause();
        if (cause != null && cause != th2) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause2;
            }
        }
        return arrayList;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        if (this.cause == null) {
            a aVar = new a();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it = this.exceptions.iterator();
            a aVar2 = aVar;
            while (it.hasNext()) {
                Throwable next = it.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    for (Throwable th2 : getListOfCauses(next)) {
                        if (hashSet.contains(th2)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th2);
                        }
                    }
                    try {
                        aVar2.initCause(next);
                    } catch (Throwable unused) {
                    }
                    aVar2 = getRootCause(aVar2);
                }
            }
            this.cause = aVar;
        }
        return this.cause;
    }

    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    Throwable getRootCause(Throwable th2) {
        Throwable cause = th2.getCause();
        if (cause == null || th2 == cause) {
            return th2;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                break;
            }
            cause = cause2;
        }
        return cause;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public int size() {
        return this.exceptions.size();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStackTrace(new c(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(new d(printWriter));
    }

    public CompositeException(Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th2 : iterable) {
                if (th2 instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th2).getExceptions());
                } else if (th2 != null) {
                    linkedHashSet.add(th2);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            List<Throwable> unmodifiableList = Collections.unmodifiableList(arrayList);
            this.exceptions = unmodifiableList;
            this.message = unmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }

    private void printStackTrace(b bVar) {
        StackTraceElement[] stackTrace;
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(this);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb2.append("\tat ");
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        int i9 = 1;
        for (Throwable th2 : this.exceptions) {
            sb2.append("  ComposedException ");
            sb2.append(i9);
            sb2.append(" :\n");
            appendStackTrace(sb2, th2, "\t");
            i9++;
        }
        bVar.a(sb2.toString());
    }
}
