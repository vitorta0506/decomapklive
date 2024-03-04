package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableSet;
import com.google.common.collect.b6;
import com.google.common.collect.z5;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2.dex */
public class CycleDetectingLockFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, c>> f13707a = new b6().l().i();

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f13708b = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final ThreadLocal<ArrayList<c>> f13709c = new a();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class Policies {
        public static final Policies THROW = new a("THROW", 0);
        public static final Policies WARN = new b("WARN", 1);
        public static final Policies DISABLED = new c("DISABLED", 2);
        private static final /* synthetic */ Policies[] $VALUES = $values();

        /* loaded from: classes2.dex */
        enum a extends Policies {
            a(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policies
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends Policies {
            b(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policies
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.f13708b.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        }

        /* loaded from: classes2.dex */
        enum c extends Policies {
            c(String str, int i9) {
                super(str, i9, null);
            }

            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policies
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }
        }

        private static /* synthetic */ Policies[] $values() {
            return new Policies[]{THROW, WARN, DISABLED};
        }

        private Policies(String str, int i9) {
        }

        public static Policies valueOf(String str) {
            return (Policies) Enum.valueOf(Policies.class, str);
        }

        public static Policies[] values() {
            return (Policies[]) $VALUES.clone();
        }

        public abstract /* synthetic */ void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);

        /* synthetic */ Policies(String str, int i9, a aVar) {
            this(str, i9);
        }
    }

    /* loaded from: classes2.dex */
    public static final class PotentialDeadlockException extends b {
        private final b conflictingStackTrace;

        /* synthetic */ PotentialDeadlockException(c cVar, c cVar2, b bVar, a aVar) {
            this(cVar, cVar2, bVar);
        }

        public b getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            String message = super.getMessage();
            Objects.requireNonNull(message);
            StringBuilder sb2 = new StringBuilder(message);
            for (Throwable th2 = this.conflictingStackTrace; th2 != null; th2 = th2.getCause()) {
                sb2.append(", ");
                sb2.append(th2.getMessage());
            }
            return sb2.toString();
        }

        private PotentialDeadlockException(c cVar, c cVar2, b bVar) {
            super(cVar, cVar2);
            this.conflictingStackTrace = bVar;
            initCause(bVar);
        }
    }

    /* loaded from: classes2.dex */
    class a extends ThreadLocal<ArrayList<c>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public ArrayList<c> initialValue() {
            return z5.k(3);
        }
    }

    /* loaded from: classes2.dex */
    private static class b extends IllegalStateException {
        static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        static final ImmutableSet<String> EXCLUDED_CLASS_NAMES = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), b.class.getName(), c.class.getName());

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        b(com.google.common.util.concurrent.CycleDetectingLockFactory.c r4, com.google.common.util.concurrent.CycleDetectingLockFactory.c r5) {
            /*
                r3 = this;
                java.lang.String r4 = r4.a()
                java.lang.String r5 = r5.a()
                java.lang.String r0 = java.lang.String.valueOf(r4)
                int r0 = r0.length()
                int r0 = r0 + 4
                java.lang.String r1 = java.lang.String.valueOf(r5)
                int r1 = r1.length()
                int r0 = r0 + r1
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                r1.append(r4)
                java.lang.String r4 = " -> "
                r1.append(r4)
                r1.append(r5)
                java.lang.String r4 = r1.toString()
                r3.<init>(r4)
                java.lang.StackTraceElement[] r4 = r3.getStackTrace()
                int r5 = r4.length
                r0 = 0
            L38:
                if (r0 >= r5) goto L6d
                java.lang.Class<com.google.common.util.concurrent.CycleDetectingLockFactory$d> r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.d.class
                java.lang.String r1 = r1.getName()
                r2 = r4[r0]
                java.lang.String r2 = r2.getClassName()
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L52
                java.lang.StackTraceElement[] r4 = com.google.common.util.concurrent.CycleDetectingLockFactory.b.EMPTY_STACK_TRACE
                r3.setStackTrace(r4)
                goto L6d
            L52:
                com.google.common.collect.ImmutableSet<java.lang.String> r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.b.EXCLUDED_CLASS_NAMES
                r2 = r4[r0]
                java.lang.String r2 = r2.getClassName()
                boolean r1 = r1.contains(r2)
                if (r1 != 0) goto L6a
                java.lang.Object[] r4 = java.util.Arrays.copyOfRange(r4, r0, r5)
                java.lang.StackTraceElement[] r4 = (java.lang.StackTraceElement[]) r4
                r3.setStackTrace(r4)
                goto L6d
            L6a:
                int r0 = r0 + 1
                goto L38
            L6d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.CycleDetectingLockFactory.b.<init>(com.google.common.util.concurrent.CycleDetectingLockFactory$c, com.google.common.util.concurrent.CycleDetectingLockFactory$c):void");
        }
    }

    /* loaded from: classes2.dex */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        final String f13710a;

        String a() {
            return this.f13710a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class d<E extends Enum<E>> extends CycleDetectingLockFactory {
    }
}
