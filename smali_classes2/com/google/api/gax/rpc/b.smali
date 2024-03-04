.class public Lcom/google/api/gax/rpc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)Lcom/google/api/gax/rpc/ApiException;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/gax/rpc/b$a;->a:[I

    invoke-interface {p2}, Lcom/google/api/gax/rpc/StatusCode;->getCode()Lcom/google/api/gax/rpc/StatusCode$Code;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/google/api/gax/rpc/UnknownException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/UnknownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 3
    :pswitch_0
    new-instance v0, Lcom/google/api/gax/rpc/UnauthenticatedException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/UnauthenticatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 4
    :pswitch_1
    new-instance v0, Lcom/google/api/gax/rpc/DataLossException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/DataLossException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 5
    :pswitch_2
    new-instance v0, Lcom/google/api/gax/rpc/UnavailableException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/UnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 6
    :pswitch_3
    new-instance v0, Lcom/google/api/gax/rpc/InternalException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/InternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 7
    :pswitch_4
    new-instance v0, Lcom/google/api/gax/rpc/UnimplementedException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/UnimplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 8
    :pswitch_5
    new-instance v0, Lcom/google/api/gax/rpc/OutOfRangeException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/OutOfRangeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 9
    :pswitch_6
    new-instance v0, Lcom/google/api/gax/rpc/AbortedException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/AbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 10
    :pswitch_7
    new-instance v0, Lcom/google/api/gax/rpc/FailedPreconditionException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/FailedPreconditionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 11
    :pswitch_8
    new-instance v0, Lcom/google/api/gax/rpc/ResourceExhaustedException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/ResourceExhaustedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 12
    :pswitch_9
    new-instance v0, Lcom/google/api/gax/rpc/PermissionDeniedException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/PermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 13
    :pswitch_a
    new-instance v0, Lcom/google/api/gax/rpc/AlreadyExistsException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/AlreadyExistsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 14
    :pswitch_b
    new-instance v0, Lcom/google/api/gax/rpc/DeadlineExceededException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/DeadlineExceededException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 15
    :pswitch_c
    new-instance v0, Lcom/google/api/gax/rpc/InvalidArgumentException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/InvalidArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 16
    :pswitch_d
    new-instance v0, Lcom/google/api/gax/rpc/NotFoundException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/NotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 17
    :pswitch_e
    new-instance v0, Lcom/google/api/gax/rpc/CancelledException;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/api/gax/rpc/CancelledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)Lcom/google/api/gax/rpc/ApiException;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/gax/rpc/b$a;->a:[I

    invoke-interface {p1}, Lcom/google/api/gax/rpc/StatusCode;->getCode()Lcom/google/api/gax/rpc/StatusCode$Code;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Lcom/google/api/gax/rpc/UnknownException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/UnknownException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 3
    :pswitch_0
    new-instance v0, Lcom/google/api/gax/rpc/UnauthenticatedException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/UnauthenticatedException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 4
    :pswitch_1
    new-instance v0, Lcom/google/api/gax/rpc/DataLossException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/DataLossException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 5
    :pswitch_2
    new-instance v0, Lcom/google/api/gax/rpc/UnavailableException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/UnavailableException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 6
    :pswitch_3
    new-instance v0, Lcom/google/api/gax/rpc/InternalException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/InternalException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 7
    :pswitch_4
    new-instance v0, Lcom/google/api/gax/rpc/UnimplementedException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/UnimplementedException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 8
    :pswitch_5
    new-instance v0, Lcom/google/api/gax/rpc/OutOfRangeException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/OutOfRangeException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 9
    :pswitch_6
    new-instance v0, Lcom/google/api/gax/rpc/AbortedException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/AbortedException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 10
    :pswitch_7
    new-instance v0, Lcom/google/api/gax/rpc/FailedPreconditionException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/FailedPreconditionException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 11
    :pswitch_8
    new-instance v0, Lcom/google/api/gax/rpc/ResourceExhaustedException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/ResourceExhaustedException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 12
    :pswitch_9
    new-instance v0, Lcom/google/api/gax/rpc/PermissionDeniedException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/PermissionDeniedException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 13
    :pswitch_a
    new-instance v0, Lcom/google/api/gax/rpc/AlreadyExistsException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/AlreadyExistsException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 14
    :pswitch_b
    new-instance v0, Lcom/google/api/gax/rpc/DeadlineExceededException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/DeadlineExceededException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 15
    :pswitch_c
    new-instance v0, Lcom/google/api/gax/rpc/InvalidArgumentException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/InvalidArgumentException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 16
    :pswitch_d
    new-instance v0, Lcom/google/api/gax/rpc/NotFoundException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/NotFoundException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    .line 17
    :pswitch_e
    new-instance v0, Lcom/google/api/gax/rpc/CancelledException;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/gax/rpc/CancelledException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
