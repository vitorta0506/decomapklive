package com.google.api.gax.batching;
/* loaded from: classes2.dex */
public class FlowController$FlowControlRuntimeException extends RuntimeException {
    private FlowController$FlowControlRuntimeException(FlowController$FlowControlException flowController$FlowControlException) {
        super(flowController$FlowControlException);
    }

    public static FlowController$FlowControlRuntimeException fromFlowControlException(FlowController$FlowControlException flowController$FlowControlException) {
        return new FlowController$FlowControlRuntimeException(flowController$FlowControlException);
    }
}
