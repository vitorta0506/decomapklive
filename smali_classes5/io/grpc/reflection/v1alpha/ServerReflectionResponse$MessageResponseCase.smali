.class public final enum Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/reflection/v1alpha/ServerReflectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageResponseCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

.field public static final enum ALL_EXTENSION_NUMBERS_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

.field public static final enum ERROR_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

.field public static final enum FILE_DESCRIPTOR_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

.field public static final enum LIST_SERVICES_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

.field public static final enum MESSAGERESPONSE_NOT_SET:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    const-string v1, "FILE_DESCRIPTOR_RESPONSE"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->FILE_DESCRIPTOR_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    .line 2
    new-instance v1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    const-string v4, "ALL_EXTENSION_NUMBERS_RESPONSE"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->ALL_EXTENSION_NUMBERS_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    .line 3
    new-instance v4, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    const-string v7, "LIST_SERVICES_RESPONSE"

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-direct {v4, v7, v8, v9}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->LIST_SERVICES_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    .line 4
    new-instance v7, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    const-string v9, "ERROR_RESPONSE"

    const/4 v10, 0x3

    const/4 v11, 0x7

    invoke-direct {v7, v9, v10, v11}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->ERROR_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    .line 5
    new-instance v9, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    const-string v11, "MESSAGERESPONSE_NOT_SET"

    invoke-direct {v9, v11, v3, v2}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->MESSAGERESPONSE_NOT_SET:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    new-array v6, v6, [Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v8

    aput-object v7, v6, v10

    aput-object v9, v6, v3

    .line 6
    sput-object v6, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->$VALUES:[Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

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
    iput p3, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->ERROR_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->LIST_SERVICES_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->ALL_EXTENSION_NUMBERS_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->FILE_DESCRIPTOR_RESPONSE:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->MESSAGERESPONSE_NOT_SET:Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->forNumber(I)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;
    .locals 1

    sget-object v0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->$VALUES:[Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    invoke-virtual {v0}, [Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/reflection/v1alpha/ServerReflectionResponse$MessageResponseCase;->value:I

    return v0
.end method
