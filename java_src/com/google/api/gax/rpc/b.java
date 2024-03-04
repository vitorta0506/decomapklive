package com.google.api.gax.rpc;

import com.google.api.gax.rpc.StatusCode;
/* loaded from: classes2.dex */
public class b {

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11239a;

        static {
            int[] iArr = new int[StatusCode.Code.values().length];
            f11239a = iArr;
            try {
                iArr[StatusCode.Code.CANCELLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11239a[StatusCode.Code.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11239a[StatusCode.Code.INVALID_ARGUMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11239a[StatusCode.Code.DEADLINE_EXCEEDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11239a[StatusCode.Code.ALREADY_EXISTS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11239a[StatusCode.Code.PERMISSION_DENIED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f11239a[StatusCode.Code.RESOURCE_EXHAUSTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f11239a[StatusCode.Code.FAILED_PRECONDITION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f11239a[StatusCode.Code.ABORTED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f11239a[StatusCode.Code.OUT_OF_RANGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f11239a[StatusCode.Code.UNIMPLEMENTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f11239a[StatusCode.Code.INTERNAL.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f11239a[StatusCode.Code.UNAVAILABLE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f11239a[StatusCode.Code.DATA_LOSS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f11239a[StatusCode.Code.UNAUTHENTICATED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f11239a[StatusCode.Code.UNKNOWN.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public static ApiException a(String str, Throwable th2, StatusCode statusCode, boolean z10) {
        switch (a.f11239a[statusCode.getCode().ordinal()]) {
            case 1:
                return new CancelledException(str, th2, statusCode, z10);
            case 2:
                return new NotFoundException(str, th2, statusCode, z10);
            case 3:
                return new InvalidArgumentException(str, th2, statusCode, z10);
            case 4:
                return new DeadlineExceededException(str, th2, statusCode, z10);
            case 5:
                return new AlreadyExistsException(str, th2, statusCode, z10);
            case 6:
                return new PermissionDeniedException(str, th2, statusCode, z10);
            case 7:
                return new ResourceExhaustedException(str, th2, statusCode, z10);
            case 8:
                return new FailedPreconditionException(str, th2, statusCode, z10);
            case 9:
                return new AbortedException(str, th2, statusCode, z10);
            case 10:
                return new OutOfRangeException(str, th2, statusCode, z10);
            case 11:
                return new UnimplementedException(str, th2, statusCode, z10);
            case 12:
                return new InternalException(str, th2, statusCode, z10);
            case 13:
                return new UnavailableException(str, th2, statusCode, z10);
            case 14:
                return new DataLossException(str, th2, statusCode, z10);
            case 15:
                return new UnauthenticatedException(str, th2, statusCode, z10);
            default:
                return new UnknownException(str, th2, statusCode, z10);
        }
    }

    public static ApiException b(Throwable th2, StatusCode statusCode, boolean z10) {
        switch (a.f11239a[statusCode.getCode().ordinal()]) {
            case 1:
                return new CancelledException(th2, statusCode, z10);
            case 2:
                return new NotFoundException(th2, statusCode, z10);
            case 3:
                return new InvalidArgumentException(th2, statusCode, z10);
            case 4:
                return new DeadlineExceededException(th2, statusCode, z10);
            case 5:
                return new AlreadyExistsException(th2, statusCode, z10);
            case 6:
                return new PermissionDeniedException(th2, statusCode, z10);
            case 7:
                return new ResourceExhaustedException(th2, statusCode, z10);
            case 8:
                return new FailedPreconditionException(th2, statusCode, z10);
            case 9:
                return new AbortedException(th2, statusCode, z10);
            case 10:
                return new OutOfRangeException(th2, statusCode, z10);
            case 11:
                return new UnimplementedException(th2, statusCode, z10);
            case 12:
                return new InternalException(th2, statusCode, z10);
            case 13:
                return new UnavailableException(th2, statusCode, z10);
            case 14:
                return new DataLossException(th2, statusCode, z10);
            case 15:
                return new UnauthenticatedException(th2, statusCode, z10);
            default:
                return new UnknownException(th2, statusCode, z10);
        }
    }
}
