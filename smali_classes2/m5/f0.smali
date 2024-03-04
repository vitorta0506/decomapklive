.class public abstract Lm5/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/StatusCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Lio/grpc/Status$Code;)Lcom/google/api/gax/rpc/StatusCode$Code;
    .locals 3

    .line 1
    sget-object v0, Lm5/f0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->UNAUTHENTICATED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->DATA_LOSS:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->UNAVAILABLE:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->INTERNAL:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 7
    :pswitch_4
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->UNIMPLEMENTED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 8
    :pswitch_5
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->OUT_OF_RANGE:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 9
    :pswitch_6
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->ABORTED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 10
    :pswitch_7
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->FAILED_PRECONDITION:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 11
    :pswitch_8
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->RESOURCE_EXHAUSTED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 12
    :pswitch_9
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->PERMISSION_DENIED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 13
    :pswitch_a
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->ALREADY_EXISTS:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 14
    :pswitch_b
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->NOT_FOUND:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 15
    :pswitch_c
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->DEADLINE_EXCEEDED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 16
    :pswitch_d
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->INVALID_ARGUMENT:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 17
    :pswitch_e
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->UNKNOWN:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 18
    :pswitch_f
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->CANCELLED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    .line 19
    :pswitch_10
    sget-object p0, Lcom/google/api/gax/rpc/StatusCode$Code;->OK:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
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

.method public static c(Lio/grpc/Status$Code;)Lm5/f0;
    .locals 1

    new-instance v0, Lm5/b;

    invoke-direct {v0, p0}, Lm5/b;-><init>(Lio/grpc/Status$Code;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lio/grpc/Status$Code;
.end method

.method public getCode()Lcom/google/api/gax/rpc/StatusCode$Code;
    .locals 1

    invoke-virtual {p0}, Lm5/f0;->a()Lio/grpc/Status$Code;

    move-result-object v0

    invoke-static {v0}, Lm5/f0;->b(Lio/grpc/Status$Code;)Lcom/google/api/gax/rpc/StatusCode$Code;

    move-result-object v0

    return-object v0
.end method
