.class synthetic Lio/grpc/channelz/v1/Address$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/channelz/v1/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/grpc/channelz/v1/Address$AddressCase;->values()[Lio/grpc/channelz/v1/Address$AddressCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/channelz/v1/Address$b;->a:[I

    :try_start_0
    sget-object v1, Lio/grpc/channelz/v1/Address$AddressCase;->TCPIP_ADDRESS:Lio/grpc/channelz/v1/Address$AddressCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/grpc/channelz/v1/Address$b;->a:[I

    sget-object v1, Lio/grpc/channelz/v1/Address$AddressCase;->UDS_ADDRESS:Lio/grpc/channelz/v1/Address$AddressCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/grpc/channelz/v1/Address$b;->a:[I

    sget-object v1, Lio/grpc/channelz/v1/Address$AddressCase;->OTHER_ADDRESS:Lio/grpc/channelz/v1/Address$AddressCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lio/grpc/channelz/v1/Address$b;->a:[I

    sget-object v1, Lio/grpc/channelz/v1/Address$AddressCase;->ADDRESS_NOT_SET:Lio/grpc/channelz/v1/Address$AddressCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method