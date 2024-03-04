package m5;

import com.google.api.gax.rpc.StatusCode;
import io.grpc.Status;
/* loaded from: classes2.dex */
public abstract class f0 implements StatusCode {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f54805a;

        static {
            int[] iArr = new int[Status.Code.values().length];
            f54805a = iArr;
            try {
                iArr[Status.Code.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f54805a[Status.Code.CANCELLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f54805a[Status.Code.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f54805a[Status.Code.INVALID_ARGUMENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f54805a[Status.Code.DEADLINE_EXCEEDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f54805a[Status.Code.NOT_FOUND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f54805a[Status.Code.ALREADY_EXISTS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f54805a[Status.Code.PERMISSION_DENIED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f54805a[Status.Code.RESOURCE_EXHAUSTED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f54805a[Status.Code.FAILED_PRECONDITION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f54805a[Status.Code.ABORTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f54805a[Status.Code.OUT_OF_RANGE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f54805a[Status.Code.UNIMPLEMENTED.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f54805a[Status.Code.INTERNAL.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f54805a[Status.Code.UNAVAILABLE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f54805a[Status.Code.DATA_LOSS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f54805a[Status.Code.UNAUTHENTICATED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StatusCode.Code b(Status.Code code) {
        switch (a.f54805a[code.ordinal()]) {
            case 1:
                return StatusCode.Code.OK;
            case 2:
                return StatusCode.Code.CANCELLED;
            case 3:
                return StatusCode.Code.UNKNOWN;
            case 4:
                return StatusCode.Code.INVALID_ARGUMENT;
            case 5:
                return StatusCode.Code.DEADLINE_EXCEEDED;
            case 6:
                return StatusCode.Code.NOT_FOUND;
            case 7:
                return StatusCode.Code.ALREADY_EXISTS;
            case 8:
                return StatusCode.Code.PERMISSION_DENIED;
            case 9:
                return StatusCode.Code.RESOURCE_EXHAUSTED;
            case 10:
                return StatusCode.Code.FAILED_PRECONDITION;
            case 11:
                return StatusCode.Code.ABORTED;
            case 12:
                return StatusCode.Code.OUT_OF_RANGE;
            case 13:
                return StatusCode.Code.UNIMPLEMENTED;
            case 14:
                return StatusCode.Code.INTERNAL;
            case 15:
                return StatusCode.Code.UNAVAILABLE;
            case 16:
                return StatusCode.Code.DATA_LOSS;
            case 17:
                return StatusCode.Code.UNAUTHENTICATED;
            default:
                throw new IllegalStateException("Unrecognized status code: " + code);
        }
    }

    public static f0 c(Status.Code code) {
        return new b(code);
    }

    public abstract Status.Code a();

    @Override // com.google.api.gax.rpc.StatusCode
    public StatusCode.Code getCode() {
        return b(a());
    }
}
