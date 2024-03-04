.class public final enum Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/ChannelTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChildRefCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

.field public static final enum CHANNEL_REF:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

.field public static final enum CHILDREF_NOT_SET:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

.field public static final enum SUBCHANNEL_REF:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    const-string v1, "CHANNEL_REF"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->CHANNEL_REF:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    .line 2
    new-instance v1, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    const-string v3, "SUBCHANNEL_REF"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->SUBCHANNEL_REF:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    .line 3
    new-instance v3, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    const-string v5, "CHILDREF_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->CHILDREF_NOT_SET:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->$VALUES:[Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->SUBCHANNEL_REF:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->CHANNEL_REF:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->CHILDREF_NOT_SET:Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->forNumber(I)Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;
    .locals 1

    sget-object v0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->$VALUES:[Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    invoke-virtual {v0}, [Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/channelz/v1/ChannelTraceEvent$ChildRefCase;->value:I

    return v0
.end method
