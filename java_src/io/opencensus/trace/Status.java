package io.opencensus.trace;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
/* loaded from: classes7.dex */
public final class Status {

    /* renamed from: c  reason: collision with root package name */
    private static final List<Status> f51260c = b();

    /* renamed from: d  reason: collision with root package name */
    public static final Status f51261d = CanonicalCode.OK.toStatus();

    /* renamed from: e  reason: collision with root package name */
    public static final Status f51262e = CanonicalCode.CANCELLED.toStatus();

    /* renamed from: f  reason: collision with root package name */
    public static final Status f51263f = CanonicalCode.UNKNOWN.toStatus();

    /* renamed from: g  reason: collision with root package name */
    public static final Status f51264g = CanonicalCode.INVALID_ARGUMENT.toStatus();

    /* renamed from: h  reason: collision with root package name */
    public static final Status f51265h = CanonicalCode.DEADLINE_EXCEEDED.toStatus();

    /* renamed from: i  reason: collision with root package name */
    public static final Status f51266i = CanonicalCode.NOT_FOUND.toStatus();

    /* renamed from: j  reason: collision with root package name */
    public static final Status f51267j = CanonicalCode.ALREADY_EXISTS.toStatus();

    /* renamed from: k  reason: collision with root package name */
    public static final Status f51268k = CanonicalCode.PERMISSION_DENIED.toStatus();

    /* renamed from: l  reason: collision with root package name */
    public static final Status f51269l = CanonicalCode.UNAUTHENTICATED.toStatus();

    /* renamed from: m  reason: collision with root package name */
    public static final Status f51270m = CanonicalCode.RESOURCE_EXHAUSTED.toStatus();

    /* renamed from: n  reason: collision with root package name */
    public static final Status f51271n = CanonicalCode.FAILED_PRECONDITION.toStatus();

    /* renamed from: o  reason: collision with root package name */
    public static final Status f51272o = CanonicalCode.ABORTED.toStatus();

    /* renamed from: p  reason: collision with root package name */
    public static final Status f51273p = CanonicalCode.OUT_OF_RANGE.toStatus();

    /* renamed from: q  reason: collision with root package name */
    public static final Status f51274q = CanonicalCode.UNIMPLEMENTED.toStatus();

    /* renamed from: r  reason: collision with root package name */
    public static final Status f51275r = CanonicalCode.INTERNAL.toStatus();

    /* renamed from: s  reason: collision with root package name */
    public static final Status f51276s = CanonicalCode.UNAVAILABLE.toStatus();

    /* renamed from: t  reason: collision with root package name */
    public static final Status f51277t = CanonicalCode.DATA_LOSS.toStatus();

    /* renamed from: a  reason: collision with root package name */
    private final CanonicalCode f51278a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51279b;

    /* loaded from: classes7.dex */
    public enum CanonicalCode {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);
        
        private final int value;

        CanonicalCode(int i9) {
            this.value = i9;
        }

        public Status toStatus() {
            return (Status) Status.f51260c.get(this.value);
        }

        public int value() {
            return this.value;
        }
    }

    private Status(CanonicalCode canonicalCode, String str) {
        this.f51278a = (CanonicalCode) lh.b.b(canonicalCode, "canonicalCode");
        this.f51279b = str;
    }

    private static List<Status> b() {
        CanonicalCode[] values;
        Status status;
        TreeMap treeMap = new TreeMap();
        for (CanonicalCode canonicalCode : CanonicalCode.values()) {
            if (((Status) treeMap.put(Integer.valueOf(canonicalCode.value()), new Status(canonicalCode, null))) != null) {
                throw new IllegalStateException("Code value duplication between " + status.c().name() + " & " + canonicalCode.name());
            }
        }
        return Collections.unmodifiableList(new ArrayList(treeMap.values()));
    }

    public CanonicalCode c() {
        return this.f51278a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Status) {
            Status status = (Status) obj;
            return this.f51278a == status.f51278a && lh.b.d(this.f51279b, status.f51279b);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f51278a, this.f51279b});
    }

    public String toString() {
        return "Status{canonicalCode=" + this.f51278a + ", description=" + this.f51279b + "}";
    }
}
